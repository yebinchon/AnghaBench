; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_cleanup_listen.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_cleanup_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.l2cap_chan = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.sock* }

@.str = private unnamed_addr constant [19 x i8] c"parent %p state %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"child chan %p state %s\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @l2cap_sock_cleanup_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_cleanup_listen(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.l2cap_chan*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @state_to_string(i32 %8)
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.sock* %5, i32 %9)
  br label %11

11:                                               ; preds = %15, %1
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call %struct.sock* @bt_accept_dequeue(%struct.sock* %12, i32* null)
  store %struct.sock* %13, %struct.sock** %3, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = bitcast %struct.sock* %19 to %struct.l2cap_chan*
  store %struct.l2cap_chan* %20, %struct.l2cap_chan** %4, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %22 = bitcast %struct.l2cap_chan* %21 to %struct.sock*
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @state_to_string(i32 %25)
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %22, i32 %26)
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %29 = bitcast %struct.l2cap_chan* %28 to %struct.sock*
  %30 = call i32 @l2cap_chan_lock(%struct.sock* %29)
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %32 = bitcast %struct.l2cap_chan* %31 to %struct.sock*
  %33 = call i32 @__clear_chan_timer(%struct.sock* %32)
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %35 = bitcast %struct.l2cap_chan* %34 to %struct.sock*
  %36 = load i32, i32* @ECONNRESET, align 4
  %37 = call i32 @l2cap_chan_close(%struct.sock* %35, i32 %36)
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %39 = bitcast %struct.l2cap_chan* %38 to %struct.sock*
  %40 = call i32 @l2cap_chan_unlock(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call i32 @l2cap_sock_kill(%struct.sock* %41)
  br label %11

43:                                               ; preds = %11
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @state_to_string(i32) #1

declare dso_local %struct.sock* @bt_accept_dequeue(%struct.sock*, i32*) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.sock*) #1

declare dso_local i32 @__clear_chan_timer(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_close(%struct.sock*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.sock*) #1

declare dso_local i32 @l2cap_sock_kill(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
