; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i64, i32 }
%struct.snd_als300 = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Pointer (bytes): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_als300_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_als300*, align 8
  %5 = alloca %struct.snd_als300_substream_data*, align 8
  %6 = alloca i16, align 2
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_als300* %8, %struct.snd_als300** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %12, align 8
  store %struct.snd_als300_substream_data* %13, %struct.snd_als300_substream_data** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %14)
  store i16 %15, i16* %6, align 2
  %16 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %17 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %20 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %23 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @snd_als300_gcr_read(i32 %21, i32 %24)
  %26 = trunc i64 %25 to i16
  %27 = zext i16 %26 to i32
  %28 = add nsw i32 %27, 4
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %3, align 2
  %30 = load %struct.snd_als300*, %struct.snd_als300** %4, align 8
  %31 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i16 0, i16* %3, align 2
  br label %46

39:                                               ; preds = %1
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* %3, align 2
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 %41, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %3, align 2
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %5, align 8
  %48 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i16, i16* %6, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i32
  %56 = add nsw i32 %55, %53
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %3, align 2
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i16, i16* %3, align 2
  %60 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i16 zeroext %59)
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i16, i16* %3, align 2
  %65 = call i32 @bytes_to_frames(%struct.TYPE_2__* %63, i16 zeroext %64)
  ret i32 %65
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local zeroext i16 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @snd_als300_gcr_read(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_als300_dbgplay(i8*, i16 zeroext) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
