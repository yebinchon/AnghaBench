; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_capture_urb_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_capture_urb_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.TYPE_4__*, i32, %struct.ua101* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.ua101 = type { i32, i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.ua101_stream }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ua101_stream = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@ALSA_CAPTURE_RUNNING = common dso_local global i32 0, align 4
@USB_CAPTURE_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"USB request error %d: %s\0A\00", align 1
@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @capture_urb_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capture_urb_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca %struct.ua101_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load %struct.ua101*, %struct.ua101** %11, align 8
  store %struct.ua101* %12, %struct.ua101** %3, align 8
  %13 = load %struct.ua101*, %struct.ua101** %3, align 8
  %14 = getelementptr inbounds %struct.ua101, %struct.ua101* %13, i32 0, i32 10
  store %struct.ua101_stream* %14, %struct.ua101_stream** %4, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %1
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load %struct.urb*, %struct.urb** %2, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ECONNRESET, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.urb*, %struct.urb** %2, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ESHUTDOWN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br label %42

42:                                               ; preds = %35, %28, %21, %1
  %43 = phi i1 [ true, %28 ], [ true, %21 ], [ true, %1 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %198

48:                                               ; preds = %42
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.urb*, %struct.urb** %2, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %69 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = udiv i32 %67, %70
  store i32 %71, i32* %6, align 4
  br label %73

72:                                               ; preds = %53, %48
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.ua101*, %struct.ua101** %3, align 8
  %75 = getelementptr inbounds %struct.ua101, %struct.ua101* %74, i32 0, i32 3
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp ugt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i32, i32* @ALSA_CAPTURE_RUNNING, align 4
  %82 = load %struct.ua101*, %struct.ua101** %3, align 8
  %83 = getelementptr inbounds %struct.ua101, %struct.ua101* %82, i32 0, i32 6
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %88 = load %struct.urb*, %struct.urb** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @copy_capture_data(%struct.ua101_stream* %87, %struct.urb* %88, i32 %89)
  store i32 %90, i32* %8, align 4
  br label %92

91:                                               ; preds = %80, %73
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %86
  %93 = load i32, i32* @USB_CAPTURE_RUNNING, align 4
  %94 = load %struct.ua101*, %struct.ua101** %3, align 8
  %95 = getelementptr inbounds %struct.ua101, %struct.ua101* %94, i32 0, i32 6
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %185

98:                                               ; preds = %92
  %99 = load %struct.urb*, %struct.urb** %2, align 8
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call i32 @usb_submit_urb(%struct.urb* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %98
  %108 = load %struct.ua101*, %struct.ua101** %3, align 8
  %109 = getelementptr inbounds %struct.ua101, %struct.ua101* %108, i32 0, i32 3
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.ua101*, %struct.ua101** %3, align 8
  %113 = getelementptr inbounds %struct.ua101, %struct.ua101* %112, i32 0, i32 9
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @usb_error_string(i32 %117)
  %119 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %118)
  br label %198

120:                                              ; preds = %98
  %121 = load %struct.ua101*, %struct.ua101** %3, align 8
  %122 = getelementptr inbounds %struct.ua101, %struct.ua101* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %7, align 4
  %124 = load %struct.ua101*, %struct.ua101** %3, align 8
  %125 = load %struct.ua101*, %struct.ua101** %3, align 8
  %126 = getelementptr inbounds %struct.ua101, %struct.ua101* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @add_with_wraparound(%struct.ua101* %124, i32* %7, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.ua101*, %struct.ua101** %3, align 8
  %131 = getelementptr inbounds %struct.ua101, %struct.ua101* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.ua101*, %struct.ua101** %3, align 8
  %137 = getelementptr inbounds %struct.ua101, %struct.ua101* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.ua101*, %struct.ua101** %3, align 8
  %141 = getelementptr inbounds %struct.ua101, %struct.ua101* %140, i32 0, i32 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %139, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %120
  %146 = load %struct.ua101*, %struct.ua101** %3, align 8
  %147 = getelementptr inbounds %struct.ua101, %struct.ua101* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ua101*, %struct.ua101** %3, align 8
  %151 = getelementptr inbounds %struct.ua101, %struct.ua101* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.ua101*, %struct.ua101** %3, align 8
  %155 = getelementptr inbounds %struct.ua101, %struct.ua101* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %153, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %145
  %160 = load %struct.ua101*, %struct.ua101** %3, align 8
  %161 = getelementptr inbounds %struct.ua101, %struct.ua101* %160, i32 0, i32 7
  %162 = call i32 @wake_up(i32* %161)
  br label %163

163:                                              ; preds = %159, %145
  br label %169

164:                                              ; preds = %120
  %165 = load %struct.ua101*, %struct.ua101** %3, align 8
  %166 = load %struct.ua101*, %struct.ua101** %3, align 8
  %167 = getelementptr inbounds %struct.ua101, %struct.ua101* %166, i32 0, i32 0
  %168 = call i32 @add_with_wraparound(%struct.ua101* %165, i32* %167, i32 1)
  br label %169

169:                                              ; preds = %164, %163
  %170 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %171 = load %struct.ua101*, %struct.ua101** %3, align 8
  %172 = getelementptr inbounds %struct.ua101, %struct.ua101* %171, i32 0, i32 6
  %173 = call i64 @test_bit(i32 %170, i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %169
  %176 = load %struct.ua101*, %struct.ua101** %3, align 8
  %177 = getelementptr inbounds %struct.ua101, %struct.ua101* %176, i32 0, i32 5
  %178 = call i32 @list_empty(i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %175
  %181 = load %struct.ua101*, %struct.ua101** %3, align 8
  %182 = getelementptr inbounds %struct.ua101, %struct.ua101* %181, i32 0, i32 4
  %183 = call i32 @tasklet_schedule(i32* %182)
  br label %184

184:                                              ; preds = %180, %175, %169
  br label %185

185:                                              ; preds = %184, %92
  %186 = load %struct.ua101*, %struct.ua101** %3, align 8
  %187 = getelementptr inbounds %struct.ua101, %struct.ua101* %186, i32 0, i32 3
  %188 = load i64, i64* %5, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load %struct.ua101_stream*, %struct.ua101_stream** %4, align 8
  %194 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @snd_pcm_period_elapsed(i32 %195)
  br label %197

197:                                              ; preds = %192, %185
  br label %207

198:                                              ; preds = %107, %47
  %199 = load %struct.ua101*, %struct.ua101** %3, align 8
  %200 = call i32 @abort_usb_playback(%struct.ua101* %199)
  %201 = load %struct.ua101*, %struct.ua101** %3, align 8
  %202 = call i32 @abort_usb_capture(%struct.ua101* %201)
  %203 = load %struct.ua101*, %struct.ua101** %3, align 8
  %204 = call i32 @abort_alsa_playback(%struct.ua101* %203)
  %205 = load %struct.ua101*, %struct.ua101** %3, align 8
  %206 = call i32 @abort_alsa_capture(%struct.ua101* %205)
  br label %207

207:                                              ; preds = %198, %197
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @copy_capture_data(%struct.ua101_stream*, %struct.urb*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_error_string(i32) #1

declare dso_local i32 @add_with_wraparound(%struct.ua101*, i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

declare dso_local i32 @abort_usb_playback(%struct.ua101*) #1

declare dso_local i32 @abort_usb_capture(%struct.ua101*) #1

declare dso_local i32 @abort_alsa_playback(%struct.ua101*) #1

declare dso_local i32 @abort_alsa_capture(%struct.ua101*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
