; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xensnd_req = type { i32 }

@XENSND_OP_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_stream_close(%struct.xen_snd_front_evtchnl* %0) #0 {
  %2 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %3 = alloca %struct.xensnd_req*, align 8
  %4 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %2, align 8
  %5 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %6 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %11 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %14 = load i32, i32* @XENSND_OP_CLOSE, align 4
  %15 = call %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl* %13, i32 %14)
  store %struct.xensnd_req* %15, %struct.xensnd_req** %3, align 8
  %16 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %17 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %16, i32 0, i32 1
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %20 = call i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %25 = call i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %2, align 8
  %28 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl*) #1

declare dso_local i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
