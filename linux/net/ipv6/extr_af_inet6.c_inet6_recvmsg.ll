; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_af_inet6.c_inet6_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msghdr = type { i32 }

@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@tcp_recvmsg = common dso_local global i32 0, align 4
@udpv6_recvmsg = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MSG_ERRQUEUE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = call i32 @sock_rps_record_flow(%struct.sock* %24)
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @tcp_recvmsg, align 4
  %33 = load i32, i32* @udpv6_recvmsg, align 4
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MSG_DONTWAIT, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MSG_DONTWAIT, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @INDIRECT_CALL_2(i32 %31, i32 %32, i32 %33, %struct.sock* %34, %struct.msghdr* %35, i64 %36, i32 %39, i32 %43, i32* %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %26
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sock_rps_record_flow(%struct.sock*) #1

declare dso_local i32 @INDIRECT_CALL_2(i32, i32, i32, %struct.sock*, %struct.msghdr*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
