; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_be_stream_wait_io.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_be_stream_wait_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@VSND_WAIT_BACK_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xen_snd_front_evtchnl*)* @be_stream_wait_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_snd_front_evtchnl*, align 8
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %3, align 8
  %4 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %5 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* @VSND_WAIT_BACK_MS, align 4
  %9 = call i32 @msecs_to_jiffies(i32 %8)
  %10 = call i64 @wait_for_completion_timeout(i32* %7, i32 %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ETIMEDOUT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %17 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
