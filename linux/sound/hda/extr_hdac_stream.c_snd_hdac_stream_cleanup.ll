; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_stream.c_snd_hdac_stream_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_stream = type { i64, i64, i64 }

@SD_BDLPL = common dso_local global i32 0, align 4
@SD_BDLPU = common dso_local global i32 0, align 4
@SD_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_stream_cleanup(%struct.hdac_stream* %0) #0 {
  %2 = alloca %struct.hdac_stream*, align 8
  store %struct.hdac_stream* %0, %struct.hdac_stream** %2, align 8
  %3 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %4 = load i32, i32* @SD_BDLPL, align 4
  %5 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %3, i32 %4, i32 0)
  %6 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %7 = load i32, i32* @SD_BDLPU, align 4
  %8 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %6, i32 %7, i32 0)
  %9 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %10 = load i32, i32* @SD_CTL, align 4
  %11 = call i32 @snd_hdac_stream_writel(%struct.hdac_stream* %9, i32 %10, i32 0)
  %12 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %13 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %15 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.hdac_stream*, %struct.hdac_stream** %2, align 8
  %17 = getelementptr inbounds %struct.hdac_stream, %struct.hdac_stream* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

declare dso_local i32 @snd_hdac_stream_writel(%struct.hdac_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
