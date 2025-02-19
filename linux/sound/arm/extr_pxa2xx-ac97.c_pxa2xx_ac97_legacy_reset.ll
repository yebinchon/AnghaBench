; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_legacy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_pxa2xx-ac97.c_pxa2xx_ac97_legacy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @pxa2xx_ac97_legacy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa2xx_ac97_legacy_reset(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = call i32 (...) @pxa2xx_ac97_try_cold_reset()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @pxa2xx_ac97_try_warm_reset()
  br label %7

7:                                                ; preds = %5, %1
  %8 = call i32 (...) @pxa2xx_ac97_finish_reset()
  ret void
}

declare dso_local i32 @pxa2xx_ac97_try_cold_reset(...) #1

declare dso_local i32 @pxa2xx_ac97_try_warm_reset(...) #1

declare dso_local i32 @pxa2xx_ac97_finish_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
