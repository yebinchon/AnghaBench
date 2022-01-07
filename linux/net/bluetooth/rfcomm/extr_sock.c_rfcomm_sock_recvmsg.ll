; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_sock.c_rfcomm_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.rfcomm_dlc = type { i32 }
%struct.TYPE_2__ = type { %struct.rfcomm_dlc* }

@RFCOMM_DEFER_SETUP = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @rfcomm_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.rfcomm_dlc*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %18, align 8
  store %struct.rfcomm_dlc* %19, %struct.rfcomm_dlc** %11, align 8
  %20 = load i32, i32* @RFCOMM_DEFER_SETUP, align 4
  %21 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %11, align 8
  %22 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %21, i32 0, i32 0
  %23 = call i64 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %11, align 8
  %27 = call i32 @rfcomm_dlc_accept(%struct.rfcomm_dlc* %26)
  store i32 0, i32* %5, align 4
  br label %67

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @bt_sock_stream_recvmsg(%struct.socket* %29, %struct.msghdr* %30, i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MSG_PEEK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  %47 = call i32 @atomic_sub(i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %43, %40, %28
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = call i32 @atomic_read(i32* %50)
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 2
  %56 = icmp sle i32 %51, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.sock*, %struct.sock** %10, align 8
  %59 = call %struct.TYPE_2__* @rfcomm_pi(%struct.sock* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %60, align 8
  %62 = call i32 @rfcomm_dlc_unthrottle(%struct.rfcomm_dlc* %61)
  br label %63

63:                                               ; preds = %57, %48
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = call i32 @release_sock(%struct.sock* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %25
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_2__* @rfcomm_pi(%struct.sock*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_accept(%struct.rfcomm_dlc*) #1

declare dso_local i32 @bt_sock_stream_recvmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rfcomm_dlc_unthrottle(%struct.rfcomm_dlc*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
