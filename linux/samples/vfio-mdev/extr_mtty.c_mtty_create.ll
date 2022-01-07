; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_create.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_mtty_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.mdev_device = type { i32 }
%struct.mdev_state = type { i32, i32, i32, %struct.mdev_device*, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MTTY_STRING_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_FIFO_SIZE = common dso_local global i8* null, align 8
@MTTY_CONFIG_SPACE_SIZE = common dso_local global i32 0, align 4
@mdev_list_lock = common dso_local global i32 0, align 4
@mdev_devices_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.mdev_device*)* @mtty_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtty_create(%struct.kobject* %0, %struct.mdev_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.mdev_device*, align 8
  %6 = alloca %struct.mdev_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.mdev_device* %1, %struct.mdev_device** %5, align 8
  %12 = load i32, i32* @MTTY_STRING_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %17 = icmp ne %struct.mdev_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %113

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* @MTTY_STRING_LEN, align 4
  %27 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %28 = call i32 @mdev_parent_dev(%struct.mdev_device* %27)
  %29 = call i8* @dev_driver_string(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @snprintf(i8* %15, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %31)
  %33 = load %struct.kobject*, %struct.kobject** %4, align 8
  %34 = getelementptr inbounds %struct.kobject, %struct.kobject* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcmp(i32 %35, i8* %15)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %22

45:                                               ; preds = %38, %22
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %113

51:                                               ; preds = %45
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kzalloc(i32 56, i32 %52)
  %54 = bitcast i8* %53 to %struct.mdev_state*
  store %struct.mdev_state* %54, %struct.mdev_state** %6, align 8
  %55 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %56 = icmp eq %struct.mdev_state* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %113

60:                                               ; preds = %51
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %63 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %65 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load i8*, i8** @MAX_FIFO_SIZE, align 8
  %67 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %68 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %67, i32 0, i32 7
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = load i8*, i8** @MAX_FIFO_SIZE, align 8
  %73 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %74 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %73, i32 0, i32 7
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %72, i8** %77, align 8
  %78 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %79 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %78, i32 0, i32 6
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load i32, i32* @MTTY_CONFIG_SPACE_SIZE, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @kzalloc(i32 %81, i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %86 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %85, i32 0, i32 5
  store i32* %84, i32** %86, align 8
  %87 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %88 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %60
  %92 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %93 = call i32 @kfree(%struct.mdev_state* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %113

96:                                               ; preds = %60
  %97 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %98 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %97, i32 0, i32 4
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %101 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %102 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %101, i32 0, i32 3
  store %struct.mdev_device* %100, %struct.mdev_device** %102, align 8
  %103 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %104 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %105 = call i32 @mdev_set_drvdata(%struct.mdev_device* %103, %struct.mdev_state* %104)
  %106 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %107 = call i32 @mtty_create_config_space(%struct.mdev_state* %106)
  %108 = call i32 @mutex_lock(i32* @mdev_list_lock)
  %109 = load %struct.mdev_state*, %struct.mdev_state** %6, align 8
  %110 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %109, i32 0, i32 2
  %111 = call i32 @list_add(i32* %110, i32* @mdev_devices_list)
  %112 = call i32 @mutex_unlock(i32* @mdev_list_lock)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %113

113:                                              ; preds = %96, %91, %57, %48, %18
  %114 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i8* @dev_driver_string(i32) #2

declare dso_local i32 @mdev_parent_dev(%struct.mdev_device*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @kfree(%struct.mdev_state*) #2

declare dso_local i32 @mdev_set_drvdata(%struct.mdev_device*, %struct.mdev_state*) #2

declare dso_local i32 @mtty_create_config_space(%struct.mdev_state*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
