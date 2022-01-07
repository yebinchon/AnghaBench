; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_urb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2yaudio.c_i_usX2Y_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.snd_usX2Y_substream* }
%struct.snd_usX2Y_substream = type { i32, %struct.urb*, i32, %struct.usX2Ydev* }
%struct.usX2Ydev = type { i32, %struct.snd_usX2Y_substream**, i32 }

@state_PREPARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"hcd_frame=%i ep=%i%s status=%i start_frame=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, align 8
  store %struct.snd_usX2Y_substream* %9, %struct.snd_usX2Y_substream** %3, align 8
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %10, i32 0, i32 3
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %11, align 8
  store %struct.usX2Ydev* %12, %struct.usX2Ydev** %4, align 8
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @state_PREPARED, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %23 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_get_current_frame_number(i32 %24)
  %26 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @usb_pipein(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.urb*, %struct.urb** %2, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i8* %35, i32 %38, i32 %41)
  br label %112

43:                                               ; preds = %1
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %51 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = call i32 @usX2Y_error_urb_status(%struct.usX2Ydev* %50, %struct.snd_usX2Y_substream* %51, %struct.urb* %52)
  br label %112

54:                                               ; preds = %43
  %55 = load %struct.urb*, %struct.urb** %2, align 8
  %56 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %56, i32 0, i32 1
  store %struct.urb* %55, %struct.urb** %57, align 8
  %58 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %59 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %58, i32 0, i32 1
  %60 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %59, align 8
  %61 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %62 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %60, i64 %61
  %63 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %62, align 8
  store %struct.snd_usX2Y_substream* %63, %struct.snd_usX2Y_substream** %5, align 8
  %64 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %65 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %64, i32 0, i32 1
  %66 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %65, align 8
  %67 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %68 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %66, i64 %67
  %69 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %68, align 8
  store %struct.snd_usX2Y_substream* %69, %struct.snd_usX2Y_substream** %6, align 8
  %70 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %71 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %70, i32 0, i32 1
  %72 = load %struct.urb*, %struct.urb** %71, align 8
  %73 = icmp ne %struct.urb* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %54
  %75 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %76 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %75, i32 0, i32 0
  %77 = call i64 @atomic_read(i32* %76)
  %78 = load i64, i64* @state_PREPARED, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %74
  %81 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %82 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %81, i32 0, i32 1
  %83 = load %struct.urb*, %struct.urb** %82, align 8
  %84 = icmp ne %struct.urb* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %87 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %86, i32 0, i32 0
  %88 = call i64 @atomic_read(i32* %87)
  %89 = load i64, i64* @state_PREPARED, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %85, %80
  %92 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %93 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %94 = load %struct.urb*, %struct.urb** %2, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usX2Y_usbframe_complete(%struct.snd_usX2Y_substream* %92, %struct.snd_usX2Y_substream* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = call i64 (...) @nr_of_packs()
  %101 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %102 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %111

107:                                              ; preds = %91
  %108 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %110 = call i32 @usX2Y_clients_stop(%struct.usX2Ydev* %109)
  br label %111

111:                                              ; preds = %107, %99
  br label %112

112:                                              ; preds = %21, %49, %111, %85, %74, %54
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @usb_get_current_frame_number(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usX2Y_error_urb_status(%struct.usX2Ydev*, %struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @usX2Y_usbframe_complete(%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32) #1

declare dso_local i64 @nr_of_packs(...) #1

declare dso_local i32 @usX2Y_clients_stop(%struct.usX2Ydev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
