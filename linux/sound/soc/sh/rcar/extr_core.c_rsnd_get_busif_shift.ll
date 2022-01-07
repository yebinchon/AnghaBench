; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_get_busif_shift.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_get_busif_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.snd_pcm_runtime = type { i32 }

@RSND_MOD_SRC = common dso_local global i32 0, align 4
@RSND_MOD_CMD = common dso_local global i32 0, align 4
@RSND_MOD_SSIU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_get_busif_shift(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %4, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %5, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = load i32, i32* @RSND_MOD_SRC, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @RSND_MOD_CMD, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @RSND_MOD_SSIU, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* @RSND_MOD_CMD, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @RSND_MOD_SRC, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @RSND_MOD_SSIU, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %25 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %24)
  store %struct.snd_pcm_runtime* %25, %struct.snd_pcm_runtime** %8, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %9, align 8
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %27 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  br label %33

31:                                               ; preds = %2
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32* [ %30, %29 ], [ %32, %31 ]
  store i32* %34, i32** %10, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_pcm_format_width(i32 %37)
  %39 = icmp ne i32 %38, 24
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %73

41:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream* %48, i32 %53)
  store %struct.rsnd_mod* %54, %struct.rsnd_mod** %9, align 8
  %55 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %56 = icmp ne %struct.rsnd_mod* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %42

62:                                               ; preds = %57, %42
  %63 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %64 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %65 = icmp ne %struct.rsnd_mod* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %73

67:                                               ; preds = %62
  %68 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %69 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 524288, i32* %3, align 4
  br label %73

72:                                               ; preds = %67
  store i32 1572864, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %66, %40
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod(%struct.rsnd_dai_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
