; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_quit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_ssi = type { i64, i64, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s usrcnt error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_quit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_quit(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_ssi*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %10)
  store %struct.rsnd_ssi* %11, %struct.rsnd_ssi** %8, align 8
  %12 = load %struct.rsnd_priv*, %struct.rsnd_priv** %7, align 8
  %13 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %12)
  store %struct.device* %13, %struct.device** %9, align 8
  %14 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %16 = call i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod* %14, %struct.rsnd_dai_stream* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %21 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %27 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %26)
  %28 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %19
  %32 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %33 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %34 = call i32 @rsnd_ssi_master_clk_stop(%struct.rsnd_mod* %32, %struct.rsnd_dai_stream* %33)
  %35 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %36 = call i32 @rsnd_mod_power_off(%struct.rsnd_mod* %35)
  %37 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %38 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %42 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %31
  %46 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %47 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %49 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %51 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %31
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %24, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_master_clk_stop(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_power_off(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
