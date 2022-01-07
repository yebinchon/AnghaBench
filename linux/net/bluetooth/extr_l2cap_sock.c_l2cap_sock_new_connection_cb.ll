; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_new_connection_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_new_connection_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_2__ = type { %struct.l2cap_chan* }

@.str = private unnamed_addr constant [16 x i8] c"backlog full %d\00", align 1
@BTPROTO_L2CAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* (%struct.l2cap_chan*)* @l2cap_sock_new_connection_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @l2cap_sock_new_connection_cb(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call i32 @lock_sock(%struct.sock* %9)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i64 @sk_acceptq_is_full(%struct.sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i32 @release_sock(%struct.sock* %19)
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %2, align 8
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i32 @sock_net(%struct.sock* %22)
  %24 = load i32, i32* @BTPROTO_L2CAP, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.sock* @l2cap_sock_alloc(i32 %23, i32* null, i32 %24, i32 %25, i32 0)
  store %struct.sock* %26, %struct.sock** %4, align 8
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = call i32 @release_sock(%struct.sock* %30)
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %2, align 8
  br label %48

32:                                               ; preds = %21
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = load i32, i32* @BTPROTO_L2CAP, align 4
  %35 = call i32 @bt_sock_reclassify_lock(%struct.sock* %33, i32 %34)
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @l2cap_sock_init(%struct.sock* %36, %struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @bt_accept_enqueue(%struct.sock* %39, %struct.sock* %40, i32 0)
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = call i32 @release_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %46, align 8
  store %struct.l2cap_chan* %47, %struct.l2cap_chan** %2, align 8
  br label %48

48:                                               ; preds = %32, %29, %14
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  ret %struct.l2cap_chan* %49
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sock* @l2cap_sock_alloc(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @bt_sock_reclassify_lock(%struct.sock*, i32) #1

declare dso_local i32 @l2cap_sock_init(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @bt_accept_enqueue(%struct.sock*, %struct.sock*, i32) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
