; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_create_secondary_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_i2s.c_i2s_create_secondary_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_i2s_priv = type { %struct.platform_device*, %struct.TYPE_2__* }
%struct.platform_device = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s-sec\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"samsung-i2s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"device_attach() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_i2s_priv*)* @i2s_create_secondary_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_create_secondary_device(%struct.samsung_i2s_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_i2s_priv*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.samsung_i2s_priv* %0, %struct.samsung_i2s_priv** %3, align 8
  %7 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %8 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_name(i32* %15)
  %17 = call i8* @devm_kasprintf(i32* %10, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.platform_device* @platform_device_alloc(i8* %24, i32 -1)
  store %struct.platform_device* %25, %struct.platform_device** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = icmp ne %struct.platform_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = call i32 @platform_device_add(%struct.platform_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = call i32 @platform_device_put(%struct.platform_device* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %31
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 @device_attach(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %52 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %51, i32 0, i32 0
  %53 = load %struct.platform_device*, %struct.platform_device** %52, align 8
  %54 = call i32 @platform_device_unregister(%struct.platform_device* %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %61 = load %struct.samsung_i2s_priv*, %struct.samsung_i2s_priv** %3, align 8
  %62 = getelementptr inbounds %struct.samsung_i2s_priv, %struct.samsung_i2s_priv* %61, i32 0, i32 0
  store %struct.platform_device* %60, %struct.platform_device** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %50, %40, %28, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @device_attach(i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
