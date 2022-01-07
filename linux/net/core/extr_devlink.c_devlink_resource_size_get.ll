; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_size_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_size_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.devlink_resource = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_resource_size_get(%struct.devlink* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.devlink_resource*, align 8
  %8 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.devlink*, %struct.devlink** %4, align 8
  %10 = getelementptr inbounds %struct.devlink, %struct.devlink* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.devlink*, %struct.devlink** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %12, i32* null, i32 %13)
  store %struct.devlink_resource* %14, %struct.devlink_resource** %7, align 8
  %15 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %16 = icmp ne %struct.devlink_resource* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %22 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %26 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %29 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load %struct.devlink*, %struct.devlink** %4, align 8
  %32 = getelementptr inbounds %struct.devlink, %struct.devlink* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink_resource* @devlink_resource_find(%struct.devlink*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
