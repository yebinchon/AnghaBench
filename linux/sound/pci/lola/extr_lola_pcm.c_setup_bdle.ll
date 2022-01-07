; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_setup_bdle.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_setup_bdle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.lola_stream = type { i64 }

@LOLA_MAX_BDL_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.lola_stream*, i32**, i32, i32)* @setup_bdle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_bdle(%struct.snd_pcm_substream* %0, %struct.lola_stream* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.lola_stream*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store %struct.lola_stream* %1, %struct.lola_stream** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32**, i32*** %9, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  br label %17

17:                                               ; preds = %59, %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %17
  %21 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %22 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOLA_MAX_BDL_ENTRIES, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %76

29:                                               ; preds = %20
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %30, i32 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @upper_32_bits(i64 %38)
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @snd_pcm_sgbuf_get_chunk_size(%struct.snd_pcm_substream* %43, i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  br label %59

57:                                               ; preds = %29
  %58 = call i32 @cpu_to_le32(i32 1)
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %12, align 8
  %65 = load %struct.lola_stream*, %struct.lola_stream** %8, align 8
  %66 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %17

72:                                               ; preds = %17
  %73 = load i32*, i32** %12, align 8
  %74 = load i32**, i32*** %9, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %26
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @snd_pcm_sgbuf_get_chunk_size(%struct.snd_pcm_substream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
