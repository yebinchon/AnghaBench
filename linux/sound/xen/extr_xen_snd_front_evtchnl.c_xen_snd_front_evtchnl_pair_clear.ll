; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_pair_clear.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_xen_snd_front_evtchnl_pair_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl_pair = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_snd_front_evtchnl_pair_clear(%struct.xen_snd_front_evtchnl_pair* %0) #0 {
  %2 = alloca %struct.xen_snd_front_evtchnl_pair*, align 8
  store %struct.xen_snd_front_evtchnl_pair* %0, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %3 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %4 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %8 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %11 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %15 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %19 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.xen_snd_front_evtchnl_pair*, %struct.xen_snd_front_evtchnl_pair** %2, align 8
  %22 = getelementptr inbounds %struct.xen_snd_front_evtchnl_pair, %struct.xen_snd_front_evtchnl_pair* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
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
