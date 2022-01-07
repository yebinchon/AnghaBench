; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32 }
%struct.sco_pinfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_SK_DEFER_SETUP = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @sco_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sco_pinfo*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %10, align 8
  %15 = load %struct.sock*, %struct.sock** %10, align 8
  %16 = call %struct.sco_pinfo* @sco_pi(%struct.sock* %15)
  store %struct.sco_pinfo* %16, %struct.sco_pinfo** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %10, align 8
  %18 = call i32 @lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %10, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BT_CONNECT2, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %4
  %25 = load i32, i32* @BT_SK_DEFER_SETUP, align 4
  %26 = load %struct.sock*, %struct.sock** %10, align 8
  %27 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %25, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.sco_pinfo*, %struct.sco_pinfo** %11, align 8
  %33 = getelementptr inbounds %struct.sco_pinfo, %struct.sco_pinfo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sco_pinfo*, %struct.sco_pinfo** %11, align 8
  %38 = getelementptr inbounds %struct.sco_pinfo, %struct.sco_pinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sco_conn_defer_accept(i32 %36, i32 %39)
  %41 = load i64, i64* @BT_CONFIG, align 8
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = call i32 @release_sock(%struct.sock* %44)
  store i32 0, i32* %5, align 4
  br label %54

46:                                               ; preds = %24, %4
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @bt_sock_recvmsg(%struct.socket* %49, %struct.msghdr* %50, i64 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %31
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.sco_pinfo* @sco_pi(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @sco_conn_defer_accept(i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @bt_sock_recvmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
