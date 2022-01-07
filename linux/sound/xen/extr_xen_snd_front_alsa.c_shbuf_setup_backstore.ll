; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_shbuf_setup_backstore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_alsa.c_shbuf_setup_backstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_pcm_stream_info = type { i64, i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_snd_front_pcm_stream_info*, i64)* @shbuf_setup_backstore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shbuf_setup_backstore(%struct.xen_snd_front_pcm_stream_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_snd_front_pcm_stream_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xen_snd_front_pcm_stream_info* %0, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @alloc_pages_exact(i64 %7, i32 %8)
  %10 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %11 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  %12 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %22 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %24 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i32 @DIV_ROUND_UP(i64 %25, i32 %26)
  %28 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %29 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %31 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32* @kcalloc(i32 %32, i32 8, i32 %33)
  %35 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %36 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %38 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %48 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %53 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = call i32 @virt_to_page(i64 %59)
  %61 = load %struct.xen_snd_front_pcm_stream_info*, %struct.xen_snd_front_pcm_stream_info** %4, align 8
  %62 = getelementptr inbounds %struct.xen_snd_front_pcm_stream_info, %struct.xen_snd_front_pcm_stream_info* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %45

70:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %41, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @alloc_pages_exact(i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
