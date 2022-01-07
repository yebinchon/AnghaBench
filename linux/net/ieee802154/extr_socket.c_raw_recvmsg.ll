; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64, i32, i32, i32*)* @raw_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_recvmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %19, i32 %20, i32 %21, i32* %15)
  store %struct.sk_buff* %22, %struct.sk_buff** %16, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %66

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_TRUNC, align 4
  %35 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %42 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %41, i32 0, %struct.msghdr* %42, i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %62

48:                                               ; preds = %40
  %49 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %49, %struct.sock* %50, %struct.sk_buff* %51)
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MSG_TRUNC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %14, align 8
  br label %61

61:                                               ; preds = %57, %48
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.sock*, %struct.sock** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = call i32 @skb_free_datagram(%struct.sock* %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %62, %25
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %7, align 4
  br label %74

71:                                               ; preds = %66
  %72 = load i64, i64* %14, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %69
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
