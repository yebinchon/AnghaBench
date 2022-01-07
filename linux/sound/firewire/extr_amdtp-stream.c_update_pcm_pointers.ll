; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_update_pcm_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_update_pcm_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i64, i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, %struct.snd_pcm_substream*, i32)* @update_pcm_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_pcm_pointers(%struct.amdtp_stream* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %9 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %13, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %30 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @WRITE_ONCE(i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %41 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %42, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %28
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %56 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %60 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %59, i32 0, i32 2
  %61 = call i32 @tasklet_hi_schedule(i32* %60)
  br label %62

62:                                               ; preds = %49, %28
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
