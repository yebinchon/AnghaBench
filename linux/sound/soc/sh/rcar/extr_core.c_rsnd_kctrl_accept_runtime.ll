; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_accept_runtime.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_kctrl_accept_runtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_runtime = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Can't update kctrl when idle\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_kctrl_accept_runtime(%struct.rsnd_dai_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  %7 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %8 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %7)
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %4, align 8
  %9 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %10 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %9)
  store %struct.rsnd_priv* %10, %struct.rsnd_priv** %5, align 8
  %11 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %12 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %14 = icmp ne %struct.snd_pcm_runtime* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
