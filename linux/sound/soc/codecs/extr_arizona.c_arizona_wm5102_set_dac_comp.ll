; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_wm5102_set_dac_comp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_wm5102_set_dac_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@ARIZONA_DAC_COMP_1 = common dso_local global i32 0, align 4
@ARIZONA_DAC_COMP_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @arizona_wm5102_set_dac_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_wm5102_set_dac_comp(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca [4 x %struct.reg_sequence], align 16
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.arizona_priv* %9, %struct.arizona_priv** %5, align 8
  %10 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %11 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %10, i32 0, i32 0
  %12 = load %struct.arizona*, %struct.arizona** %11, align 8
  store %struct.arizona* %12, %struct.arizona** %6, align 8
  %13 = getelementptr inbounds [4 x %struct.reg_sequence], [4 x %struct.reg_sequence]* %7, i64 0, i64 0
  %14 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %13, i32 0, i32 0
  store i32 128, i32* %14, align 4
  %15 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %13, i32 0, i32 1
  store i32 3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %13, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %13, i64 1
  %18 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %17, i32 0, i32 0
  %19 = load i32, i32* @ARIZONA_DAC_COMP_1, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %17, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %17, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %17, i64 1
  %23 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %22, i32 0, i32 0
  %24 = load i32, i32* @ARIZONA_DAC_COMP_2, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %22, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %22, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %22, i64 1
  %28 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %27, i32 0, i32 0
  store i32 128, i32* %28, align 4
  %29 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %27, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %27, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load %struct.arizona*, %struct.arizona** %6, align 8
  %32 = getelementptr inbounds %struct.arizona, %struct.arizona* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.arizona*, %struct.arizona** %6, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [4 x %struct.reg_sequence], [4 x %struct.reg_sequence]* %7, i64 0, i64 1
  %38 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp uge i32 %39, 176400
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.arizona*, %struct.arizona** %6, align 8
  %43 = getelementptr inbounds %struct.arizona, %struct.arizona* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [4 x %struct.reg_sequence], [4 x %struct.reg_sequence]* %7, i64 0, i64 2
  %46 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %2
  %48 = load %struct.arizona*, %struct.arizona** %6, align 8
  %49 = getelementptr inbounds %struct.arizona, %struct.arizona* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.arizona*, %struct.arizona** %6, align 8
  %52 = getelementptr inbounds %struct.arizona, %struct.arizona* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [4 x %struct.reg_sequence], [4 x %struct.reg_sequence]* %7, i64 0, i64 0
  %55 = getelementptr inbounds [4 x %struct.reg_sequence], [4 x %struct.reg_sequence]* %7, i64 0, i64 0
  %56 = call i32 @ARRAY_SIZE(%struct.reg_sequence* %55)
  %57 = call i32 @regmap_multi_reg_write(i32 %53, %struct.reg_sequence* %54, i32 %56)
  ret void
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, %struct.reg_sequence*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
