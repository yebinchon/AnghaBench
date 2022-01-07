; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_ready_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_ready_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32 (%struct.sock*)*, i32 }
%struct.TYPE_2__ = type { %struct.sock* }

@.str = private unnamed_addr constant [17 x i8] c"sk %p, parent %p\00", align 1
@BT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_sock_ready_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_ready_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call i32 @lock_sock(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sock* %14, %struct.sock* %15)
  %17 = load i32, i32* @BT_CONNECTED, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sock*, %struct.sock** %3, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %21, align 8
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 %22(%struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %29, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 %30(%struct.sock* %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @release_sock(%struct.sock* %34)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, %struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
