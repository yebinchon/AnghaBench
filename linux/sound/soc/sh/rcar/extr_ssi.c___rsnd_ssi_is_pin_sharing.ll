; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c___rsnd_ssi_is_pin_sharing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c___rsnd_ssi_is_pin_sharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }

@RSND_SSI_CLK_PIN_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rsnd_ssi_is_pin_sharing(%struct.rsnd_mod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  %4 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %5 = icmp ne %struct.rsnd_mod* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  %8 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %9 = call i32 @rsnd_mod_to_ssi(%struct.rsnd_mod* %8)
  %10 = load i32, i32* @RSND_SSI_CLK_PIN_SHARE, align 4
  %11 = call i32 @rsnd_flags_has(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %7, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @rsnd_flags_has(i32, i32) #1

declare dso_local i32 @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
