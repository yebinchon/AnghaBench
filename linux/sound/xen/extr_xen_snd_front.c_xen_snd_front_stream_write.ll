; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_xen_snd_front_stream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.xensnd_req = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@XENSND_OP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_snd_front_stream_write(%struct.xen_snd_front_evtchnl* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xensnd_req*, align 8
  %8 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl* %0, %struct.xen_snd_front_evtchnl** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %10 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %15 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %18 = load i32, i32* @XENSND_OP_WRITE, align 4
  %19 = call %struct.xensnd_req* @be_stream_prepare_req(%struct.xen_snd_front_evtchnl* %17, i32 %18)
  store %struct.xensnd_req* %19, %struct.xensnd_req** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.xensnd_req*, %struct.xensnd_req** %7, align 8
  %22 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 %20, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.xensnd_req*, %struct.xensnd_req** %7, align 8
  %27 = getelementptr inbounds %struct.xensnd_req, %struct.xensnd_req* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i64 %25, i64* %29, align 8
  %30 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %31 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %34 = call i32 @be_stream_do_io(%struct.xen_snd_front_evtchnl* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %39 = call i32 @be_stream_wait_io(%struct.xen_snd_front_evtchnl* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %3
  %41 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %4, align 8
  %42 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
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
