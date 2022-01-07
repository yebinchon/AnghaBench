; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i16, i32 }
%struct.snd_als300 = type { i32, i32 }

@TRANSFER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TRIGGER START\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"TRIGGER STOP\0A\00", align 1
@FIFO_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"TRIGGER PAUSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"TRIGGER RELEASE\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"TRIGGER INVALID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_als300_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_als300*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_als300_substream_data*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.snd_als300* %11, %struct.snd_als300** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %15, align 8
  store %struct.snd_als300_substream_data* %16, %struct.snd_als300_substream_data** %7, align 8
  %17 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %7, align 8
  %18 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 4
  store i16 %19, i16* %8, align 2
  %20 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %21 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %88 [
    i32 130, label %24
    i32 131, label %24
    i32 129, label %41
    i32 128, label %41
    i32 133, label %57
    i32 132, label %72
  ]

24:                                               ; preds = %2, %2
  %25 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %26 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i16, i16* %8, align 2
  %29 = call i32 @snd_als300_gcr_read(i32 %27, i16 zeroext %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %7, align 8
  %31 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %33 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i16, i16* %8, align 2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @TRANSFER_START, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @snd_als300_gcr_write(i32 %34, i16 zeroext %35, i32 %38)
  %40 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %92

41:                                               ; preds = %2, %2
  %42 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %43 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i16, i16* %8, align 2
  %46 = call i32 @snd_als300_gcr_read(i32 %44, i16 zeroext %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %48 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i16, i16* %8, align 2
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TRANSFER_START, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @snd_als300_gcr_write(i32 %49, i16 zeroext %50, i32 %54)
  %56 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %92

57:                                               ; preds = %2
  %58 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %59 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i16, i16* %8, align 2
  %62 = call i32 @snd_als300_gcr_read(i32 %60, i16 zeroext %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %64 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i16, i16* %8, align 2
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @FIFO_PAUSE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_als300_gcr_write(i32 %65, i16 zeroext %66, i32 %69)
  %71 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %92

72:                                               ; preds = %2
  %73 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %74 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i16, i16* %8, align 2
  %77 = call i32 @snd_als300_gcr_read(i32 %75, i16 zeroext %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %79 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i16, i16* %8, align 2
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FIFO_PAUSE, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @snd_als300_gcr_write(i32 %80, i16 zeroext %81, i32 %85)
  %87 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %92

88:                                               ; preds = %2
  %89 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %88, %72, %57, %41, %24
  %93 = load %struct.snd_als300*, %struct.snd_als300** %5, align 8
  %94 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local %struct.snd_als300* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_als300_gcr_read(i32, i16 zeroext) #1

declare dso_local i32 @snd_als300_gcr_write(i32, i16 zeroext, i32) #1

declare dso_local i32 @snd_als300_dbgplay(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
