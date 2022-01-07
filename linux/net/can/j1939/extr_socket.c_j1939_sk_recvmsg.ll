; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32, i32, %struct.sockaddr_can* }
%struct.sockaddr_can = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.j1939_sk_buff_cb = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOL_CAN_J1939 = common dso_local global i32 0, align 4
@SCM_J1939_ERRQUEUE = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@SCM_J1939_DEST_ADDR = common dso_local global i32 0, align 4
@SCM_J1939_DEST_NAME = common dso_local global i32 0, align 4
@SCM_J1939_PRIO = common dso_local global i32 0, align 4
@J1939_MIN_NAMELEN = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @j1939_sk_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.j1939_sk_buff_cb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_can*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.socket*, %struct.socket** %6, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MSG_DONTWAIT, align 4
  %20 = load i32, i32* @MSG_ERRQUEUE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %185

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MSG_ERRQUEUE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load %struct.sock*, %struct.sock** %35, align 8
  %37 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* @SOL_CAN_J1939, align 4
  %40 = load i32, i32* @SCM_J1939_ERRQUEUE, align 4
  %41 = call i32 @sock_recv_errqueue(%struct.sock* %36, %struct.msghdr* %37, i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %185

42:                                               ; preds = %28
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.sk_buff* @skb_recv_datagram(%struct.sock* %43, i32 %44, i32 0, i32* %13)
  store %struct.sk_buff* %45, %struct.sk_buff** %11, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %185

50:                                               ; preds = %42
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @MSG_TRUNC, align 4
  %58 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %66

62:                                               ; preds = %50
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @memcpy_to_msg(%struct.msghdr* %67, i32 %70, i64 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load %struct.sock*, %struct.sock** %10, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call i32 @skb_free_datagram(%struct.sock* %76, %struct.sk_buff* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %185

80:                                               ; preds = %66
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = call %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff* %81)
  store %struct.j1939_sk_buff_cb* %82, %struct.j1939_sk_buff_cb** %12, align 8
  %83 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %84 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @j1939_address_is_valid(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %80
  %90 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %91 = load i32, i32* @SOL_CAN_J1939, align 4
  %92 = load i32, i32* @SCM_J1939_DEST_ADDR, align 4
  %93 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %94 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  %96 = call i32 @put_cmsg(%struct.msghdr* %90, i32 %91, i32 %92, i32 8, i64* %95)
  br label %97

97:                                               ; preds = %89, %80
  %98 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %99 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %105 = load i32, i32* @SOL_CAN_J1939, align 4
  %106 = load i32, i32* @SCM_J1939_DEST_NAME, align 4
  %107 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %108 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = call i32 @put_cmsg(%struct.msghdr* %104, i32 %105, i32 %106, i32 8, i64* %109)
  br label %111

111:                                              ; preds = %103, %97
  %112 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %113 = load i32, i32* @SOL_CAN_J1939, align 4
  %114 = load i32, i32* @SCM_J1939_PRIO, align 4
  %115 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %116 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %115, i32 0, i32 2
  %117 = call i32 @put_cmsg(%struct.msghdr* %112, i32 %113, i32 %114, i32 8, i64* %116)
  %118 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %119 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %118, i32 0, i32 2
  %120 = load %struct.sockaddr_can*, %struct.sockaddr_can** %119, align 8
  %121 = icmp ne %struct.sockaddr_can* %120, null
  br i1 %121, label %122, label %168

122:                                              ; preds = %111
  %123 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %124 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %123, i32 0, i32 2
  %125 = load %struct.sockaddr_can*, %struct.sockaddr_can** %124, align 8
  store %struct.sockaddr_can* %125, %struct.sockaddr_can** %14, align 8
  %126 = load i32, i32* @J1939_MIN_NAMELEN, align 4
  %127 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %130 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %129, i32 0, i32 2
  %131 = load %struct.sockaddr_can*, %struct.sockaddr_can** %130, align 8
  %132 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %133 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memset(%struct.sockaddr_can* %131, i32 0, i32 %134)
  %136 = load i32, i32* @AF_CAN, align 4
  %137 = load %struct.sockaddr_can*, %struct.sockaddr_can** %14, align 8
  %138 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sockaddr_can*, %struct.sockaddr_can** %14, align 8
  %143 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %145 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sockaddr_can*, %struct.sockaddr_can** %14, align 8
  %149 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  store i32 %147, i32* %151, align 4
  %152 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %153 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sockaddr_can*, %struct.sockaddr_can** %14, align 8
  %157 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  %160 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %161 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.sockaddr_can*, %struct.sockaddr_can** %14, align 8
  %165 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %122, %111
  %169 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %170 = load %struct.sock*, %struct.sock** %10, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = call i32 @sock_recv_ts_and_drops(%struct.msghdr* %169, %struct.sock* %170, %struct.sk_buff* %171)
  %173 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %12, align 8
  %174 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %177 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.sock*, %struct.sock** %10, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = call i32 @skb_free_datagram(%struct.sock* %180, %struct.sk_buff* %181)
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %168, %75, %48, %33, %25
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @sock_recv_errqueue(%struct.sock*, %struct.msghdr*, i64, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_recv_datagram(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @memcpy_to_msg(%struct.msghdr*, i32, i64) #1

declare dso_local i32 @skb_free_datagram(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.j1939_sk_buff_cb* @j1939_skb_to_cb(%struct.sk_buff*) #1

declare dso_local i64 @j1939_address_is_valid(i64) #1

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.sockaddr_can*, i32, i32) #1

declare dso_local i32 @sock_recv_ts_and_drops(%struct.msghdr*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
