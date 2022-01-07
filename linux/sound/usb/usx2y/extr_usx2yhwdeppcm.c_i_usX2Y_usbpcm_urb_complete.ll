; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_urb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_i_usX2Y_usbpcm_urb_complete.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @i_usX2Y_usbpcm_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i_usX2Y_usbpcm_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usX2Y_substream*, align 8
  %4 = alloca %struct.usX2Ydev*, align 8
  %5 = alloca %struct.snd_usX2Y_substream*, align 8
  %6 = alloca %struct.snd_usX2Y_substream*, align 8
  %7 = alloca %struct.snd_usX2Y_substream*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 3
  %10 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %9, align 8
  store %struct.snd_usX2Y_substream* %10, %struct.snd_usX2Y_substream** %3, align 8
  %11 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %11, i32 0, i32 3
  %13 = load %struct.usX2Ydev*, %struct.usX2Ydev** %12, align 8
  store %struct.usX2Ydev* %13, %struct.usX2Ydev** %4, align 8
  %14 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = load i64, i64* @state_PREPARED, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %1
  %23 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %24 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_get_current_frame_number(i32 %25)
  %27 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @usb_pipein(i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i8* %36, i32 %39, i32 %42)
  br label %129

44:                                               ; preds = %1
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %52 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = call i32 @usX2Y_error_urb_status(%struct.usX2Ydev* %51, %struct.snd_usX2Y_substream* %52, %struct.urb* %53)
  br label %129

55:                                               ; preds = %44
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %3, align 8
  %58 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %57, i32 0, i32 1
  store %struct.urb* %56, %struct.urb** %58, align 8
  %59 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %60 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %59, i32 0, i32 1
  %61 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %63 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %61, i64 %62
  %64 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %63, align 8
  store %struct.snd_usX2Y_substream* %64, %struct.snd_usX2Y_substream** %5, align 8
  %65 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %66 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %65, i32 0, i32 1
  %67 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %66, align 8
  %68 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %69 = add i64 %68, 2
  %70 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %67, i64 %69
  %71 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %70, align 8
  store %struct.snd_usX2Y_substream* %71, %struct.snd_usX2Y_substream** %6, align 8
  %72 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %73 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %72, i32 0, i32 1
  %74 = load %struct.snd_usX2Y_substream**, %struct.snd_usX2Y_substream*** %73, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %76 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %74, i64 %75
  %77 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %76, align 8
  store %struct.snd_usX2Y_substream* %77, %struct.snd_usX2Y_substream** %7, align 8
  %78 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %79 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %78, i32 0, i32 1
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = icmp ne %struct.urb* %80, null
  br i1 %81, label %82, label %129

82:                                               ; preds = %55
  %83 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %84 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %83, i32 0, i32 0
  %85 = call i64 @atomic_read(i32* %84)
  %86 = load i64, i64* @state_PREPARED, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %82
  %89 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %90 = icmp eq %struct.snd_usX2Y_substream* null, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %93 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %92, i32 0, i32 1
  %94 = load %struct.urb*, %struct.urb** %93, align 8
  %95 = icmp ne %struct.urb* %94, null
  br i1 %95, label %96, label %129

96:                                               ; preds = %91, %88
  %97 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %98 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %97, i32 0, i32 1
  %99 = load %struct.urb*, %struct.urb** %98, align 8
  %100 = icmp ne %struct.urb* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %103 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %102, i32 0, i32 0
  %104 = call i64 @atomic_read(i32* %103)
  %105 = load i64, i64* @state_PREPARED, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101, %96
  %108 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %5, align 8
  %109 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %6, align 8
  %110 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %7, align 8
  %111 = load %struct.urb*, %struct.urb** %2, align 8
  %112 = getelementptr inbounds %struct.urb, %struct.urb* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @usX2Y_usbpcm_usbframe_complete(%struct.snd_usX2Y_substream* %108, %struct.snd_usX2Y_substream* %109, %struct.snd_usX2Y_substream* %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %107
  %117 = call i64 (...) @nr_of_packs()
  %118 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %119 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  br label %128

124:                                              ; preds = %107
  %125 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.usX2Ydev*, %struct.usX2Ydev** %4, align 8
  %127 = call i32 @usX2Y_clients_stop(%struct.usX2Ydev* %126)
  br label %128

128:                                              ; preds = %124, %116
  br label %129

129:                                              ; preds = %22, %50, %128, %101, %91, %82, %55
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_printdd(i8*, ...) #1

declare dso_local i32 @usb_get_current_frame_number(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usX2Y_error_urb_status(%struct.usX2Ydev*, %struct.snd_usX2Y_substream*, %struct.urb*) #1

declare dso_local i32 @usX2Y_usbpcm_usbframe_complete(%struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream*, i32) #1

declare dso_local i64 @nr_of_packs(...) #1

declare dso_local i32 @usX2Y_clients_stop(%struct.usX2Ydev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
