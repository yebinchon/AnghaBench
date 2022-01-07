; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_reqsk_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_reqsk_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TCP_LISTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*, %struct.request_sock*)* @tcp_v6_reqsk_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v6_reqsk_send_ack(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.request_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.request_sock* %2, %struct.request_sock** %6, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_LISTEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %16 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.TYPE_5__* @tcp_sk(%struct.sock* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i64 [ %19, %14 ], [ %24, %20 ]
  %27 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %28 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %32 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %35 = call %struct.TYPE_8__* @inet_rsk(%struct.request_sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %33, %37
  %39 = call i64 (...) @tcp_time_stamp_raw()
  %40 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %41 = call %struct.TYPE_6__* @tcp_rsk(%struct.request_sock* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = load %struct.request_sock*, %struct.request_sock** %6, align 8
  %46 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @tcp_v6_md5_do_lookup(%struct.sock* %51, i32* %54)
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tcp_v6_send_ack(%struct.sock* %7, %struct.sk_buff* %8, i64 %26, i32 %30, i32 %38, i64 %44, i32 %47, i32 %50, i32 %55, i32 0, i32 0, i32 %58)
  ret void
}

declare dso_local i32 @tcp_v6_send_ack(%struct.sock*, %struct.sk_buff*, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local %struct.TYPE_5__* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @tcp_time_stamp_raw(...) #1

declare dso_local i32 @tcp_v6_md5_do_lookup(%struct.sock*, i32*) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
