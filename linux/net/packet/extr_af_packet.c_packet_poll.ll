; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.packet_sock = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@TP_STATUS_KERNEL = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@TP_STATUS_AVAILABLE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.socket*, i32*)* @packet_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_poll(%struct.file* %0, %struct.socket* %1, i32* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.packet_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = call %struct.packet_sock* @pkt_sk(%struct.sock* %13)
  store %struct.packet_sock* %14, %struct.packet_sock** %8, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @datagram_poll(%struct.file* %15, %struct.socket* %16, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %24 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %3
  %29 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %30 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %31 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %30, i32 0, i32 1
  %32 = load i32, i32* @TP_STATUS_KERNEL, align 4
  %33 = call i32 @packet_previous_rx_frame(%struct.packet_sock* %29, %struct.TYPE_7__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EPOLLIN, align 4
  %37 = load i32, i32* @EPOLLRDNORM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %28
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %44 = call i32 @packet_rcv_try_clear_pressure(%struct.packet_sock* %43)
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load %struct.sock*, %struct.sock** %7, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %54 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %42
  %59 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %60 = load %struct.packet_sock*, %struct.packet_sock** %8, align 8
  %61 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %60, i32 0, i32 0
  %62 = load i32, i32* @TP_STATUS_AVAILABLE, align 4
  %63 = call i64 @packet_current_frame(%struct.packet_sock* %59, %struct.TYPE_8__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @EPOLLOUT, align 4
  %67 = load i32, i32* @EPOLLWRNORM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.sock*, %struct.sock** %7, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local %struct.packet_sock* @pkt_sk(%struct.sock*) #1

declare dso_local i32 @datagram_poll(%struct.file*, %struct.socket*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @packet_previous_rx_frame(%struct.packet_sock*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @packet_rcv_try_clear_pressure(%struct.packet_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @packet_current_frame(%struct.packet_sock*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
