; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.aic3x_priv = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"tx and rx masks must be symmetric\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"tx and rx masks need to be non 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid mask, slots must be adjacent\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported slot width %d\0A\00", align 1
@AIC3X_ASD_INTF_CTRLA = common dso_local global i32 0, align 4
@DOUT_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @aic3x_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic3x_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.aic3x_priv*, align 8
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %19 = call %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.aic3x_priv* %19, %struct.aic3x_priv** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %82

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %39 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %82

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @__ffs(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @__fls(i32 %49)
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %54 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %82

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  switch i32 %60, label %62 [
    i32 16, label %61
    i32 20, label %61
    i32 24, label %61
    i32 32, label %61
  ]

61:                                               ; preds = %59, %59, %59, %59
  br label %70

62:                                               ; preds = %59
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %64 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %82

70:                                               ; preds = %61
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.aic3x_priv*, %struct.aic3x_priv** %13, align 8
  %73 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.aic3x_priv*, %struct.aic3x_priv** %13, align 8
  %76 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %78 = load i32, i32* @AIC3X_ASD_INTF_CTRLA, align 4
  %79 = load i32, i32* @DOUT_TRISTATE, align 4
  %80 = load i32, i32* @DOUT_TRISTATE, align 4
  %81 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %77, i32 %78, i32 %79, i32 %80)
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %70, %62, %52, %37, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.aic3x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
