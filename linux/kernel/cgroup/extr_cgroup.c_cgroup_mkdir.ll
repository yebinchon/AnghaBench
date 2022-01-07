; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, %struct.kernfs_node* }
%struct.cgroup = type { i32, %struct.cgroup* }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@mkdir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_mkdir(%struct.kernfs_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strchr(i8* %12, i8 signext 10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %20 = call %struct.kernfs_node* @cgroup_kn_lock_live(%struct.kernfs_node* %19, i32 0)
  %21 = bitcast %struct.kernfs_node* %20 to %struct.cgroup*
  store %struct.cgroup* %21, %struct.cgroup** %8, align 8
  %22 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %23 = icmp ne %struct.cgroup* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %18
  %28 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %29 = bitcast %struct.cgroup* %28 to %struct.kernfs_node*
  %30 = call i32 @cgroup_check_hierarchy_limits(%struct.kernfs_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %101

35:                                               ; preds = %27
  %36 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %37 = bitcast %struct.cgroup* %36 to %struct.kernfs_node*
  %38 = call %struct.kernfs_node* @cgroup_create(%struct.kernfs_node* %37)
  %39 = bitcast %struct.kernfs_node* %38 to %struct.cgroup*
  store %struct.cgroup* %39, %struct.cgroup** %9, align 8
  %40 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %41 = bitcast %struct.cgroup* %40 to %struct.kernfs_node*
  %42 = call i64 @IS_ERR(%struct.kernfs_node* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %46 = bitcast %struct.cgroup* %45 to %struct.kernfs_node*
  %47 = call i32 @PTR_ERR(%struct.kernfs_node* %46)
  store i32 %47, i32* %11, align 4
  br label %101

48:                                               ; preds = %35
  %49 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %50 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %49, i32 0, i32 1
  %51 = load %struct.cgroup*, %struct.cgroup** %50, align 8
  %52 = bitcast %struct.cgroup* %51 to %struct.kernfs_node*
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %56 = bitcast %struct.cgroup* %55 to %struct.kernfs_node*
  %57 = call %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node* %52, i8* %53, i32 %54, %struct.kernfs_node* %56)
  store %struct.kernfs_node* %57, %struct.kernfs_node** %10, align 8
  %58 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %59 = call i64 @IS_ERR(%struct.kernfs_node* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %63 = call i32 @PTR_ERR(%struct.kernfs_node* %62)
  store i32 %63, i32* %11, align 4
  br label %97

64:                                               ; preds = %48
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %66 = bitcast %struct.kernfs_node* %65 to %struct.cgroup*
  %67 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %68 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %67, i32 0, i32 1
  store %struct.cgroup* %66, %struct.cgroup** %68, align 8
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %70 = call i32 @kernfs_get(%struct.kernfs_node* %69)
  %71 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %72 = call i32 @cgroup_kn_set_ugid(%struct.kernfs_node* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %97

76:                                               ; preds = %64
  %77 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %78 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %77, i32 0, i32 0
  %79 = call i32 @css_populate_dir(i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %97

83:                                               ; preds = %76
  %84 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %85 = bitcast %struct.cgroup* %84 to %struct.kernfs_node*
  %86 = call i32 @cgroup_apply_control_enable(%struct.kernfs_node* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %97

90:                                               ; preds = %83
  %91 = load i32, i32* @mkdir, align 4
  %92 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %93 = bitcast %struct.cgroup* %92 to %struct.kernfs_node*
  %94 = call i32 @TRACE_CGROUP_PATH(i32 %91, %struct.kernfs_node* %93)
  %95 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %96 = call i32 @kernfs_activate(%struct.kernfs_node* %95)
  store i32 0, i32* %11, align 4
  br label %101

97:                                               ; preds = %89, %82, %75, %61
  %98 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %99 = bitcast %struct.cgroup* %98 to %struct.kernfs_node*
  %100 = call i32 @cgroup_destroy_locked(%struct.kernfs_node* %99)
  br label %101

101:                                              ; preds = %97, %90, %44, %32
  %102 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %103 = call i32 @cgroup_kn_unlock(%struct.kernfs_node* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %24, %15
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.kernfs_node* @cgroup_kn_lock_live(%struct.kernfs_node*, i32) #1

declare dso_local i32 @cgroup_check_hierarchy_limits(%struct.kernfs_node*) #1

declare dso_local %struct.kernfs_node* @cgroup_create(%struct.kernfs_node*) #1

declare dso_local i64 @IS_ERR(%struct.kernfs_node*) #1

declare dso_local i32 @PTR_ERR(%struct.kernfs_node*) #1

declare dso_local %struct.kernfs_node* @kernfs_create_dir(%struct.kernfs_node*, i8*, i32, %struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_kn_set_ugid(%struct.kernfs_node*) #1

declare dso_local i32 @css_populate_dir(i32*) #1

declare dso_local i32 @cgroup_apply_control_enable(%struct.kernfs_node*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.kernfs_node*) #1

declare dso_local i32 @kernfs_activate(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_destroy_locked(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_kn_unlock(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
