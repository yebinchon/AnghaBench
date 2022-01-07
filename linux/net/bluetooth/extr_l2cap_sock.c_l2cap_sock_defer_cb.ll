; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_defer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_defer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)* }
%struct.TYPE_2__ = type { %struct.sock* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_sock_defer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_defer_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call i32 @lock_sock(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %3, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = icmp ne %struct.sock* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = call i32 %19(%struct.sock* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @release_sock(%struct.sock* %23)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
