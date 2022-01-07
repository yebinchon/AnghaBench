; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_ssi_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_set_ssi_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_adg = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"AUDIO_CLK_SEL is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, i32)* @rsnd_adg_set_ssi_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_adg_set_ssi_clk(%struct.rsnd_mod* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.rsnd_adg*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %13 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %5, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %15 = call %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv* %14)
  store %struct.rsnd_adg* %15, %struct.rsnd_adg** %6, align 8
  %16 = load %struct.rsnd_adg*, %struct.rsnd_adg** %6, align 8
  %17 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg* %16)
  store %struct.rsnd_mod* %17, %struct.rsnd_mod** %7, align 8
  %18 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %19 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %18)
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %21 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = srem i32 %22, 4
  %24 = mul nsw i32 %23, 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 255, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %28 = call i32 @rsnd_mod_confirm_ssi(%struct.rsnd_mod* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %46

35:                                               ; preds = %2
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 4
  %39 = call i32 @AUDIO_CLK_SEL(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_confirm_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

declare dso_local i32 @AUDIO_CLK_SEL(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
