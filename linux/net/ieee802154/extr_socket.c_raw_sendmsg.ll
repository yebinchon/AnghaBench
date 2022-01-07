; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.net_device = type { i64, i32 }
%struct.sk_buff = type { i32, %struct.net_device* }

@MSG_OOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"msg->msg_flags = 0x%x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"no dev\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IEEE802154_MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"name = %s, mtu = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"size = %zu, mtu = %u\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ETH_P_IEEE802154 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i64)* @raw_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_sendmsg(%struct.sock* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MSG_OOB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %147

27:                                               ; preds = %3
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i32 @lock_sock(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* @ARPHRD_IEEE802154, align 4
  %38 = call %struct.net_device* @dev_getfirstbyhwtype(i32 %36, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %8, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.net_device* @dev_get_by_index(i32 %41, i32 %44)
  store %struct.net_device* %45, %struct.net_device** %8, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = call i32 @release_sock(%struct.sock* %47)
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %13, align 4
  br label %145

55:                                               ; preds = %46
  %56 = load i32, i32* @IEEE802154_MTU, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = icmp ugt i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %67, i32 %68)
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %142

72:                                               ; preds = %55
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %12, align 4
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MSG_DONTWAIT, align 4
  %90 = and i32 %88, %89
  %91 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %78, i32 %85, i32 %90, i32* %13)
  store %struct.sk_buff* %91, %struct.sk_buff** %10, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %72
  br label %142

95:                                               ; preds = %72
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @skb_reserve(%struct.sk_buff* %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %100 = call i32 @skb_reset_mac_header(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = call i32 @skb_reset_network_header(%struct.sk_buff* %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @skb_put(%struct.sk_buff* %103, i64 %104)
  %106 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @memcpy_from_msg(i32 %105, %struct.msghdr* %106, i64 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %139

112:                                              ; preds = %95
  %113 = load %struct.net_device*, %struct.net_device** %8, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  store %struct.net_device* %113, %struct.net_device** %115, align 8
  %116 = load i32, i32* @ETH_P_IEEE802154, align 4
  %117 = call i32 @htons(i32 %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = call i32 @dev_queue_xmit(%struct.sk_buff* %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @net_xmit_errno(i32 %125)
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %124, %112
  %128 = load %struct.net_device*, %struct.net_device** %8, align 8
  %129 = call i32 @dev_put(%struct.net_device* %128)
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = sext i32 %130 to i64
  br label %136

134:                                              ; preds = %127
  %135 = load i64, i64* %7, align 8
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i64 [ %133, %132 ], [ %135, %134 ]
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %147

139:                                              ; preds = %111
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = call i32 @kfree_skb(%struct.sk_buff* %140)
  br label %142

142:                                              ; preds = %139, %94, %66
  %143 = load %struct.net_device*, %struct.net_device** %8, align 8
  %144 = call i32 @dev_put(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %51
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %145, %136, %20
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_getfirstbyhwtype(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
