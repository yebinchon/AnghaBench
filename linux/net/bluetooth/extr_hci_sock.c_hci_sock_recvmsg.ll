; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCI_CHANNEL_LOGGING = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @hci_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MSG_DONTWAIT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  store %struct.sock* %21, %struct.sock** %11, align 8
  %22 = load %struct.socket*, %struct.socket** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %11, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %22, %struct.sock* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MSG_OOB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %129

32:                                               ; preds = %4
  %33 = load %struct.sock*, %struct.sock** %11, align 8
  %34 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HCI_CHANNEL_LOGGING, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %129

42:                                               ; preds = %32
  %43 = load %struct.sock*, %struct.sock** %11, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_CLOSED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %129

49:                                               ; preds = %42
  %50 = load %struct.sock*, %struct.sock** %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %50, i32 %51, i32 %52, i32* %14)
  store %struct.sk_buff* %53, %struct.sk_buff** %12, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %129

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load i32, i32* @MSG_TRUNC, align 4
  %71 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %69, %58
  %78 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %79 = call i32 @skb_reset_transport_header(%struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %80, i32 0, %struct.msghdr* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.sock*, %struct.sock** %11, align 8
  %85 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %98 [
    i32 129, label %88
    i32 128, label %93
    i32 130, label %93
  ]

88:                                               ; preds = %77
  %89 = load %struct.sock*, %struct.sock** %11, align 8
  %90 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %92 = call i32 @hci_sock_cmsg(%struct.sock* %89, %struct.msghdr* %90, %struct.sk_buff* %91)
  br label %111

93:                                               ; preds = %77, %77
  %94 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %95 = load %struct.sock*, %struct.sock** %11, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = call i32 @sock_recv_timestamp(%struct.msghdr* %94, %struct.sock* %95, %struct.sk_buff* %96)
  br label %111

98:                                               ; preds = %77
  %99 = load %struct.sock*, %struct.sock** %11, align 8
  %100 = call %struct.TYPE_2__* @hci_pi(%struct.sock* %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @hci_mgmt_chan_find(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %107 = load %struct.sock*, %struct.sock** %11, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %109 = call i32 @sock_recv_timestamp(%struct.msghdr* %106, %struct.sock* %107, %struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %105, %98
  br label %111

111:                                              ; preds = %110, %93, %88
  %112 = load %struct.sock*, %struct.sock** %11, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %114 = call i32 @skb_free_datagram(%struct.sock* %112, %struct.sk_buff* %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @MSG_TRUNC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %119, %111
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i32 [ %122, %124 ], [ %126, %125 ]
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %127, %56, %48, %39, %29
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local %struct.TYPE_2__* @hci_pi(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @hci_sock_cmsg(%struct.sock*, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @sock_recv_timestamp(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @hci_mgmt_chan_find(i32) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
