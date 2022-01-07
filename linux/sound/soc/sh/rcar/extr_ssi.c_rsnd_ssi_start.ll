; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_ssi = type { i32, i32, i32, i32 }

@EN = common dso_local global i32 0, align 4
@SSICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_start(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_ssi*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %10 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %9)
  store %struct.rsnd_ssi* %10, %struct.rsnd_ssi** %8, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %13 = call i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod* %11, %struct.rsnd_dai_stream* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %18 = call i64 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %49

21:                                               ; preds = %16
  %22 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %23 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %24 = call i64 @rsnd_ssi_is_parent(%struct.rsnd_mod* %22, %struct.rsnd_dai_stream* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %49

27:                                               ; preds = %21
  %28 = load i32, i32* @EN, align 4
  %29 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %30 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %32 = load i32, i32* @SSICR, align 4
  %33 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %34 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %37 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %41 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %8, align 8
  %45 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %31, i32 %32, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %27, %26, %20, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_is_run_mods(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_ssi_is_parent(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
