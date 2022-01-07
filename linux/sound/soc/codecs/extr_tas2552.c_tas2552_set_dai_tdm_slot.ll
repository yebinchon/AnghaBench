; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_set_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas2552.c_tas2552_set_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.tas2552_data = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"tx masks need to be non 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid mask, slots must be adjacent\0A\00", align 1
@TAS2552_DOUT = common dso_local global i32 0, align 4
@TAS2552_SDOUT_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @tas2552_set_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas2552_set_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.tas2552_data*, align 8
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
  %19 = call %struct.tas2552_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.tas2552_data* %19, %struct.tas2552_data** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %59

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @__ffs(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @__fls(i32 %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %59

48:                                               ; preds = %33
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul i32 %49, %50
  %52 = load %struct.tas2552_data*, %struct.tas2552_data** %13, align 8
  %53 = getelementptr inbounds %struct.tas2552_data, %struct.tas2552_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %55 = load i32, i32* @TAS2552_DOUT, align 4
  %56 = load i32, i32* @TAS2552_SDOUT_TRISTATE, align 4
  %57 = load i32, i32* @TAS2552_SDOUT_TRISTATE, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %48, %41, %26
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.tas2552_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
