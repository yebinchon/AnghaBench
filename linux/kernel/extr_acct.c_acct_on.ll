; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_on.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i32 }
%struct.file = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32, %struct.TYPE_3__ }
%struct.pid_namespace = type { i32 }
%struct.bsd_acct_struct = type { i32, i32, i32, i32, %struct.pid_namespace*, i32, %struct.vfsmount*, i32 }
%struct.fs_pin = type { i32 }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FMODE_CAN_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@acct_pin_kill = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@close_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filename*)* @acct_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acct_on(%struct.filename* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.filename*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.bsd_acct_struct*, align 8
  %9 = alloca %struct.fs_pin*, align 8
  %10 = alloca i32, align 4
  store %struct.filename* %0, %struct.filename** %3, align 8
  %11 = load i32, i32* @current, align 4
  %12 = call %struct.pid_namespace* @task_active_pid_ns(i32 %11)
  store %struct.pid_namespace* %12, %struct.pid_namespace** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.bsd_acct_struct* @kzalloc(i32 48, i32 %13)
  store %struct.bsd_acct_struct* %14, %struct.bsd_acct_struct** %8, align 8
  %15 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %16 = icmp ne %struct.bsd_acct_struct* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %157

20:                                               ; preds = %1
  %21 = load %struct.filename*, %struct.filename** %3, align 8
  %22 = load i32, i32* @O_WRONLY, align 4
  %23 = load i32, i32* @O_APPEND, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @O_LARGEFILE, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.vfsmount* @file_open_name(%struct.filename* %21, i32 %26, i32 0)
  %28 = bitcast %struct.vfsmount* %27 to %struct.file*
  store %struct.file* %28, %struct.file** %4, align 8
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = bitcast %struct.file* %29 to %struct.vfsmount*
  %31 = call i64 @IS_ERR(%struct.vfsmount* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %35 = call i32 @kfree(%struct.bsd_acct_struct* %34)
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = bitcast %struct.file* %36 to %struct.vfsmount*
  %38 = call i32 @PTR_ERR(%struct.vfsmount* %37)
  store i32 %38, i32* %2, align 4
  br label %157

39:                                               ; preds = %20
  %40 = load %struct.file*, %struct.file** %4, align 8
  %41 = bitcast %struct.file* %40 to %struct.vfsmount*
  %42 = call %struct.TYPE_4__* @file_inode(%struct.vfsmount* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @S_ISREG(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %49 = call i32 @kfree(%struct.bsd_acct_struct* %48)
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = bitcast %struct.file* %50 to %struct.vfsmount*
  %52 = call i32 @filp_close(%struct.vfsmount* %51, i32* null)
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %157

55:                                               ; preds = %39
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FMODE_CAN_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %64 = call i32 @kfree(%struct.bsd_acct_struct* %63)
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = bitcast %struct.file* %65 to %struct.vfsmount*
  %67 = call i32 @filp_close(%struct.vfsmount* %66, i32* null)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %157

70:                                               ; preds = %55
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 1
  %73 = call %struct.vfsmount* @mnt_clone_internal(%struct.TYPE_3__* %72)
  store %struct.vfsmount* %73, %struct.vfsmount** %6, align 8
  %74 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %75 = call i64 @IS_ERR(%struct.vfsmount* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %79 = call i32 @kfree(%struct.bsd_acct_struct* %78)
  %80 = load %struct.file*, %struct.file** %4, align 8
  %81 = bitcast %struct.file* %80 to %struct.vfsmount*
  %82 = call i32 @filp_close(%struct.vfsmount* %81, i32* null)
  %83 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %84 = call i32 @PTR_ERR(%struct.vfsmount* %83)
  store i32 %84, i32* %2, align 4
  br label %157

85:                                               ; preds = %70
  %86 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %87 = call i32 @__mnt_want_write(%struct.vfsmount* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %92 = call i32 @mntput(%struct.vfsmount* %91)
  %93 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %94 = call i32 @kfree(%struct.bsd_acct_struct* %93)
  %95 = load %struct.file*, %struct.file** %4, align 8
  %96 = bitcast %struct.file* %95 to %struct.vfsmount*
  %97 = call i32 @filp_close(%struct.vfsmount* %96, i32* null)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %157

99:                                               ; preds = %85
  %100 = load %struct.file*, %struct.file** %4, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.vfsmount*, %struct.vfsmount** %102, align 8
  store %struct.vfsmount* %103, %struct.vfsmount** %5, align 8
  %104 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %105 = load %struct.file*, %struct.file** %4, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store %struct.vfsmount* %104, %struct.vfsmount** %107, align 8
  %108 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %109 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %108, i32 0, i32 7
  %110 = call i32 @atomic_long_set(i32* %109, i32 1)
  %111 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %112 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %111, i32 0, i32 1
  %113 = load i32, i32* @acct_pin_kill, align 4
  %114 = call i32 @init_fs_pin(i32* %112, i32 %113)
  %115 = load %struct.file*, %struct.file** %4, align 8
  %116 = bitcast %struct.file* %115 to %struct.vfsmount*
  %117 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %118 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %117, i32 0, i32 6
  store %struct.vfsmount* %116, %struct.vfsmount** %118, align 8
  %119 = load i32, i32* @jiffies, align 4
  %120 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %121 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  %122 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %123 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %124 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %123, i32 0, i32 4
  store %struct.pid_namespace* %122, %struct.pid_namespace** %124, align 8
  %125 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %126 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %125, i32 0, i32 0
  %127 = call i32 @mutex_init(i32* %126)
  %128 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %129 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %128, i32 0, i32 3
  %130 = load i32, i32* @close_work, align 4
  %131 = call i32 @INIT_WORK(i32* %129, i32 %130)
  %132 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %133 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %132, i32 0, i32 2
  %134 = call i32 @init_completion(i32* %133)
  %135 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %136 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %135, i32 0, i32 0
  %137 = call i32 @mutex_lock_nested(i32* %136, i32 1)
  %138 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %139 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %138, i32 0, i32 1
  %140 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %141 = call i32 @pin_insert(i32* %139, %struct.vfsmount* %140)
  %142 = call i32 (...) @rcu_read_lock()
  %143 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %144 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %143, i32 0, i32 0
  %145 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %146 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %145, i32 0, i32 1
  %147 = call %struct.fs_pin* @xchg(i32* %144, i32* %146)
  store %struct.fs_pin* %147, %struct.fs_pin** %9, align 8
  %148 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %8, align 8
  %149 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load %struct.fs_pin*, %struct.fs_pin** %9, align 8
  %152 = call i32 @pin_kill(%struct.fs_pin* %151)
  %153 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %154 = call i32 @__mnt_drop_write(%struct.vfsmount* %153)
  %155 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %156 = call i32 @mntput(%struct.vfsmount* %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %99, %90, %77, %62, %47, %33, %17
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.pid_namespace* @task_active_pid_ns(i32) #1

declare dso_local %struct.bsd_acct_struct* @kzalloc(i32, i32) #1

declare dso_local %struct.vfsmount* @file_open_name(%struct.filename*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @kfree(%struct.bsd_acct_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_4__* @file_inode(%struct.vfsmount*) #1

declare dso_local i32 @filp_close(%struct.vfsmount*, i32*) #1

declare dso_local %struct.vfsmount* @mnt_clone_internal(%struct.TYPE_3__*) #1

declare dso_local i32 @__mnt_want_write(%struct.vfsmount*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @init_fs_pin(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @pin_insert(i32*, %struct.vfsmount*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fs_pin* @xchg(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pin_kill(%struct.fs_pin*) #1

declare dso_local i32 @__mnt_drop_write(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
