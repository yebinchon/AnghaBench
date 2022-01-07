; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_stop_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssiu.c_rsnd_ssiu_stop_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_ssiu = type { i64 }

@SSI_CTRL = common dso_local global i32 0, align 4
@SSI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, %struct.rsnd_priv*)* @rsnd_ssiu_stop_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssiu_stop_gen2(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, %struct.rsnd_priv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca %struct.rsnd_priv*, align 8
  %8 = alloca %struct.rsnd_ssiu*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store %struct.rsnd_priv* %2, %struct.rsnd_priv** %7, align 8
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = call %struct.rsnd_ssiu* @rsnd_mod_to_ssiu(%struct.rsnd_mod* %10)
  store %struct.rsnd_ssiu* %11, %struct.rsnd_ssiu** %8, align 8
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %13 = call i32 @rsnd_mod_id_sub(%struct.rsnd_mod* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %15 = call i32 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %20 = load i32, i32* @SSI_CTRL, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 4
  %23 = shl i32 1, %22
  %24 = call i32 @rsnd_mod_bset(%struct.rsnd_mod* %19, i32 %20, i32 %23, i32 0)
  %25 = load %struct.rsnd_ssiu*, %struct.rsnd_ssiu** %8, align 8
  %26 = getelementptr inbounds %struct.rsnd_ssiu, %struct.rsnd_ssiu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

31:                                               ; preds = %18
  %32 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %33 = call i64 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %37 = load i32, i32* @SSI_CONTROL, align 4
  %38 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %30, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.rsnd_ssiu* @rsnd_mod_to_ssiu(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_id_sub(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_bset(%struct.rsnd_mod*, i32, i32, i32) #1

declare dso_local i64 @rsnd_ssi_multi_slaves_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
