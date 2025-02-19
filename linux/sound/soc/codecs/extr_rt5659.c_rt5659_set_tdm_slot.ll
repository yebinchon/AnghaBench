; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT5659_TDM_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5659_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %5
  %23 = load i32, i32* %13, align 4
  %24 = or i32 %23, 32768
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %43 [
    i32 4, label %27
    i32 6, label %32
    i32 8, label %37
    i32 2, label %42
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %28, 1024
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, 256
  store i32 %31, i32* %13, align 4
  br label %46

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, 2048
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, 512
  store i32 %36, i32* %13, align 4
  br label %46

37:                                               ; preds = %25
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, 3072
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, 768
  store i32 %41, i32* %13, align 4
  br label %46

42:                                               ; preds = %25
  br label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %72

46:                                               ; preds = %42, %37, %32, %27
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %64 [
    i32 20, label %48
    i32 24, label %53
    i32 32, label %58
    i32 16, label %63
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %13, align 4
  %50 = or i32 %49, 64
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, 16
  store i32 %52, i32* %13, align 4
  br label %67

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, 32
  store i32 %57, i32* %13, align 4
  br label %67

58:                                               ; preds = %46
  %59 = load i32, i32* %13, align 4
  %60 = or i32 %59, 192
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, 48
  store i32 %62, i32* %13, align 4
  br label %67

63:                                               ; preds = %46
  br label %67

64:                                               ; preds = %46
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %72

67:                                               ; preds = %63, %58, %53, %48
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %69 = load i32, i32* @RT5659_TDM_CTRL_1, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 36848, i32 %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %64, %43
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
