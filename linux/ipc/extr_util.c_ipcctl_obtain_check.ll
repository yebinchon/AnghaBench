; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipcctl_obtain_check.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipcctl_obtain_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i32 }
%struct.ipc_namespace = type { i32 }
%struct.ipc_ids = type { i32 }
%struct.ipc64_perm = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@IPC_SET = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kern_ipc_perm* @ipcctl_obtain_check(%struct.ipc_namespace* %0, %struct.ipc_ids* %1, i32 %2, i32 %3, %struct.ipc64_perm* %4, i32 %5) #0 {
  %7 = alloca %struct.kern_ipc_perm*, align 8
  %8 = alloca %struct.ipc_namespace*, align 8
  %9 = alloca %struct.ipc_ids*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipc64_perm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %8, align 8
  store %struct.ipc_ids* %1, %struct.ipc_ids** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ipc64_perm* %4, %struct.ipc64_perm** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.ipc_ids*, %struct.ipc_ids** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.kern_ipc_perm* @ipc_obtain_object_check(%struct.ipc_ids* %19, i32 %20)
  store %struct.kern_ipc_perm* %21, %struct.kern_ipc_perm** %16, align 8
  %22 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  %23 = call i64 @IS_ERR(%struct.kern_ipc_perm* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  %27 = call i32 @PTR_ERR(%struct.kern_ipc_perm* %26)
  store i32 %27, i32* %15, align 4
  br label %71

28:                                               ; preds = %6
  %29 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  %30 = call i32 @audit_ipc_obj(%struct.kern_ipc_perm* %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @IPC_SET, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.ipc64_perm*, %struct.ipc64_perm** %12, align 8
  %37 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ipc64_perm*, %struct.ipc64_perm** %12, align 8
  %40 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipc64_perm*, %struct.ipc64_perm** %12, align 8
  %43 = getelementptr inbounds %struct.ipc64_perm, %struct.ipc64_perm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @audit_ipc_set_perm(i32 %35, i32 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %34, %28
  %47 = call i32 (...) @current_euid()
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  %50 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @uid_eq(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  %57 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @uid_eq(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.ipc_namespace*, %struct.ipc_namespace** %8, align 8
  %63 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %66 = call i64 @ns_capable(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %54, %46
  %69 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %16, align 8
  store %struct.kern_ipc_perm* %69, %struct.kern_ipc_perm** %7, align 8
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* %15, align 4
  %73 = call %struct.kern_ipc_perm* @ERR_PTR(i32 %72)
  store %struct.kern_ipc_perm* %73, %struct.kern_ipc_perm** %7, align 8
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %7, align 8
  ret %struct.kern_ipc_perm* %75
}

declare dso_local %struct.kern_ipc_perm* @ipc_obtain_object_check(%struct.ipc_ids*, i32) #1

declare dso_local i64 @IS_ERR(%struct.kern_ipc_perm*) #1

declare dso_local i32 @PTR_ERR(%struct.kern_ipc_perm*) #1

declare dso_local i32 @audit_ipc_obj(%struct.kern_ipc_perm*) #1

declare dso_local i32 @audit_ipc_set_perm(i32, i32, i32, i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @ns_capable(i32, i32) #1

declare dso_local %struct.kern_ipc_perm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
