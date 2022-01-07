; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_rate_transform.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-pcm.c_mt8183_rate_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt8183_rate_transform(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @dai_memif_rate_transform(%struct.device* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mt8183_general_rate_transform(%struct.device* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @dai_memif_rate_transform(%struct.device*, i32) #1

declare dso_local i32 @mt8183_general_rate_transform(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
