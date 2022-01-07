; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_bprm_fill_uid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_bprm_fill_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@PER_CLEAR_ON_SETID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @bprm_fill_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bprm_fill_uid(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %7 = call i32 (...) @current_euid()
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %7, i32* %11, align 4
  %12 = call i32 (...) @current_egid()
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %14 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %18 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mnt_may_suid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %120

26:                                               ; preds = %1
  %27 = load i32, i32* @current, align 4
  %28 = call i64 @task_no_new_privs(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %120

31:                                               ; preds = %26
  %32 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %33 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %3, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @READ_ONCE(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @S_ISUID, align 4
  %46 = load i32, i32* @S_ISGID, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  br label %120

51:                                               ; preds = %31
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = call i32 @inode_lock(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call i32 @inode_unlock(%struct.inode* %63)
  %65 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %66 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @kuid_has_mapping(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %51
  %74 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %75 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @kgid_has_mapping(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73, %51
  br label %120

83:                                               ; preds = %73
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @S_ISUID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %90 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %91 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %96 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %83
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @S_ISGID, align 4
  %102 = load i32, i32* @S_IXGRP, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = load i32, i32* @S_ISGID, align 4
  %106 = load i32, i32* @S_IXGRP, align 4
  %107 = or i32 %105, %106
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %99
  %110 = load i32, i32* @PER_CLEAR_ON_SETID, align 4
  %111 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %112 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %117 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %25, %30, %50, %82, %109, %99
  ret void
}

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @current_egid(...) #1

declare dso_local i32 @mnt_may_suid(i32) #1

declare dso_local i64 @task_no_new_privs(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @kuid_has_mapping(i32, i32) #1

declare dso_local i32 @kgid_has_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
