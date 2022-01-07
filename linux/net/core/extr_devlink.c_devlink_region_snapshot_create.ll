; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_region_snapshot_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_region_snapshot_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_region = type { i64, i64, i32, %struct.devlink* }
%struct.devlink = type { i32 }
%struct.devlink_snapshot = type { i32, i32*, i32*, %struct.devlink_region*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEVLINK_CMD_REGION_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_region_snapshot_create(%struct.devlink_region* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_region*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_snapshot*, align 8
  %12 = alloca i32, align 4
  store %struct.devlink_region* %0, %struct.devlink_region** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %14 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %13, i32 0, i32 3
  %15 = load %struct.devlink*, %struct.devlink** %14, align 8
  store %struct.devlink* %15, %struct.devlink** %10, align 8
  %16 = load %struct.devlink*, %struct.devlink** %10, align 8
  %17 = getelementptr inbounds %struct.devlink, %struct.devlink* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %20 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %23 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  br label %74

29:                                               ; preds = %4
  %30 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @devlink_region_snapshot_get_by_id(%struct.devlink_region* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EEXIST, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %74

37:                                               ; preds = %29
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.devlink_snapshot* @kzalloc(i32 40, i32 %38)
  store %struct.devlink_snapshot* %39, %struct.devlink_snapshot** %11, align 8
  %40 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %41 = icmp ne %struct.devlink_snapshot* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %74

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %48 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %50 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %51 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %50, i32 0, i32 3
  store %struct.devlink_region* %49, %struct.devlink_region** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %54 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %57 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %59 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %58, i32 0, i32 0
  %60 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %61 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %60, i32 0, i32 2
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %64 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.devlink_region*, %struct.devlink_region** %6, align 8
  %68 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %11, align 8
  %69 = load i32, i32* @DEVLINK_CMD_REGION_NEW, align 4
  %70 = call i32 @devlink_nl_region_notify(%struct.devlink_region* %67, %struct.devlink_snapshot* %68, i32 %69)
  %71 = load %struct.devlink*, %struct.devlink** %10, align 8
  %72 = getelementptr inbounds %struct.devlink, %struct.devlink* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  store i32 0, i32* %5, align 4
  br label %79

74:                                               ; preds = %42, %34, %26
  %75 = load %struct.devlink*, %struct.devlink** %10, align 8
  %76 = getelementptr inbounds %struct.devlink, %struct.devlink* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %45
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @devlink_region_snapshot_get_by_id(%struct.devlink_region*, i32) #1

declare dso_local %struct.devlink_snapshot* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devlink_nl_region_notify(%struct.devlink_region*, %struct.devlink_snapshot*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
