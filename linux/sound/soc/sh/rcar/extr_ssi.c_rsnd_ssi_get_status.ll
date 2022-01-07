; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }

@RSND_MOD_SSIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32)* @rsnd_ssi_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rsnd_ssi_get_status(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RSND_MOD_SSIP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %13 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %12, i32 0, i32 0
  store i32* %13, i32** %4, align 8
  br label %19

14:                                               ; preds = %3
  %15 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @rsnd_mod_get_status(%struct.rsnd_mod* %15, %struct.rsnd_dai_stream* %16, i32 %17)
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32*, i32** %4, align 8
  ret i32* %20
}

declare dso_local i32* @rsnd_mod_get_status(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
