; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_shm.c_shmctl_stat.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_shm.c_shmctl_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.shmid64_ds = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32 }
%struct.shmid_kernel = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SHM_STAT = common dso_local global i32 0, align 4
@SHM_STAT_ANY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_namespace*, i32, i32, %struct.shmid64_ds*)* @shmctl_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmctl_stat(%struct.ipc_namespace* %0, i32 %1, i32 %2, %struct.shmid64_ds* %3) #0 {
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.shmid64_ds*, align 8
  %9 = alloca %struct.shmid_kernel*, align 8
  %10 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.shmid64_ds* %3, %struct.shmid64_ds** %8, align 8
  %11 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %12 = call i32 @memset(%struct.shmid64_ds* %11, i32 0, i32 56)
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SHM_STAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SHM_STAT_ANY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %4
  %22 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.shmid_kernel* @shm_obtain_object(%struct.ipc_namespace* %22, i32 %23)
  store %struct.shmid_kernel* %24, %struct.shmid_kernel** %9, align 8
  %25 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %26 = call i64 @IS_ERR(%struct.shmid_kernel* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.shmid_kernel* %29)
  store i32 %30, i32* %10, align 4
  br label %158

31:                                               ; preds = %21
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.shmid_kernel* @shm_obtain_object_check(%struct.ipc_namespace* %33, i32 %34)
  store %struct.shmid_kernel* %35, %struct.shmid_kernel** %9, align 8
  %36 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %37 = call i64 @IS_ERR(%struct.shmid_kernel* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %41 = call i32 @PTR_ERR(%struct.shmid_kernel* %40)
  store i32 %41, i32* %10, align 4
  br label %158

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SHM_STAT_ANY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %49 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %48, i32 0, i32 3
  %50 = call i32 @audit_ipc_obj(%struct.TYPE_8__* %49)
  br label %62

51:                                               ; preds = %43
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %55 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %56 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %55, i32 0, i32 3
  %57 = load i32, i32* @S_IRUGO, align 4
  %58 = call i64 @ipcperms(%struct.ipc_namespace* %54, %struct.TYPE_8__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %158

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %64 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %63, i32 0, i32 3
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @security_shm_shmctl(%struct.TYPE_8__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %158

70:                                               ; preds = %62
  %71 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %72 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %71, i32 0, i32 3
  %73 = call i32 @ipc_lock_object(%struct.TYPE_8__* %72)
  %74 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %75 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %74, i32 0, i32 3
  %76 = call i32 @ipc_valid_object(%struct.TYPE_8__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %80 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %79, i32 0, i32 3
  %81 = call i32 @ipc_unlock_object(%struct.TYPE_8__* %80)
  %82 = load i32, i32* @EIDRM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %158

84:                                               ; preds = %70
  %85 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %86 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %85, i32 0, i32 3
  %87 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %88 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %87, i32 0, i32 10
  %89 = call i32 @kernel_to_ipc64_perm(%struct.TYPE_8__* %86, i32* %88)
  %90 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %91 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %94 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %96 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %99 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %101 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %104 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %106 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %109 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %111 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 32
  %114 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %115 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %117 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 32
  %120 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %121 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %123 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 32
  %126 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %127 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %129 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @pid_vnr(i32 %130)
  %132 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %133 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %132, i32 0, i32 8
  store i8* %131, i8** %133, align 8
  %134 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %135 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @pid_vnr(i32 %136)
  %138 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %139 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %138, i32 0, i32 7
  store i8* %137, i8** %139, align 8
  %140 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %141 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.shmid64_ds*, %struct.shmid64_ds** %8, align 8
  %144 = getelementptr inbounds %struct.shmid64_ds, %struct.shmid64_ds* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @IPC_STAT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  br label %154

149:                                              ; preds = %84
  %150 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %151 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %149, %148
  %155 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %156 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %155, i32 0, i32 3
  %157 = call i32 @ipc_unlock_object(%struct.TYPE_8__* %156)
  br label %158

158:                                              ; preds = %154, %78, %69, %60, %39, %28
  %159 = call i32 (...) @rcu_read_unlock()
  %160 = load i32, i32* %10, align 4
  ret i32 %160
}

declare dso_local i32 @memset(%struct.shmid64_ds*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.shmid_kernel* @shm_obtain_object(%struct.ipc_namespace*, i32) #1

declare dso_local i64 @IS_ERR(%struct.shmid_kernel*) #1

declare dso_local i32 @PTR_ERR(%struct.shmid_kernel*) #1

declare dso_local %struct.shmid_kernel* @shm_obtain_object_check(%struct.ipc_namespace*, i32) #1

declare dso_local i32 @audit_ipc_obj(%struct.TYPE_8__*) #1

declare dso_local i64 @ipcperms(%struct.ipc_namespace*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @security_shm_shmctl(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ipc_lock_object(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_valid_object(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_unlock_object(%struct.TYPE_8__*) #1

declare dso_local i32 @kernel_to_ipc64_perm(%struct.TYPE_8__*, i32*) #1

declare dso_local i8* @pid_vnr(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
