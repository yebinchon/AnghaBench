; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_shm.c_shmctl_do_lock.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_shm.c_shmctl_do_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.shmid_kernel = type { %struct.TYPE_6__, %struct.user_struct*, %struct.file* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.user_struct = type { i32 }
%struct.file = type { i32 }

@EIDRM = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SHM_LOCK = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@SHM_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_namespace*, i32, i32)* @shmctl_do_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmctl_do_lock(%struct.ipc_namespace* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.shmid_kernel*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.user_struct*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.shmid_kernel* @shm_obtain_object_check(%struct.ipc_namespace* %14, i32 %15)
  store %struct.shmid_kernel* %16, %struct.shmid_kernel** %8, align 8
  %17 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %18 = call i64 @IS_ERR(%struct.shmid_kernel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.shmid_kernel* %21)
  store i32 %22, i32* %10, align 4
  br label %163

23:                                               ; preds = %3
  %24 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %25 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %24, i32 0, i32 0
  %26 = call i32 @audit_ipc_obj(%struct.TYPE_6__* %25)
  %27 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %28 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @security_shm_shmctl(%struct.TYPE_6__* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %163

34:                                               ; preds = %23
  %35 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %36 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %35, i32 0, i32 0
  %37 = call i32 @ipc_lock_object(%struct.TYPE_6__* %36)
  %38 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %39 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %38, i32 0, i32 0
  %40 = call i32 @ipc_valid_object(%struct.TYPE_6__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EIDRM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %159

45:                                               ; preds = %34
  %46 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %47 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAP_IPC_LOCK, align 4
  %50 = call i32 @ns_capable(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %45
  %53 = call i32 (...) @current_euid()
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %56 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @uid_eq(i32 %54, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %64 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @uid_eq(i32 %62, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %159

72:                                               ; preds = %61, %52
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SHM_LOCK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %78 = call i32 @rlimit(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @EPERM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %159

83:                                               ; preds = %76, %72
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %86 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %85, i32 0, i32 2
  %87 = load %struct.file*, %struct.file** %86, align 8
  store %struct.file* %87, %struct.file** %9, align 8
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = call i64 @is_file_hugepages(%struct.file* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %159

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SHM_LOCK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = call %struct.user_struct* (...) @current_user()
  store %struct.user_struct* %97, %struct.user_struct** %12, align 8
  %98 = load %struct.file*, %struct.file** %9, align 8
  %99 = load %struct.user_struct*, %struct.user_struct** %12, align 8
  %100 = call i32 @shmem_lock(%struct.file* %98, i32 1, %struct.user_struct* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %96
  %104 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %105 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SHM_LOCKED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* @SHM_LOCKED, align 4
  %113 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %114 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load %struct.user_struct*, %struct.user_struct** %12, align 8
  %119 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %120 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %119, i32 0, i32 1
  store %struct.user_struct* %118, %struct.user_struct** %120, align 8
  br label %121

121:                                              ; preds = %111, %103, %96
  br label %159

122:                                              ; preds = %92
  %123 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %124 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SHM_LOCKED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %122
  br label %159

131:                                              ; preds = %122
  %132 = load %struct.file*, %struct.file** %9, align 8
  %133 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %134 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %133, i32 0, i32 1
  %135 = load %struct.user_struct*, %struct.user_struct** %134, align 8
  %136 = call i32 @shmem_lock(%struct.file* %132, i32 0, %struct.user_struct* %135)
  %137 = load i32, i32* @SHM_LOCKED, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %140 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %138
  store i32 %143, i32* %141, align 8
  %144 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %145 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %144, i32 0, i32 1
  store %struct.user_struct* null, %struct.user_struct** %145, align 8
  %146 = load %struct.file*, %struct.file** %9, align 8
  %147 = call i32 @get_file(%struct.file* %146)
  %148 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %149 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %148, i32 0, i32 0
  %150 = call i32 @ipc_unlock_object(%struct.TYPE_6__* %149)
  %151 = call i32 (...) @rcu_read_unlock()
  %152 = load %struct.file*, %struct.file** %9, align 8
  %153 = getelementptr inbounds %struct.file, %struct.file* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @shmem_unlock_mapping(i32 %154)
  %156 = load %struct.file*, %struct.file** %9, align 8
  %157 = call i32 @fput(%struct.file* %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %4, align 4
  br label %166

159:                                              ; preds = %130, %121, %91, %80, %69, %42
  %160 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %161 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %160, i32 0, i32 0
  %162 = call i32 @ipc_unlock_object(%struct.TYPE_6__* %161)
  br label %163

163:                                              ; preds = %159, %33, %20
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %163, %131
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.shmid_kernel* @shm_obtain_object_check(%struct.ipc_namespace*, i32) #1

declare dso_local i64 @IS_ERR(%struct.shmid_kernel*) #1

declare dso_local i32 @PTR_ERR(%struct.shmid_kernel*) #1

declare dso_local i32 @audit_ipc_obj(%struct.TYPE_6__*) #1

declare dso_local i32 @security_shm_shmctl(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ipc_lock_object(%struct.TYPE_6__*) #1

declare dso_local i32 @ipc_valid_object(%struct.TYPE_6__*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @rlimit(i32) #1

declare dso_local i64 @is_file_hugepages(%struct.file*) #1

declare dso_local %struct.user_struct* @current_user(...) #1

declare dso_local i32 @shmem_lock(%struct.file*, i32, %struct.user_struct*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @ipc_unlock_object(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @shmem_unlock_mapping(i32) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
