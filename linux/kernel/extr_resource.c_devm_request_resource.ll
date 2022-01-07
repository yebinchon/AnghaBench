; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_devm_request_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_devm_request_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.resource = type { i32 }

@devm_resource_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"resource collision: %pR conflicts with %s %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_request_resource(%struct.device* %0, %struct.resource* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.resource* %1, %struct.resource** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %10 = load i32, i32* @devm_resource_release, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.resource** @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.resource** %12, %struct.resource*** %9, align 8
  %13 = load %struct.resource**, %struct.resource*** %9, align 8
  %14 = icmp ne %struct.resource** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* %19, %struct.resource** %20, align 8
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = call %struct.resource* @request_resource_conflict(%struct.resource* %21, %struct.resource* %22)
  store %struct.resource* %23, %struct.resource** %8, align 8
  %24 = load %struct.resource*, %struct.resource** %8, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.resource* %28, i32 %31, %struct.resource* %32)
  %34 = load %struct.resource**, %struct.resource*** %9, align 8
  %35 = call i32 @devres_free(%struct.resource** %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.resource**, %struct.resource*** %9, align 8
  %41 = call i32 @devres_add(%struct.device* %39, %struct.resource** %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %26, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.resource** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.resource* @request_resource_conflict(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.resource*, i32, %struct.resource*) #1

declare dso_local i32 @devres_free(%struct.resource**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.resource**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
