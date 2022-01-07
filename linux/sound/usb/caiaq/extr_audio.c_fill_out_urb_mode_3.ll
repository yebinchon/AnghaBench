; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_fill_out_urb_mode_3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_fill_out_urb_mode_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32*, i32*, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.urb = type { i8* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }

@CHANNELS_PER_STREAM = common dso_local global i32 0, align 4
@BYTES_PER_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @fill_out_urb_mode_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_out_urb_mode_3(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcm_substream*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  store i8* %23, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %153, %3
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %27 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %154

30:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %150, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %34 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %153

37:                                               ; preds = %31
  %38 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %39 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %38, i32 0, i32 3
  %40 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %40, i64 %42
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %43, align 8
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %46 = icmp ne %struct.snd_pcm_substream* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %49, align 8
  store %struct.snd_pcm_runtime* %50, %struct.snd_pcm_runtime** %15, align 8
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %11, align 8
  %54 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %55 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %54, i32 %57)
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %47, %37
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %146, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %149

64:                                               ; preds = %60
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %116, %64
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %119

69:                                               ; preds = %65
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %75 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %73, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  store i8 %84, i8* %90, align 1
  %91 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %92 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %72
  %101 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %102 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %72
  br label %115

108:                                              ; preds = %69
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %108, %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %65

119:                                              ; preds = %65
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %124 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %125 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %123
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %122, %119
  %133 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = shl i32 %136, 1
  %138 = load i32, i32* %12, align 4
  %139 = or i32 %137, %138
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  store i8 %140, i8* %145, align 1
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %60

149:                                              ; preds = %60
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %31

153:                                              ; preds = %31
  br label %24

154:                                              ; preds = %24
  ret void
}

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
