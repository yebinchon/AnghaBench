; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.adau = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@adau17x1_dapm_pll_route = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @adau17x1_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_dapm_context*, align 8
  %11 = alloca %struct.adau*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32 %16)
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %10, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.adau* @snd_soc_component_get_drvdata(i32 %20)
  store %struct.adau* %21, %struct.adau** %11, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %34 [
    i32 130, label %23
    i32 128, label %24
    i32 129, label %33
  ]

23:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %37

24:                                               ; preds = %4
  %25 = load %struct.adau*, %struct.adau** %11, align 8
  %26 = getelementptr inbounds %struct.adau, %struct.adau* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %4, %32
  store i32 1, i32* %12, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %33, %23
  %38 = load %struct.adau*, %struct.adau** %11, align 8
  %39 = getelementptr inbounds %struct.adau, %struct.adau* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %43 [
    i32 130, label %41
    i32 129, label %42
    i32 128, label %42
  ]

41:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %46

42:                                               ; preds = %37, %37
  store i32 1, i32* %13, align 4
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %67

46:                                               ; preds = %42, %41
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.adau*, %struct.adau** %11, align 8
  %49 = getelementptr inbounds %struct.adau, %struct.adau* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %10, align 8
  %58 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %57, i32* @adau17x1_dapm_pll_route, i32 1)
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %10, align 8
  %61 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %60, i32* @adau17x1_dapm_pll_route, i32 1)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.adau*, %struct.adau** %11, align 8
  %66 = getelementptr inbounds %struct.adau, %struct.adau* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %43, %34, %29
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(i32) #1

declare dso_local %struct.adau* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
