; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfcomm_dlc_free(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %3 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %4 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %3)
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %6 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %5, i32 0, i32 0
  %7 = call i32 @skb_queue_purge(i32* %6)
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %9 = call i32 @kfree(%struct.rfcomm_dlc* %8)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
