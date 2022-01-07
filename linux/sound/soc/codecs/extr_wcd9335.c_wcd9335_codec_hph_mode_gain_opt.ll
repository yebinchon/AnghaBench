; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_mode_gain_opt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_codec_hph_mode_gain_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wcd9335_codec = type { i32, i32 }

@WCD9335_ANA_HPH = common dso_local global i32 0, align 4
@WCD9335_HPH_L_EN = common dso_local global i32 0, align 4
@WCD9335_HPH_R_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wcd9335_codec_hph_mode_gain_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcd9335_codec_hph_mode_gain_opt(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcd9335_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %15)
  store %struct.wcd9335_codec* %16, %struct.wcd9335_codec** %5, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = load i32, i32* @WCD9335_ANA_HPH, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 7
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, 64
  %24 = ashr i32 %23, 6
  store i32 %24, i32* %12, align 4
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %26 = load i32, i32* @WCD9335_HPH_L_EN, align 4
  %27 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %29 = load i32, i32* @WCD9335_HPH_R_EN, align 4
  %30 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 192
  %33 = or i32 %32, 32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 192
  %38 = or i32 %37, 32
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %2
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %49 = load i32, i32* @WCD9335_HPH_L_EN, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %48, i32 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 31
  %54 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %55 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %47, %44, %2
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %65 = load i32, i32* @WCD9335_HPH_R_EN, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i32 %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 31
  %70 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %5, align 8
  %71 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %60, %56
  ret void
}

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
