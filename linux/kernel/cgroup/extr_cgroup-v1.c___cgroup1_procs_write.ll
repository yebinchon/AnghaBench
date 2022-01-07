; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c___cgroup1_procs_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c___cgroup1_procs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cgroup = type { i32 }
%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32, i32)* @__cgroup1_procs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cgroup1_procs_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernfs_open_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cgroup*, align 8
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca %struct.cred*, align 8
  %15 = alloca %struct.cred*, align 8
  %16 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %18 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cgroup* @cgroup_kn_lock_live(i32 %19, i32 0)
  store %struct.cgroup* %20, %struct.cgroup** %12, align 8
  %21 = load %struct.cgroup*, %struct.cgroup** %12, align 8
  %22 = icmp ne %struct.cgroup* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %94

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.task_struct* @cgroup_procs_write_start(i8* %27, i32 %28)
  store %struct.task_struct* %29, %struct.task_struct** %13, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %31 = call i32 @PTR_ERR_OR_ZERO(%struct.task_struct* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %80

35:                                               ; preds = %26
  %36 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %36, %struct.cred** %14, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %38 = call %struct.cred* @get_task_cred(%struct.task_struct* %37)
  store %struct.cred* %38, %struct.cred** %15, align 8
  %39 = load %struct.cred*, %struct.cred** %14, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %43 = call i32 @uid_eq(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %35
  %46 = load %struct.cred*, %struct.cred** %14, align 8
  %47 = getelementptr inbounds %struct.cred, %struct.cred* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cred*, %struct.cred** %15, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uid_eq(i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %45
  %55 = load %struct.cred*, %struct.cred** %14, align 8
  %56 = getelementptr inbounds %struct.cred, %struct.cred* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cred*, %struct.cred** %15, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @uid_eq(i32 %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @EACCES, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %63, %54, %45, %35
  %67 = load %struct.cred*, %struct.cred** %15, align 8
  %68 = call i32 @put_cred(%struct.cred* %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %77

72:                                               ; preds = %66
  %73 = load %struct.cgroup*, %struct.cgroup** %12, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @cgroup_attach_task(%struct.cgroup* %73, %struct.task_struct* %74, i32 %75)
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %72, %71
  %78 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %79 = call i32 @cgroup_procs_write_finish(%struct.task_struct* %78)
  br label %80

80:                                               ; preds = %77, %34
  %81 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %82 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cgroup_kn_unlock(i32 %83)
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = sext i32 %85 to i64
  br label %91

89:                                               ; preds = %80
  %90 = load i64, i64* %9, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %91, %23
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.cgroup* @cgroup_kn_lock_live(i32, i32) #1

declare dso_local %struct.task_struct* @cgroup_procs_write_start(i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.task_struct*) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.cred* @get_task_cred(%struct.task_struct*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @cgroup_attach_task(%struct.cgroup*, %struct.task_struct*, i32) #1

declare dso_local i32 @cgroup_procs_write_finish(%struct.task_struct*) #1

declare dso_local i32 @cgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
