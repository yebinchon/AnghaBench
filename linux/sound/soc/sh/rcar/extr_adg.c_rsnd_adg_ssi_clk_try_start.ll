; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_ssi_clk_try_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_adg.c_rsnd_adg_ssi_clk_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_adg = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@LRCLK_ASYNC = common dso_local global i32 0, align 4
@AUDIO_OUT_48 = common dso_local global i32 0, align 4
@BRGCKR = common dso_local global i32 0, align 4
@BRRA = common dso_local global i32 0, align 4
@BRRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CLKOUT is based on BRG%c (= %dHz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_adg_ssi_clk_try_start(%struct.rsnd_mod* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.rsnd_adg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %13 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %6, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %15 = call %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv* %14)
  store %struct.rsnd_adg* %15, %struct.rsnd_adg** %7, align 8
  %16 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %17 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %16)
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %19 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg* %18)
  store %struct.rsnd_mod* %19, %struct.rsnd_mod** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @rsnd_adg_clk_query(%struct.rsnd_priv* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @rsnd_adg_set_ssi_clk(%struct.rsnd_mod* %28, i32 %29)
  %31 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %32 = load i32, i32* @LRCLK_ASYNC, align 4
  %33 = call i64 @rsnd_flags_has(%struct.rsnd_adg* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %37 = load i32, i32* @AUDIO_OUT_48, align 4
  %38 = call i64 @rsnd_flags_has(%struct.rsnd_adg* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 -2147483648, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %48

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  %44 = urem i32 %43, 8000
  %45 = icmp eq i32 0, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -2147483648, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %50 = load i32, i32* @BRGCKR, align 4
  %51 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %52 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %49, i32 %50, i32 -2139684864, i32 %55)
  %57 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %58 = load i32, i32* @BRRA, align 4
  %59 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %60 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %57, i32 %58, i32 %61)
  %63 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %64 = load i32, i32* @BRRB, align 4
  %65 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %66 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %63, i32 %64, i32 %67)
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 66, i32 65
  %74 = trunc i32 %73 to i8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %48
  %78 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %79 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  br label %85

81:                                               ; preds = %48
  %82 = load %struct.rsnd_adg*, %struct.rsnd_adg** %7, align 8
  %83 = getelementptr inbounds %struct.rsnd_adg, %struct.rsnd_adg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %80, %77 ], [ %84, %81 ]
  %87 = call i32 @dev_dbg(%struct.device* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %74, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.rsnd_adg* @rsnd_priv_to_adg(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_adg*) #1

declare dso_local i32 @rsnd_adg_clk_query(%struct.rsnd_priv*, i32) #1

declare dso_local i32 @rsnd_adg_set_ssi_clk(%struct.rsnd_mod*, i32) #1

declare dso_local i64 @rsnd_flags_has(%struct.rsnd_adg*, i32) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
