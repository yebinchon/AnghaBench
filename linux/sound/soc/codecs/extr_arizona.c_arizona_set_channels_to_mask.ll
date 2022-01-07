; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_channels_to_mask.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_set_channels_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Too many channels in TDM mask\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai*, i32, i32, i32)* @arizona_set_channels_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_set_channels_to_mask(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.arizona_priv*, align 8
  %11 = alloca %struct.arizona*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %9, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %18 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.arizona_priv* %18, %struct.arizona_priv** %10, align 8
  %19 = load %struct.arizona_priv*, %struct.arizona_priv** %10, align 8
  %20 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %19, i32 0, i32 0
  %21 = load %struct.arizona*, %struct.arizona** %20, align 8
  store %struct.arizona* %21, %struct.arizona** %11, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %47, %4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ffs(i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %56

33:                                               ; preds = %26
  %34 = load %struct.arizona*, %struct.arizona** %11, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %13, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @regmap_write(i32 %36, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %33
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %55 = call i32 @arizona_aif_warn(%struct.snd_soc_dai* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %32, %53, %50
  ret void
}

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @arizona_aif_warn(%struct.snd_soc_dai*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
