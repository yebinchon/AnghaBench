; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_region_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_region_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_region = type { i8*, i32, i32, i32, i32, %struct.devlink* }
%struct.devlink = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_REGION_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devlink_region* @devlink_region_create(%struct.devlink* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.devlink_region*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.devlink_region*, align 8
  %11 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.devlink*, %struct.devlink** %6, align 8
  %13 = getelementptr inbounds %struct.devlink, %struct.devlink* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.devlink*, %struct.devlink** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @devlink_region_get_by_name(%struct.devlink* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.devlink_region* @kzalloc(i32 32, i32 %23)
  store %struct.devlink_region* %24, %struct.devlink_region** %10, align 8
  %25 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %26 = icmp ne %struct.devlink_region* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %58

30:                                               ; preds = %22
  %31 = load %struct.devlink*, %struct.devlink** %6, align 8
  %32 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %33 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %32, i32 0, i32 5
  store %struct.devlink* %31, %struct.devlink** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %36 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %39 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %42 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %44 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %47 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %46, i32 0, i32 1
  %48 = load %struct.devlink*, %struct.devlink** %6, align 8
  %49 = getelementptr inbounds %struct.devlink, %struct.devlink* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  %52 = load i32, i32* @DEVLINK_CMD_REGION_NEW, align 4
  %53 = call i32 @devlink_nl_region_notify(%struct.devlink_region* %51, i32* null, i32 %52)
  %54 = load %struct.devlink*, %struct.devlink** %6, align 8
  %55 = getelementptr inbounds %struct.devlink, %struct.devlink* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.devlink_region*, %struct.devlink_region** %10, align 8
  store %struct.devlink_region* %57, %struct.devlink_region** %5, align 8
  br label %64

58:                                               ; preds = %27, %19
  %59 = load %struct.devlink*, %struct.devlink** %6, align 8
  %60 = getelementptr inbounds %struct.devlink, %struct.devlink* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.devlink_region* @ERR_PTR(i32 %62)
  store %struct.devlink_region* %63, %struct.devlink_region** %5, align 8
  br label %64

64:                                               ; preds = %58, %30
  %65 = load %struct.devlink_region*, %struct.devlink_region** %5, align 8
  ret %struct.devlink_region* %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @devlink_region_get_by_name(%struct.devlink*, i8*) #1

declare dso_local %struct.devlink_region* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @devlink_nl_region_notify(%struct.devlink_region*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.devlink_region* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
