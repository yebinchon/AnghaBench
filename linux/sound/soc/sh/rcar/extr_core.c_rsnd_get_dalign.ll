; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_get_dalign.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_get_dalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_get_dalign(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  %11 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %12 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream* %11)
  store %struct.rsnd_mod* %12, %struct.rsnd_mod** %6, align 8
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %14 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %13)
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %8, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %16 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %20 = call %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %19)
  store %struct.rsnd_mod* %20, %struct.rsnd_mod** %9, align 8
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %22 = icmp ne %struct.rsnd_mod* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.rsnd_mod* [ %24, %23 ], [ %26, %25 ]
  store %struct.rsnd_mod* %28, %struct.rsnd_mod** %7, align 8
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %31 = call %struct.rsnd_mod* @rsnd_io_to_mod_cmd(%struct.rsnd_dai_stream* %30)
  store %struct.rsnd_mod* %31, %struct.rsnd_mod** %10, align 8
  %32 = load %struct.rsnd_mod*, %struct.rsnd_mod** %10, align 8
  %33 = icmp ne %struct.rsnd_mod* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.rsnd_mod*, %struct.rsnd_mod** %10, align 8
  br label %38

36:                                               ; preds = %29
  %37 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi %struct.rsnd_mod* [ %35, %34 ], [ %37, %36 ]
  store %struct.rsnd_mod* %39, %struct.rsnd_mod** %7, align 8
  br label %40

40:                                               ; preds = %38, %27
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_pcm_format_width(i32 %43)
  %45 = icmp ne i32 %44, 16
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %49 = icmp ne %struct.rsnd_mod* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %40
  store i32 1985229328, i32* %3, align 4
  br label %52

51:                                               ; preds = %46
  store i32 1732584193, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_cmd(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
