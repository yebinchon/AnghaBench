; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @dac33_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dac33_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %38 [
    i32 130, label %8
    i32 129, label %9
    i32 128, label %10
    i32 131, label %25
  ]

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %11)
  %13 = icmp eq i32 %12, 131
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %16 = call i32 @dac33_hard_power(%struct.snd_soc_component* %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %14
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %23 = call i32 @dac33_init_chip(%struct.snd_soc_component* %22)
  br label %24

24:                                               ; preds = %21, %10
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %27 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %26)
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %39

30:                                               ; preds = %25
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %32 = call i32 @dac33_hard_power(%struct.snd_soc_component* %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %2, %37, %24, %9, %8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %29, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @dac33_hard_power(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dac33_init_chip(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
