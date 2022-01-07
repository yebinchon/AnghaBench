; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_af_bluetooth.c_bt_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32, i32*)* }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sock %p sk %p len %zu\00", align 1
@MSG_OOB = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
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
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.socket* %22, %struct.sock* %23, i64 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MSG_OOB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %124

33:                                               ; preds = %4
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %34, i32 %35, i32 %36, i32* %15)
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %11, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RCV_SHUTDOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %124

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %33
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* @MSG_TRUNC, align 4
  %62 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %60, %50
  %68 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %69 = call i32 @skb_reset_transport_header(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @skb_copy_datagram_msg(%struct.sk_buff* %70, i32 0, %struct.msghdr* %71, i64 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %67
  %77 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %78 = load %struct.sock*, %struct.sock** %11, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %77, %struct.sock* %78, %struct.sk_buff* %79)
  %81 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %76
  %86 = load %struct.sock*, %struct.sock** %11, align 8
  %87 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32 (%struct.sk_buff*, i32, i32*)*, i32 (%struct.sk_buff*, i32, i32*)** %88, align 8
  %90 = icmp ne i32 (%struct.sk_buff*, i32, i32*)* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.sock*, %struct.sock** %11, align 8
  %93 = call %struct.TYPE_2__* @bt_sk(%struct.sock* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.sk_buff*, i32, i32*)*, i32 (%struct.sk_buff*, i32, i32*)** %94, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %97 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %98 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %101 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %100, i32 0, i32 1
  %102 = call i32 %95(%struct.sk_buff* %96, i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %91, %85, %76
  br label %104

104:                                              ; preds = %103, %67
  %105 = load %struct.sock*, %struct.sock** %11, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %107 = call i32 @skb_free_datagram(%struct.sock* %105, %struct.sk_buff* %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @MSG_TRUNC, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i64, i64* %14, align 8
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %112, %104
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = sext i32 %115 to i64
  br label %121

119:                                              ; preds = %114
  %120 = load i64, i64* %13, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i64 [ %118, %117 ], [ %120, %119 ]
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %48, %47, %30
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*, i64) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i64) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
