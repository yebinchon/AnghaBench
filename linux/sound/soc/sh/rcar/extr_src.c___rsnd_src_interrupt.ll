; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c___rsnd_src_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_src.c___rsnd_src_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, %struct.rsnd_dai_stream*)* @__rsnd_src_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rsnd_src_interrupt(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %4, align 8
  %7 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %8 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %7)
  store %struct.rsnd_priv* %8, %struct.rsnd_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %13 = call i32 @rsnd_io_is_working(%struct.rsnd_dai_stream* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %18 = call i64 @rsnd_src_error_occurred(%struct.rsnd_mod* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %23 = call i32 @rsnd_src_status_clear(%struct.rsnd_mod* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rsnd_priv, %struct.rsnd_priv* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %32 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_pcm_stop_xrun(i32 %33)
  br label %35

35:                                               ; preds = %30, %24
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rsnd_io_is_working(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_src_error_occurred(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_src_status_clear(%struct.rsnd_mod*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_stop_xrun(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
