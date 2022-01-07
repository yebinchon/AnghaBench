; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c_udp_v6_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.udp_sock = type { i64, i64 }
%struct.flowi6 = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.flowi6 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @udp_v6_push_pending_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_v6_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.udp_sock*, align 8
  %6 = alloca %struct.flowi6, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.udp_sock* @udp_sk(%struct.sock* %8)
  store %struct.udp_sock* %9, %struct.udp_sock** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.udp_sock*, %struct.udp_sock** %5, align 8
  %11 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 @udp_push_pending_frames(%struct.sock* %16)
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = bitcast %struct.flowi6* %6 to i8*
  %26 = bitcast %struct.flowi6* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call %struct.sk_buff* @ip6_finish_skb(%struct.sock* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.TYPE_8__* @inet_sk(%struct.sock* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @udp_v6_send_skb(%struct.sk_buff* %33, %struct.flowi6* %6, i32* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load %struct.udp_sock*, %struct.udp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.udp_sock*, %struct.udp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_push_pending_frames(%struct.sock*) #1

declare dso_local %struct.TYPE_8__* @inet_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @ip6_finish_skb(%struct.sock*) #1

declare dso_local i32 @udp_v6_send_skb(%struct.sk_buff*, %struct.flowi6*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
