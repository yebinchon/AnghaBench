; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.rfcomm_dlc = type { %struct.sock* }
%struct.TYPE_2__ = type { %struct.rfcomm_dlc* }

@.str = private unnamed_addr constant [13 x i8] c"sk %p dlc %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @rfcomm_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %6, align 8
  store %struct.rfcomm_dlc* %7, %struct.rfcomm_dlc** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.sock* %8, %struct.rfcomm_dlc* %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = call i32 @skb_queue_purge(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %18 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.rfcomm_dlc* null, %struct.rfcomm_dlc** %21, align 8
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %23 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %22, i32 0, i32 0
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = icmp eq %struct.sock* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %28, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %32 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %31)
  %33 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %34 = call i32 @rfcomm_dlc_put(%struct.rfcomm_dlc* %33)
  ret void
}

declare dso_local %struct.TYPE_2__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, %struct.rfcomm_dlc*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_put(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
