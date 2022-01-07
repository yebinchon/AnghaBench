; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sock=%p sk=%p len=%zu flags=%d\0A\00", align 1
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @rawsock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawsock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MSG_DONTWAIT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %11, align 8
  %21 = load %struct.socket*, %struct.socket** %6, align 8
  %22 = load %struct.sock*, %struct.sock** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.socket* %21, %struct.sock* %22, i64 %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %11, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %26, i32 %27, i32 %28, i32* %14)
  store %struct.sk_buff* %29, %struct.sk_buff** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* @MSG_TRUNC, align 4
  %44 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i64, i64* %8, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %42, %34
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %51, i32 0, %struct.msghdr* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load %struct.sock*, %struct.sock** %11, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = call i32 @skb_free_datagram(%struct.sock* %55, %struct.sk_buff* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ %58, %60 ], [ %62, %61 ]
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %32
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pr_debug(i8*, %struct.socket*, %struct.sock*, i64, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
