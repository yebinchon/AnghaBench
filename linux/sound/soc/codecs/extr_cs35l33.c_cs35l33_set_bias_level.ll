; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs35l33_private = type { i32 }

@CS35L33_PWRCTL1 = common dso_local global i32 0, align 4
@CS35L33_PDN_ALL = common dso_local global i32 0, align 4
@CS35L33_CLK_CTL = common dso_local global i32 0, align 4
@CS35L33_MCLKDIS = common dso_local global i32 0, align 4
@CS35L33_INT_STATUS_2 = common dso_local global i32 0, align 4
@CS35L33_PDN_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @cs35l33_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs35l33_private*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.cs35l33_private* %9, %struct.cs35l33_private** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %53 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %25
    i32 131, label %52
  ]

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %14 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CS35L33_PWRCTL1, align 4
  %17 = load i32, i32* @CS35L33_PDN_ALL, align 4
  %18 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %20 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %23 = load i32, i32* @CS35L33_MCLKDIS, align 4
  %24 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 0)
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %27 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CS35L33_PWRCTL1, align 4
  %30 = load i32, i32* @CS35L33_PDN_ALL, align 4
  %31 = load i32, i32* @CS35L33_PDN_ALL, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %34 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CS35L33_INT_STATUS_2, align 4
  %37 = call i32 @regmap_read(i32 %35, i32 %36, i32* %6)
  %38 = call i32 @usleep_range(i32 1000, i32 1100)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CS35L33_PDN_DONE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %25
  %44 = load %struct.cs35l33_private*, %struct.cs35l33_private** %7, align 8
  %45 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CS35L33_CLK_CTL, align 4
  %48 = load i32, i32* @CS35L33_MCLKDIS, align 4
  %49 = load i32, i32* @CS35L33_MCLKDIS, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %25
  br label %56

52:                                               ; preds = %2
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %52, %51, %12, %11
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
