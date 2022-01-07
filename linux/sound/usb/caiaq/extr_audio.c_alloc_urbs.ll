; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i32, i32*, %struct.usb_device*, %struct.usb_iso_packet_descriptor*, i8* }
%struct.usb_device = type { i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32 }
%struct.snd_usb_caiaqdev = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_device* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@ENDPOINT_PLAYBACK = common dso_local global i32 0, align 4
@ENDPOINT_CAPTURE = common dso_local global i32 0, align 4
@N_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FRAMES_PER_URB = common dso_local global i32 0, align 4
@BYTES_PER_FRAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@read_completed = common dso_local global i32 0, align 4
@write_completed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb** (%struct.snd_usb_caiaqdev*, i32, i32*)* @alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb** @alloc_urbs(%struct.snd_usb_caiaqdev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.urb**, align 8
  %5 = alloca %struct.snd_usb_caiaqdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb**, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %15 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %23 = load i32, i32* @ENDPOINT_PLAYBACK, align 4
  %24 = call i32 @usb_sndisocpipe(%struct.usb_device* %22, i32 %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %27 = load i32, i32* @ENDPOINT_CAPTURE, align 4
  %28 = call i32 @usb_rcvisocpipe(%struct.usb_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @N_URBS, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc_array(i32 %31, i32 8, i32 %32)
  %34 = bitcast i8* %33 to %struct.urb**
  store %struct.urb** %34, %struct.urb*** %10, align 8
  %35 = load %struct.urb**, %struct.urb*** %10, align 8
  %36 = icmp ne %struct.urb** %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store %struct.urb** null, %struct.urb*** %4, align 8
  br label %186

41:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %180, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @N_URBS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %183

46:                                               ; preds = %42
  %47 = load i32, i32* @FRAMES_PER_URB, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.urb* @usb_alloc_urb(i32 %47, i32 %48)
  %50 = load %struct.urb**, %struct.urb*** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.urb*, %struct.urb** %50, i64 %52
  store %struct.urb* %49, %struct.urb** %53, align 8
  %54 = load %struct.urb**, %struct.urb*** %10, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.urb*, %struct.urb** %54, i64 %56
  %58 = load %struct.urb*, %struct.urb** %57, align 8
  %59 = icmp ne %struct.urb* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %64, %struct.urb*** %4, align 8
  br label %186

65:                                               ; preds = %46
  %66 = load i32, i32* @BYTES_PER_FRAME, align 4
  %67 = load i32, i32* @FRAMES_PER_URB, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmalloc_array(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.urb**, %struct.urb*** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.urb*, %struct.urb** %70, i64 %72
  %74 = load %struct.urb*, %struct.urb** %73, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 8
  store i8* %69, i8** %75, align 8
  %76 = load %struct.urb**, %struct.urb*** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.urb*, %struct.urb** %76, i64 %78
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %65
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %88, %struct.urb*** %4, align 8
  br label %186

89:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %113, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @FRAMES_PER_URB, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.urb**, %struct.urb*** %10, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.urb*, %struct.urb** %95, i64 %97
  %99 = load %struct.urb*, %struct.urb** %98, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 7
  %101 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %101, i64 %103
  store %struct.usb_iso_packet_descriptor* %104, %struct.usb_iso_packet_descriptor** %13, align 8
  %105 = load i32, i32* @BYTES_PER_FRAME, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %109 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @BYTES_PER_FRAME, align 4
  %111 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %112 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %94
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %90

116:                                              ; preds = %90
  %117 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %118 = load %struct.urb**, %struct.urb*** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.urb*, %struct.urb** %118, i64 %120
  %122 = load %struct.urb*, %struct.urb** %121, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 6
  store %struct.usb_device* %117, %struct.usb_device** %123, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.urb**, %struct.urb*** %10, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.urb*, %struct.urb** %125, i64 %127
  %129 = load %struct.urb*, %struct.urb** %128, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 0
  store i32 %124, i32* %130, align 8
  %131 = load i32, i32* @FRAMES_PER_URB, align 4
  %132 = load i32, i32* @BYTES_PER_FRAME, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load %struct.urb**, %struct.urb*** %10, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.urb*, %struct.urb** %134, i64 %136
  %138 = load %struct.urb*, %struct.urb** %137, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 1
  store i32 %133, i32* %139, align 4
  %140 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %5, align 8
  %141 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load %struct.urb**, %struct.urb*** %10, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.urb*, %struct.urb** %146, i64 %148
  %150 = load %struct.urb*, %struct.urb** %149, align 8
  %151 = getelementptr inbounds %struct.urb, %struct.urb* %150, i32 0, i32 5
  store i32* %145, i32** %151, align 8
  %152 = load %struct.urb**, %struct.urb*** %10, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.urb*, %struct.urb** %152, i64 %154
  %156 = load %struct.urb*, %struct.urb** %155, align 8
  %157 = getelementptr inbounds %struct.urb, %struct.urb* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load i32, i32* @FRAMES_PER_URB, align 4
  %159 = load %struct.urb**, %struct.urb*** %10, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.urb*, %struct.urb** %159, i64 %161
  %163 = load %struct.urb*, %struct.urb** %162, align 8
  %164 = getelementptr inbounds %struct.urb, %struct.urb* %163, i32 0, i32 3
  store i32 %158, i32* %164, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %116
  %169 = load i32, i32* @read_completed, align 4
  br label %172

170:                                              ; preds = %116
  %171 = load i32, i32* @write_completed, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  %174 = load %struct.urb**, %struct.urb*** %10, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.urb*, %struct.urb** %174, i64 %176
  %178 = load %struct.urb*, %struct.urb** %177, align 8
  %179 = getelementptr inbounds %struct.urb, %struct.urb* %178, i32 0, i32 4
  store i32 %173, i32* %179, align 8
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %42

183:                                              ; preds = %42
  %184 = load i32*, i32** %7, align 8
  store i32 0, i32* %184, align 4
  %185 = load %struct.urb**, %struct.urb*** %10, align 8
  store %struct.urb** %185, %struct.urb*** %4, align 8
  br label %186

186:                                              ; preds = %183, %84, %60, %37
  %187 = load %struct.urb**, %struct.urb*** %4, align 8
  ret %struct.urb** %187
}

declare dso_local i32 @usb_sndisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
