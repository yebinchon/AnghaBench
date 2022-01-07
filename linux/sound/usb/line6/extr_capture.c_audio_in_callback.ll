; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_audio_in_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_capture.c_audio_in_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i8*, %struct.usb_iso_packet_descriptor*, i32, i64 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32 }
%struct.snd_line6_pcm = type { i32, i8*, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.urb**, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@LINE6_ISO_PACKETS = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"driver and/or device bug: packet too large (%d > %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"The following code assumes LINE6_ISO_PACKETS == 1\00", align 1
@LINE6_STREAM_IMPULSE = common dso_local global i32 0, align 4
@LINE6_STREAM_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @audio_in_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_in_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.snd_line6_pcm*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_line6_pcm*
  store %struct.snd_line6_pcm* %15, %struct.snd_line6_pcm** %8, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %20 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %25 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %24, i32 0, i32 5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %33 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load %struct.urb**, %struct.urb*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.urb*, %struct.urb** %35, i64 %37
  %39 = load %struct.urb*, %struct.urb** %38, align 8
  %40 = icmp eq %struct.urb* %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %46

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %22

46:                                               ; preds = %41, %22
  %47 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %48 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %147, %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %150

56:                                               ; preds = %52
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %59, i64 %61
  store %struct.usb_iso_packet_descriptor* %62, %struct.usb_iso_packet_descriptor** %11, align 8
  %63 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %64 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EXDEV, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %150

70:                                               ; preds = %56
  %71 = load %struct.urb*, %struct.urb** %2, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %75 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8* %78, i8** %9, align 8
  %79 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %11, align 8
  %80 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %84 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %70
  %88 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %89 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %88, i32 0, i32 5
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %95 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %87, %70
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @LINE6_ISO_PACKETS, align 4
  %103 = icmp ne i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUILD_BUG_ON_MSG(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i8*, i8** %9, align 8
  %107 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %108 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %111 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %110, i32 0, i32 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %116 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %115, i32 0, i32 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %114, %120
  %122 = sdiv i32 %109, %121
  %123 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %124 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @LINE6_STREAM_IMPULSE, align 4
  %126 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %127 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = call i64 @test_bit(i32 %125, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %98
  %132 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %133 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %134 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = call i64 @test_bit(i32 %132, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %131
  %139 = load i32, i32* %10, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @line6_capture_copy(%struct.snd_line6_pcm* %142, i8* %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %138, %131, %98
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %3, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %3, align 4
  br label %52

150:                                              ; preds = %69, %52
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %153 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = call i32 @clear_bit(i32 %151, i32* %154)
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %158 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = call i64 @test_and_clear_bit(i32 %156, i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %150
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %187, label %166

166:                                              ; preds = %163
  %167 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %168 = call i32 @submit_audio_in_urb(%struct.snd_line6_pcm* %167)
  %169 = load i32, i32* @LINE6_STREAM_IMPULSE, align 4
  %170 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %171 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = call i64 @test_bit(i32 %169, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %166
  %176 = load i32, i32* @LINE6_STREAM_PCM, align 4
  %177 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %178 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = call i64 @test_bit(i32 %176, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @line6_capture_check_period(%struct.snd_line6_pcm* %183, i32 %184)
  br label %186

186:                                              ; preds = %182, %175, %166
  br label %187

187:                                              ; preds = %186, %163
  %188 = load %struct.snd_line6_pcm*, %struct.snd_line6_pcm** %8, align 8
  %189 = getelementptr inbounds %struct.snd_line6_pcm, %struct.snd_line6_pcm* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i64, i64* %7, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @line6_capture_copy(%struct.snd_line6_pcm*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @submit_audio_in_urb(%struct.snd_line6_pcm*) #1

declare dso_local i32 @line6_capture_check_period(%struct.snd_line6_pcm*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
