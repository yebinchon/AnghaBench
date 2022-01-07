; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_complete_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_complete_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.snd_urb_ctx* }
%struct.snd_urb_ctx = type { i32, i32, %struct.snd_usb_endpoint* }
%struct.snd_usb_endpoint = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EP_FLAG_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot submit urb (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @snd_complete_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_complete_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_urb_ctx*, align 8
  %4 = alloca %struct.snd_usb_endpoint*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %9, align 8
  store %struct.snd_urb_ctx* %10, %struct.snd_urb_ctx** %3, align 8
  %11 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %11, i32 0, i32 2
  %13 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %12, align 8
  store %struct.snd_usb_endpoint* %13, %struct.snd_usb_endpoint** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = load %struct.urb*, %struct.urb** %2, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ECONNRESET, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br label %41

41:                                               ; preds = %34, %27, %20, %1
  %42 = phi i1 [ true, %27 ], [ true, %20 ], [ true, %1 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %162

47:                                               ; preds = %41
  %48 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %49 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @atomic_read(i32* %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %162

56:                                               ; preds = %47
  %57 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %58 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %59 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %58, i32 0, i32 3
  %60 = call i32 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %162

67:                                               ; preds = %56
  %68 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @usb_pipeout(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %75 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %76 = call i32 @retire_outbound_urb(%struct.snd_usb_endpoint* %74, %struct.snd_urb_ctx* %75)
  %77 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %78 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %78, i32 0, i32 3
  %80 = call i32 @test_bit(i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %162

87:                                               ; preds = %73
  %88 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %89 = call i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %93 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %92, i32 0, i32 4
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %96, i32 0, i32 1
  %98 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %99 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %98, i32 0, i32 5
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  %101 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %102 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %101, i32 0, i32 4
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %106 = call i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint* %105)
  br label %162

107:                                              ; preds = %87
  %108 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %109 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %110 = call i32 @prepare_outbound_urb(%struct.snd_usb_endpoint* %108, %struct.snd_urb_ctx* %109)
  br label %129

111:                                              ; preds = %67
  %112 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %113 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %114 = call i32 @retire_inbound_urb(%struct.snd_usb_endpoint* %112, %struct.snd_urb_ctx* %113)
  %115 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %116 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %117 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %116, i32 0, i32 3
  %118 = call i32 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %162

125:                                              ; preds = %111
  %126 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %127 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %128 = call i32 @prepare_inbound_urb(%struct.snd_usb_endpoint* %126, %struct.snd_urb_ctx* %127)
  br label %129

129:                                              ; preds = %125, %107
  %130 = load %struct.urb*, %struct.urb** %2, align 8
  %131 = load i32, i32* @GFP_ATOMIC, align 4
  %132 = call i32 @usb_submit_urb(%struct.urb* %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %169

136:                                              ; preds = %129
  %137 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %138 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @usb_audio_err(%struct.TYPE_4__* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %140)
  %142 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %143 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %142, i32 0, i32 1
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = icmp ne %struct.TYPE_3__* %144, null
  br i1 %145, label %146, label %161

146:                                              ; preds = %136
  %147 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %148 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %150, align 8
  %152 = icmp ne %struct.snd_pcm_substream* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %155 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %154, i32 0, i32 1
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %157, align 8
  store %struct.snd_pcm_substream* %158, %struct.snd_pcm_substream** %5, align 8
  %159 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %160 = call i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream* %159)
  br label %161

161:                                              ; preds = %153, %146, %136
  br label %162

162:                                              ; preds = %161, %124, %91, %86, %66, %55, %46
  %163 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %167 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %166, i32 0, i32 0
  %168 = call i32 @clear_bit(i32 %165, i32* %167)
  br label %169

169:                                              ; preds = %162, %135
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @retire_outbound_urb(%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*) #1

declare dso_local i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_pending_output_urbs(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @prepare_outbound_urb(%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*) #1

declare dso_local i32 @retire_inbound_urb(%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*) #1

declare dso_local i32 @prepare_inbound_urb(%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @snd_pcm_stop_xrun(%struct.snd_pcm_substream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
