; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_read_in_urb_mode3.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_read_in_urb_mode3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32, i32, i32*, i32*, i64, %struct.snd_pcm_substream** }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i8*, i32 }
%struct.urb = type { i8* }
%struct.usb_iso_packet_descriptor = type { i32, i32 }
%struct.device = type { i32 }

@BYTES_PER_SAMPLE_USB = common dso_local global i32 0, align 4
@CHANNELS_PER_STREAM = common dso_local global i32 0, align 4
@BYTES_PER_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c" EXPECTED: %02x got %02x, c %d, stream %d, i %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.usb_iso_packet_descriptor*)* @read_in_urb_mode3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_in_urb_mode3(%struct.snd_usb_caiaqdev* %0, %struct.urb* %1, %struct.usb_iso_packet_descriptor* %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_pcm_substream*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store %struct.usb_iso_packet_descriptor* %2, %struct.usb_iso_packet_descriptor** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %7, align 8
  %25 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %26 = call %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev* %25)
  store %struct.device* %26, %struct.device** %8, align 8
  %27 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %28 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BYTES_PER_SAMPLE_USB, align 4
  %31 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %32 = mul nsw i32 %30, %31
  %33 = srem i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %203

36:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %192, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %6, align 8
  %40 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %193

43:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %189, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %47 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %192

50:                                               ; preds = %44
  %51 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %51, i32 0, i32 5
  %53 = load %struct.snd_pcm_substream**, %struct.snd_pcm_substream*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %53, i64 %55
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %56, align 8
  store %struct.snd_pcm_substream* %57, %struct.snd_pcm_substream** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %15, align 4
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %59 = icmp ne %struct.snd_pcm_substream* %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %62 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60
  %66 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %11, align 8
  %67 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %66, i32 0, i32 0
  %68 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %67, align 8
  store %struct.snd_pcm_runtime* %68, %struct.snd_pcm_runtime** %16, align 8
  %69 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %70 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %12, align 8
  %72 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %16, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @frames_to_bytes(%struct.snd_pcm_runtime* %72, i32 %75)
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %65, %60, %50
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %185, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @CHANNELS_PER_STREAM, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %188

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %139

85:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %126, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %100 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %98, i64 %107
  store i8 %97, i8* %108, align 1
  %109 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %110 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %90
  %119 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %120 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %90
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %86

129:                                              ; preds = %86
  %130 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %131 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %132 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %130
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %129, %82
  %140 = load i32, i32* @BYTES_PER_SAMPLE, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32, i32* %9, align 4
  %150 = shl i32 %149, 1
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %150, %151
  %153 = icmp ne i32 %148, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %139
  %155 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %156 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %182, label %159

159:                                              ; preds = %154
  %160 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %161 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %179, label %164

164:                                              ; preds = %159
  %165 = load %struct.device*, %struct.device** %8, align 8
  %166 = load i32, i32* %9, align 4
  %167 = shl i32 %166, 1
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %167, %168
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @dev_warn(%struct.device* %165, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %169, i8 zeroext %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %164, %159
  %180 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %181 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %154, %139
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  br label %78

188:                                              ; preds = %78
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %44

192:                                              ; preds = %44
  br label %37

193:                                              ; preds = %37
  %194 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %195 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %200 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, -1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %35, %198, %193
  ret void
}

declare dso_local %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev*) #1

declare dso_local i32 @frames_to_bytes(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i8 zeroext, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
