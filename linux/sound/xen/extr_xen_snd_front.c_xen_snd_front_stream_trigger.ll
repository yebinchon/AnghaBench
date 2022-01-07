; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.xensnd_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@XENSND_OP_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_stream_trigger(%struct.xen_snd_front_evtchnl* %0, i32 %1) #0 {
  %3 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xensnd_req*, align 8
  %6 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %8 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %13 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %16 = load i32, i32* @XENSND_OP_TRIGGER, align 4
  %17 = call %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl* %15, i32 %16)
  store %struct.xensnd_req* %17, %struct.xensnd_req** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.xensnd_req*, %struct.xensnd_req** %5, align 8
  %20 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %24 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %27 = call i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %32 = call i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %3, align 8
  %35 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
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
