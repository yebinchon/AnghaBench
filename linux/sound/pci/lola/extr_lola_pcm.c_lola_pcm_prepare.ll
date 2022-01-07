; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32 }
%struct.lola = type { i32, i32 }
%struct.lola_pcm = type { i64 }
%struct.lola_stream = type { i64, i32, i32, i32, i32, %struct.lola_stream* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @lola_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.lola*, align 8
  %5 = alloca %struct.lola_pcm*, align 8
  %6 = alloca %struct.lola_stream*, align 8
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.lola* %14, %struct.lola** %4, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream* %15)
  store %struct.lola_pcm* %16, %struct.lola_pcm** %5, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = call %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream* %17)
  store %struct.lola_stream* %18, %struct.lola_stream** %6, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %7, align 8
  %22 = load %struct.lola*, %struct.lola** %4, align 8
  %23 = getelementptr inbounds %struct.lola, %struct.lola* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.lola*, %struct.lola** %4, align 8
  %26 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %27 = call i32 @lola_stream_reset(%struct.lola* %25, %struct.lola_stream* %26)
  %28 = load %struct.lola_pcm*, %struct.lola_pcm** %5, align 8
  %29 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %30 = call i32 @lola_cleanup_slave_streams(%struct.lola_pcm* %28, %struct.lola_stream* %29)
  %31 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %32 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load %struct.lola_pcm*, %struct.lola_pcm** %5, align 8
  %40 = getelementptr inbounds %struct.lola_pcm, %struct.lola_pcm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.lola*, %struct.lola** %4, align 8
  %45 = getelementptr inbounds %struct.lola, %struct.lola* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %138

49:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %58 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %58, i64 %60
  %62 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %61, i32 0, i32 5
  store %struct.lola_stream* %57, %struct.lola_stream** %62, align 8
  %63 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %63, i64 %65
  %67 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.lola*, %struct.lola** %4, align 8
  %73 = getelementptr inbounds %struct.lola, %struct.lola* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %76 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %78 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %80 = call i32 @lola_get_format_verb(%struct.snd_pcm_substream* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %83 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %86 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %89 = getelementptr inbounds %struct.lola_stream, %struct.lola_stream* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.lola*, %struct.lola** %4, align 8
  %91 = load %struct.lola_pcm*, %struct.lola_pcm** %5, align 8
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %93 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %94 = call i32 @lola_setup_periods(%struct.lola* %90, %struct.lola_pcm* %91, %struct.snd_pcm_substream* %92, %struct.lola_stream* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %71
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %2, align 4
  br label %138

99:                                               ; preds = %71
  %100 = load %struct.lola*, %struct.lola** %4, align 8
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @lola_set_sample_rate(%struct.lola* %100, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %2, align 4
  br label %138

109:                                              ; preds = %99
  %110 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %111 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lola*, %struct.lola** %4, align 8
  %114 = getelementptr inbounds %struct.lola, %struct.lola* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.lola*, %struct.lola** %4, align 8
  %116 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @lola_set_stream_config(%struct.lola* %115, %struct.lola_stream* %116, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %2, align 4
  br label %138

125:                                              ; preds = %109
  %126 = load %struct.lola*, %struct.lola** %4, align 8
  %127 = load %struct.lola_pcm*, %struct.lola_pcm** %5, align 8
  %128 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %129 = call i32 @lola_setup_controller(%struct.lola* %126, %struct.lola_pcm* %127, %struct.lola_stream* %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.lola*, %struct.lola** %4, align 8
  %134 = load %struct.lola_stream*, %struct.lola_stream** %6, align 8
  %135 = call i32 @lola_stream_reset(%struct.lola* %133, %struct.lola_stream* %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %2, align 4
  br label %138

137:                                              ; preds = %125
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %132, %123, %107, %97, %43
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.lola* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_pcm* @lola_get_pcm(%struct.snd_pcm_substream*) #1

declare dso_local %struct.lola_stream* @lola_get_stream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lola_stream_reset(%struct.lola*, %struct.lola_stream*) #1

declare dso_local i32 @lola_cleanup_slave_streams(%struct.lola_pcm*, %struct.lola_stream*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @lola_get_format_verb(%struct.snd_pcm_substream*) #1

declare dso_local i32 @lola_setup_periods(%struct.lola*, %struct.lola_pcm*, %struct.snd_pcm_substream*, %struct.lola_stream*) #1

declare dso_local i32 @lola_set_sample_rate(%struct.lola*, i32) #1

declare dso_local i32 @lola_set_stream_config(%struct.lola*, %struct.lola_stream*, i32) #1

declare dso_local i32 @lola_setup_controller(%struct.lola*, %struct.lola_pcm*, %struct.lola_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
