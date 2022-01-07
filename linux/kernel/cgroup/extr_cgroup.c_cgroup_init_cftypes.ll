; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_init_cftypes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_init_cftypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_ops = type { i64 }
%struct.cgroup_subsys = type { i32 }
%struct.cftype = type { i8*, i64, %struct.cgroup_subsys*, %struct.kernfs_ops*, i64 }

@cgroup_kf_ops = common dso_local global %struct.kernfs_ops zeroinitializer, align 8
@cgroup_kf_single_ops = common dso_local global %struct.kernfs_ops zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys*, %struct.cftype*)* @cgroup_init_cftypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_init_cftypes(%struct.cgroup_subsys* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca %struct.kernfs_ops*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %8 = load %struct.cftype*, %struct.cftype** %5, align 8
  store %struct.cftype* %8, %struct.cftype** %6, align 8
  br label %9

9:                                                ; preds = %72, %2
  %10 = load %struct.cftype*, %struct.cftype** %6, align 8
  %11 = getelementptr inbounds %struct.cftype, %struct.cftype* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %9
  %18 = load %struct.cftype*, %struct.cftype** %6, align 8
  %19 = getelementptr inbounds %struct.cftype, %struct.cftype* %18, i32 0, i32 2
  %20 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %19, align 8
  %21 = icmp ne %struct.cgroup_subsys* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.cftype*, %struct.cftype** %6, align 8
  %24 = getelementptr inbounds %struct.cftype, %struct.cftype* %23, i32 0, i32 3
  %25 = load %struct.kernfs_ops*, %struct.kernfs_ops** %24, align 8
  %26 = icmp ne %struct.kernfs_ops* %25, null
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.cftype*, %struct.cftype** %6, align 8
  %32 = getelementptr inbounds %struct.cftype, %struct.cftype* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store %struct.kernfs_ops* @cgroup_kf_ops, %struct.kernfs_ops** %7, align 8
  br label %37

36:                                               ; preds = %27
  store %struct.kernfs_ops* @cgroup_kf_single_ops, %struct.kernfs_ops** %7, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.cftype*, %struct.cftype** %6, align 8
  %39 = getelementptr inbounds %struct.cftype, %struct.cftype* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load %struct.cftype*, %struct.cftype** %6, align 8
  %44 = getelementptr inbounds %struct.cftype, %struct.cftype* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.kernfs_ops* @kmemdup(%struct.kernfs_ops* %49, i32 8, i32 %50)
  store %struct.kernfs_ops* %51, %struct.kernfs_ops** %7, align 8
  %52 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %53 = icmp ne %struct.kernfs_ops* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load %struct.cftype*, %struct.cftype** %5, align 8
  %56 = call i32 @cgroup_exit_cftypes(%struct.cftype* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %76

59:                                               ; preds = %48
  %60 = load %struct.cftype*, %struct.cftype** %6, align 8
  %61 = getelementptr inbounds %struct.cftype, %struct.cftype* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %64 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %42, %37
  %66 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %67 = load %struct.cftype*, %struct.cftype** %6, align 8
  %68 = getelementptr inbounds %struct.cftype, %struct.cftype* %67, i32 0, i32 3
  store %struct.kernfs_ops* %66, %struct.kernfs_ops** %68, align 8
  %69 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %4, align 8
  %70 = load %struct.cftype*, %struct.cftype** %6, align 8
  %71 = getelementptr inbounds %struct.cftype, %struct.cftype* %70, i32 0, i32 2
  store %struct.cgroup_subsys* %69, %struct.cgroup_subsys** %71, align 8
  br label %72

72:                                               ; preds = %65
  %73 = load %struct.cftype*, %struct.cftype** %6, align 8
  %74 = getelementptr inbounds %struct.cftype, %struct.cftype* %73, i32 1
  store %struct.cftype* %74, %struct.cftype** %6, align 8
  br label %9

75:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.kernfs_ops* @kmemdup(%struct.kernfs_ops*, i32, i32) #1

declare dso_local i32 @cgroup_exit_cftypes(%struct.cftype*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
