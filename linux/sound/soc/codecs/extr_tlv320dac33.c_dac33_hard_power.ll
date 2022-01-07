; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_hard_power.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_hard_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.tlv320dac33_priv = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Trying to set the same power state: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to disable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @dac33_hard_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_hard_power(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlv320dac33_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.tlv320dac33_priv* %8, %struct.tlv320dac33_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %10 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %14 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %95

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %34 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %38 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regulator_bulk_enable(i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %95

49:                                               ; preds = %32
  %50 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %51 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %56 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @gpio_set_value(i64 %57, i32 1)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %61 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %94

62:                                               ; preds = %29
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %64 = call i32 @dac33_soft_power(%struct.snd_soc_component* %63, i32 0)
  %65 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %66 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %71 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @gpio_set_value(i64 %72, i32 0)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %76 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %80 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regulator_bulk_disable(i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %95

91:                                               ; preds = %74
  %92 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %93 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %59
  br label %95

95:                                               ; preds = %94, %85, %43, %20
  %96 = load %struct.tlv320dac33_priv*, %struct.tlv320dac33_priv** %5, align 8
  %97 = getelementptr inbounds %struct.tlv320dac33_priv, %struct.tlv320dac33_priv* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local %struct.tlv320dac33_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpio_set_value(i64, i32) #1

declare dso_local i32 @dac33_soft_power(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
