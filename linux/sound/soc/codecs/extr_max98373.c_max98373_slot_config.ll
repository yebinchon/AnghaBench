; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_slot_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_slot_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.max98373_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"maxim,vmon-slot-no\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"maxim,imon-slot-no\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"maxim,reset-gpio\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Looking up %s property in node %s failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"maxim,reset-gpio=%d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"maxim,spkfb-slot-no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.max98373_priv*)* @max98373_slot_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max98373_slot_config(%struct.i2c_client* %0, %struct.max98373_priv* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max98373_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.max98373_priv* %1, %struct.max98373_priv** %4, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = call i32 @device_property_read_u32(%struct.device* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 15
  %15 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %16 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %19 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @device_property_read_u32(%struct.device* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 15
  %27 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %28 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %31 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @of_get_named_gpio(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %42 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %43 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %45 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpio_is_valid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %57 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58)
  br label %66

60:                                               ; preds = %37
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %63 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %49
  br label %70

67:                                               ; preds = %32
  %68 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %69 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %68, i32 0, i32 2
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @device_property_read_u32(%struct.device* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %5)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 15
  %77 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %78 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %82

79:                                               ; preds = %70
  %80 = load %struct.max98373_priv*, %struct.max98373_priv** %4, align 8
  %81 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %80, i32 0, i32 3
  store i32 2, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  ret void
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @of_get_named_gpio(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
