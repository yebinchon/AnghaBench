; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_iucv_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_afiucv_iucv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (i32*, i32)*, i32 (i32*, i32)*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { void (%struct.device*)*, %struct.TYPE_12__*, i32, i32 }
%struct.device = type { i32 }

@pr_iucv = common dso_local global %struct.TYPE_11__* null, align 8
@af_iucv_handler = common dso_local global i32 0, align 4
@af_iucv_driver = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@af_iucv_dev = common dso_local global %struct.TYPE_10__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"af_iucv\00", align 1
@kfree = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @afiucv_iucv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_iucv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pr_iucv, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load i32 (i32*, i32)*, i32 (i32*, i32)** %4, align 8
  %6 = call i32 %5(i32* @af_iucv_handler, i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %61

10:                                               ; preds = %0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pr_iucv, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @af_iucv_driver, i32 0, i32 0), align 4
  %14 = call i32 @driver_register(%struct.TYPE_12__* @af_iucv_driver)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %56

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_10__* @kzalloc(i32 4, i32 %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** @af_iucv_dev, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %18
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %28 = call i32 @dev_set_name(%struct.TYPE_10__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pr_iucv, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pr_iucv, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* @kfree, align 8
  %40 = inttoptr i64 %39 to void (%struct.device*)*
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store void (%struct.device*)* %40, void (%struct.device*)** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store %struct.TYPE_12__* @af_iucv_driver, %struct.TYPE_12__** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %46 = call i32 @device_register(%struct.TYPE_10__* %45)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %26
  br label %51

50:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %63

51:                                               ; preds = %49
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @af_iucv_dev, align 8
  %53 = call i32 @put_device(%struct.TYPE_10__* %52)
  br label %54

54:                                               ; preds = %51, %23
  %55 = call i32 @driver_unregister(%struct.TYPE_12__* @af_iucv_driver)
  br label %56

56:                                               ; preds = %54, %17
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pr_iucv, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32 (i32*, i32)*, i32 (i32*, i32)** %58, align 8
  %60 = call i32 %59(i32* @af_iucv_handler, i32 0)
  br label %61

61:                                               ; preds = %56, %9
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %50
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @driver_register(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_10__*) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
