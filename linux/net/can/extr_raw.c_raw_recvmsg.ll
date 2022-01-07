; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i64 }
%struct.sk_buff = type { i64, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @raw_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MSG_DONTWAIT, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @MSG_DONTWAIT, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sock*, %struct.sock** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %24, i32 %25, i32 %26, i32* %12)
  store %struct.sk_buff* %27, %struct.sk_buff** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %5, align 4
  br label %98

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @MSG_TRUNC, align 4
  %40 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %41 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memcpy_to_msg(%struct.msghdr* %49, i32 %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.sock*, %struct.sock** %10, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = call i32 @skb_free_datagram(%struct.sock* %58, %struct.sk_buff* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %98

62:                                               ; preds = %48
  %63 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %64 = load %struct.sock*, %struct.sock** %10, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %63, %struct.sock* %64, %struct.sk_buff* %65)
  %67 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %62
  %72 = call i32 @__sockaddr_check_size(i32 4)
  %73 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(i64 %77, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %71, %62
  %86 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %87 = call i32* @raw_flags(%struct.sk_buff* %86)
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.sock*, %struct.sock** %10, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %95 = call i32 @skb_free_datagram(%struct.sock* %93, %struct.sk_buff* %94)
  %96 = load i64, i64* %8, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %85, %57, %30
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i32, i64) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__sockaddr_check_size(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32* @raw_flags(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
