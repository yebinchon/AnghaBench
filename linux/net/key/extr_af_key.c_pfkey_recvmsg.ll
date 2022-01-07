; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.msghdr = type { i32 }
%struct.pfkey_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @pfkey_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.pfkey_sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %9, align 8
  %18 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %17)
  store %struct.pfkey_sock* %18, %struct.pfkey_sock** %10, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MSG_PEEK, align 4
  %23 = load i32, i32* @MSG_DONTWAIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MSG_TRUNC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %21, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %108

33:                                               ; preds = %4
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MSG_DONTWAIT, align 4
  %38 = and i32 %36, %37
  %39 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %34, i32 %35, i32 %38, i32* %13)
  store %struct.sk_buff* %39, %struct.sk_buff** %11, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %108

43:                                               ; preds = %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i32, i32* @MSG_TRUNC, align 4
  %53 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %54 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %51, %43
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = call i32 @skb_reset_transport_header(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %62, i32 0, %struct.msghdr* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %104

69:                                               ; preds = %59
  %70 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %73 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %70, %struct.sock* %71, %struct.sk_buff* %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MSG_TRUNC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  br label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %81, %78 ], [ %83, %82 ]
  store i32 %85, i32* %13, align 4
  %86 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %87 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.sock*, %struct.sock** %9, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 1
  %94 = call i32 @atomic_read(i32* %93)
  %95 = mul nsw i32 3, %94
  %96 = load %struct.sock*, %struct.sock** %9, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sle i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.pfkey_sock*, %struct.pfkey_sock** %10, align 8
  %102 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %101)
  br label %103

103:                                              ; preds = %100, %91, %84
  br label %104

104:                                              ; preds = %103, %68
  %105 = load %struct.sock*, %struct.sock** %9, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = call i32 @skb_free_datagram(%struct.sock* %105, %struct.sk_buff* %106)
  br label %108

108:                                              ; preds = %104, %42, %32
  %109 = load i32, i32* %13, align 4
  ret i32 %109
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
