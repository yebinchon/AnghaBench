; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_pio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_pio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.snd_pcm_runtime = type { i32, i32, i64 }
%struct.rsnd_ssi = type { i32, i32, i32 }

@SSITDR = common dso_local global i32 0, align 4
@SSIRDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*)* @rsnd_ssi_pio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_pio_interrupt(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.rsnd_ssi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %4, align 8
  %12 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %13 = call %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream* %12)
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %15 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %14)
  store %struct.rsnd_ssi* %15, %struct.rsnd_ssi** %6, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %20 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @snd_pcm_format_width(i32 %27)
  %29 = icmp eq i32 %28, 24
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 8, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %33 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %37 = load i32, i32* @SSITDR, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %36, i32 %37, i32 %41)
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %45 = load i32, i32* @SSIRDR, align 4
  %46 = call i32 @rsnd_mod_read(%struct.rsnd_mod* %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %35
  %51 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %52 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %59 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %50
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %65 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %78 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %82 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  store i32 1, i32* %10, align 4
  br label %83

83:                                               ; preds = %74, %50
  %84 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %6, align 8
  %85 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @WRITE_ONCE(i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local %struct.snd_pcm_runtime* @rsnd_io_to_runtime(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_mod_read(%struct.rsnd_mod*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
