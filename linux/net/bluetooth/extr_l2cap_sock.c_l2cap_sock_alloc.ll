; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.l2cap_chan = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.l2cap_chan* }

@PF_BLUETOOTH = common dso_local global i32 0, align 4
@l2cap_proto = common dso_local global i32 0, align 4
@l2cap_sock_destruct = common dso_local global i32 0, align 4
@L2CAP_CONN_TIMEOUT = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*, i32, i32, i32)* @l2cap_sock_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @l2cap_sock_alloc(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.l2cap_chan*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.socket* %1, %struct.socket** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = load i32, i32* @PF_BLUETOOTH, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.sock* @sk_alloc(%struct.net* %14, i32 %15, i32 %16, i32* @l2cap_proto, i32 %17)
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %12, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %59

22:                                               ; preds = %5
  %23 = load %struct.socket*, %struct.socket** %8, align 8
  %24 = load %struct.sock*, %struct.sock** %12, align 8
  %25 = call i32 @sock_init_data(%struct.socket* %23, %struct.sock* %24)
  %26 = load %struct.sock*, %struct.sock** %12, align 8
  %27 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* @l2cap_sock_destruct, align 4
  %31 = load %struct.sock*, %struct.sock** %12, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @L2CAP_CONN_TIMEOUT, align 4
  %34 = load %struct.sock*, %struct.sock** %12, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sock*, %struct.sock** %12, align 8
  %37 = load i32, i32* @SOCK_ZAPPED, align 4
  %38 = call i32 @sock_reset_flag(%struct.sock* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sock*, %struct.sock** %12, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @BT_OPEN, align 4
  %43 = load %struct.sock*, %struct.sock** %12, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = call %struct.l2cap_chan* (...) @l2cap_chan_create()
  store %struct.l2cap_chan* %45, %struct.l2cap_chan** %13, align 8
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %47 = icmp ne %struct.l2cap_chan* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %22
  %49 = load %struct.sock*, %struct.sock** %12, align 8
  %50 = call i32 @sk_free(%struct.sock* %49)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %59

51:                                               ; preds = %22
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %53 = call i32 @l2cap_chan_hold(%struct.l2cap_chan* %52)
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %55 = load %struct.sock*, %struct.sock** %12, align 8
  %56 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store %struct.l2cap_chan* %54, %struct.l2cap_chan** %57, align 8
  %58 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %58, %struct.sock** %6, align 8
  br label %59

59:                                               ; preds = %51, %48, %21
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %60
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_chan_create(...) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_hold(%struct.l2cap_chan*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
