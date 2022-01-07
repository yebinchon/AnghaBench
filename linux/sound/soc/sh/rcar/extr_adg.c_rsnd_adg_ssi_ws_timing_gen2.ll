; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_ssi_ws_timing_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_ssi_ws_timing_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*)* @rsnd_adg_ssi_ws_timing_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_adg_ssi_ws_timing_gen2(%struct.rsnd_dai_stream* %0) #0 {
  %2 = alloca %struct.rsnd_dai_stream*, align 8
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %2, align 8
  %6 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %2, align 8
  %7 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %6)
  store %struct.rsnd_mod* %7, %struct.rsnd_mod** %3, align 8
  %8 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %9 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %2, align 8
  %12 = call i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %19 [
    i32 1, label %16
    i32 2, label %16
    i32 9, label %16
    i32 4, label %17
    i32 8, label %18
  ]

16:                                               ; preds = %14, %14, %14
  store i32 0, i32* %5, align 4
  br label %19

17:                                               ; preds = %14
  store i32 3, i32* %5, align 4
  br label %19

18:                                               ; preds = %14
  store i32 7, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %18, %17, %16
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 6, %21
  %23 = shl i32 %22, 8
  ret i32 %23
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_ssi_is_pin_sharing(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
