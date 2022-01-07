; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_ssi = type { i32, i32, i64 }

@SSICR = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@DIRQ = common dso_local global i32 0, align 4
@IIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_stop(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_ssi*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %10)
  store %struct.rsnd_ssi* %11, %struct.rsnd_ssi** %8, align 8
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %14 = call i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod* %12, %struct.rsnd_dai_stream* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %20 = call i64 @rsnd_ssi_is_parent(%struct.rsnd_mod* %18, %struct.rsnd_dai_stream* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %54

23:                                               ; preds = %17
  %24 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %25 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %28 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %32 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %36 = load i32, i32* @SSICR, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %35, i32 %36, i32 %39)
  %41 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %42 = load i32, i32* @DIRQ, align 4
  %43 = call i32 @rsnd_ssi_status_check(%struct.rsnd_mod* %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %23
  %45 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %46 = load i32, i32* @SSICR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %45, i32 %46, i32 %47)
  %49 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %50 = load i32, i32* @IIRQ, align 4
  %51 = call i32 @rsnd_ssi_status_check(%struct.rsnd_mod* %49, i32 %50)
  %52 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %53 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %22, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_ssi_is_parent(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_ssi_status_check(%struct.rsnd_mod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
