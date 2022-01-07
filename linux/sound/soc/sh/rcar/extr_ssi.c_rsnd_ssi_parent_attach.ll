; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_parent_attach.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_parent_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.rsnd_priv = type { i32 }

@RSND_MOD_SSIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, %struct.rsnd_dai_stream*)* @rsnd_ssi_parent_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_ssi_parent_attach(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_dai*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %4, align 8
  %7 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %8 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %7)
  store %struct.rsnd_dai* %8, %struct.rsnd_dai** %5, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %10 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %9)
  store %struct.rsnd_priv* %10, %struct.rsnd_priv** %6, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %12 = call i32 @__rsnd_ssi_is_pin_sharing(%struct.rsnd_mod* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.rsnd_dai*, %struct.rsnd_dai** %5, align 8
  %17 = call i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %41

20:                                               ; preds = %15
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %22 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %21)
  switch i32 %22, label %41 [
    i32 1, label %23
    i32 2, label %23
    i32 9, label %23
    i32 4, label %29
    i32 8, label %35
  ]

23:                                               ; preds = %20, %20, %20
  %24 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %25 = call i32 @rsnd_ssi_mod_get(%struct.rsnd_priv* %24, i32 0)
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %27 = load i32, i32* @RSND_MOD_SSIP, align 4
  %28 = call i32 @rsnd_dai_connect(i32 %25, %struct.rsnd_dai_stream* %26, i32 %27)
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %31 = call i32 @rsnd_ssi_mod_get(%struct.rsnd_priv* %30, i32 3)
  %32 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %33 = load i32, i32* @RSND_MOD_SSIP, align 4
  %34 = call i32 @rsnd_dai_connect(i32 %31, %struct.rsnd_dai_stream* %32, i32 %33)
  br label %41

35:                                               ; preds = %20
  %36 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %37 = call i32 @rsnd_ssi_mod_get(%struct.rsnd_priv* %36, i32 7)
  %38 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %39 = load i32, i32* @RSND_MOD_SSIP, align 4
  %40 = call i32 @rsnd_dai_connect(i32 %37, %struct.rsnd_dai_stream* %38, i32 %39)
  br label %41

41:                                               ; preds = %14, %19, %20, %35, %29, %23
  ret void
}

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local i32 @__rsnd_ssi_is_pin_sharing(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_dai_connect(i32, %struct.rsnd_dai_stream*, i32) #1

declare dso_local i32 @rsnd_ssi_mod_get(%struct.rsnd_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
