; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_in_set_vu.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_in_set_vu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32 }

@ARIZONA_IN_VU = common dso_local global i32 0, align 4
@ARIZONA_ADC_DIGITAL_VOLUME_1L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @arizona_in_set_vu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_in_set_vu(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arizona_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.arizona_priv* %9, %struct.arizona_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ARIZONA_IN_VU, align 4
  store i32 %13, i32* %6, align 4
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %12
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %19 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %24 = load i64, i64* @ARIZONA_ADC_DIGITAL_VOLUME_1L, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @ARIZONA_IN_VU, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i64 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %16

35:                                               ; preds = %16
  ret void
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
