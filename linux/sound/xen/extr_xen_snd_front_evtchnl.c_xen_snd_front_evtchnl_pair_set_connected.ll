; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_pair_set_connected.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_pair_set_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl_pair = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EVTCHNL_STATE_CONNECTED = common dso_local global i32 0, align 4
@EVTCHNL_STATE_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_snd_front_evtchnl_pair_set_connected(%struct.xen_snd_front_evtchnl_pair* %0, i32 %1) #0 {
  %3 = alloca %struct.xen_snd_front_evtchnl_pair*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xen_snd_front_evtchnl_pair* %0, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EVTCHNL_STATE_CONNECTED, align 4
  store i32 %9, i32* %5, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EVTCHNL_STATE_DISCONNECTED, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %14 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %19 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %22 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %26 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %31 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %3, align 8
  %34 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
