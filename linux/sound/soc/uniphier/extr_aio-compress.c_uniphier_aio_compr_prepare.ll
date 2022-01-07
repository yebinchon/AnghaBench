; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-compress.c_uniphier_aio_compr_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_compr_runtime*, %struct.snd_soc_pcm_runtime* }
%struct.snd_compr_runtime = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.uniphier_aio = type { %struct.uniphier_aio_sub* }
%struct.uniphier_aio_sub = type { i32, i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @uniphier_aio_compr_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_compr_prepare(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_compr_runtime*, align 8
  %6 = alloca %struct.uniphier_aio*, align 8
  %7 = alloca %struct.uniphier_aio_sub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %11 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %11, i32 0, i32 2
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %4, align 8
  %14 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %14, i32 0, i32 1
  %16 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %15, align 8
  store %struct.snd_compr_runtime* %16, %struct.snd_compr_runtime** %5, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.uniphier_aio* @uniphier_priv(i32 %19)
  store %struct.uniphier_aio* %20, %struct.uniphier_aio** %6, align 8
  %21 = load %struct.uniphier_aio*, %struct.uniphier_aio** %6, align 8
  %22 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %21, i32 0, i32 0
  %23 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %22, align 8
  %24 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %23, i64 %26
  store %struct.uniphier_aio_sub* %27, %struct.uniphier_aio_sub** %7, align 8
  %28 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %5, align 8
  %29 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %32 = call i32 @aiodma_ch_set_param(%struct.uniphier_aio_sub* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %2, align 4
  br label %98

37:                                               ; preds = %1
  %38 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %39 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %38, i32 0, i32 3
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %43 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %44 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %47 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %50 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @aiodma_rb_set_buffer(%struct.uniphier_aio_sub* %42, i64 %45, i64 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %56 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %55, i32 0, i32 3
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %37
  %64 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %65 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %66 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %69 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %68, i32 0, i32 2
  %70 = call i32 @aio_port_set_param(%struct.uniphier_aio_sub* %64, i32 %67, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %2, align 4
  br label %98

75:                                               ; preds = %63
  %76 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %77 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %78 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @aio_oport_set_stream_type(%struct.uniphier_aio_sub* %76, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %98

85:                                               ; preds = %75
  %86 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %87 = call i32 @aio_port_set_enable(%struct.uniphier_aio_sub* %86, i32 1)
  %88 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %89 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %7, align 8
  %90 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @aio_if_set_param(%struct.uniphier_aio_sub* %88, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %95, %83, %73, %61, %35
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(i32) #1

declare dso_local i32 @aiodma_ch_set_param(%struct.uniphier_aio_sub*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @aiodma_rb_set_buffer(%struct.uniphier_aio_sub*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @aio_port_set_param(%struct.uniphier_aio_sub*, i32, i32*) #1

declare dso_local i32 @aio_oport_set_stream_type(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_port_set_enable(%struct.uniphier_aio_sub*, i32) #1

declare dso_local i32 @aio_if_set_param(%struct.uniphier_aio_sub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
