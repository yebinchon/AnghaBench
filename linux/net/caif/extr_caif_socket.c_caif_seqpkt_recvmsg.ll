; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_seqpkt_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_caif_socket.c_caif_seqpkt_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @caif_seqpkt_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caif_seqpkt_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
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
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MSG_OOB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.sock*, %struct.sock** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %25, i32 %26, i32 0, i32* %12)
  store %struct.sk_buff* %27, %struct.sk_buff** %11, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %75

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32, i32* @MSG_TRUNC, align 4
  %41 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %48, i32 0, %struct.msghdr* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %68

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MSG_TRUNC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %66, %54
  %69 = load %struct.sock*, %struct.sock** %10, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i32 @skb_free_datagram(%struct.sock* %69, %struct.sk_buff* %70)
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = call i32 @caif_check_flow_release(%struct.sock* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %77

75:                                               ; preds = %30, %23
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @caif_check_flow_release(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
