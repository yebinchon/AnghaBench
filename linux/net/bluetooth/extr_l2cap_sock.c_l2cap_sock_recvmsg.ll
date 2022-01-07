; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_recvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.sock* }
%struct.sock = type { i64, i64, i32 }
%struct.msghdr = type { i32 }
%struct.l2cap_pinfo = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@BT_CONNECT2 = common dso_local global i64 0, align 8
@BT_SK_DEFER_SETUP = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i8* null, align 8
@BT_CONFIG = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64, i32)* @l2cap_sock_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_recvmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.l2cap_pinfo*, align 8
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.msghdr* %1, %struct.msghdr** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %6, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 1
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %15, %struct.sock** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %16)
  store %struct.l2cap_pinfo* %17, %struct.l2cap_pinfo** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BT_CONNECT2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %4
  %26 = load i32, i32* @BT_SK_DEFER_SETUP, align 4
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.TYPE_6__* @bt_sk(%struct.sock* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %34 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @bdaddr_type_is_le(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load i8*, i8** @BT_CONNECTED, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** @BT_CONNECTED, align 8
  %46 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %47 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %51 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = call i32 @__l2cap_le_connect_rsp_defer(%struct.TYPE_5__* %52)
  br label %68

54:                                               ; preds = %32
  %55 = load i8*, i8** @BT_CONFIG, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** @BT_CONFIG, align 8
  %60 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %61 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i8* %59, i8** %63, align 8
  %64 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %65 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @__l2cap_connect_rsp_defer(%struct.TYPE_5__* %66)
  br label %68

68:                                               ; preds = %54, %40
  store i32 0, i32* %12, align 4
  br label %142

69:                                               ; preds = %25, %4
  %70 = load %struct.sock*, %struct.sock** %10, align 8
  %71 = call i32 @release_sock(%struct.sock* %70)
  %72 = load %struct.socket*, %struct.socket** %6, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SOCK_STREAM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load %struct.socket*, %struct.socket** %6, align 8
  %79 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @bt_sock_stream_recvmsg(%struct.socket* %78, %struct.msghdr* %79, i64 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  br label %89

83:                                               ; preds = %69
  %84 = load %struct.socket*, %struct.socket** %6, align 8
  %85 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @bt_sock_recvmsg(%struct.socket* %84, %struct.msghdr* %85, i64 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %91 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %146

99:                                               ; preds = %89
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = call i32 @lock_sock(%struct.sock* %100)
  %102 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %103 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %104 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = call i64 @test_bit(i32 %102, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %99
  br label %142

110:                                              ; preds = %99
  %111 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %112 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.sock*, %struct.sock** %10, align 8
  %117 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %118 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @__sock_queue_rcv_skb(%struct.sock* %116, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %115
  %123 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %124 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  br label %126

125:                                              ; preds = %115
  br label %142

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %110
  %128 = load %struct.sock*, %struct.sock** %10, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 2
  %130 = call i64 @atomic_read(i32* %129)
  %131 = load %struct.sock*, %struct.sock** %10, align 8
  %132 = getelementptr inbounds %struct.sock, %struct.sock* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = ashr i64 %133, 1
  %135 = icmp sle i64 %130, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %11, align 8
  %138 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = call i32 @l2cap_chan_busy(%struct.TYPE_5__* %139, i32 0)
  br label %141

141:                                              ; preds = %136, %127
  br label %142

142:                                              ; preds = %141, %125, %109, %68
  %143 = load %struct.sock*, %struct.sock** %10, align 8
  %144 = call i32 @release_sock(%struct.sock* %143)
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %142, %97
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @bt_sk(%struct.sock*) #1

declare dso_local i64 @bdaddr_type_is_le(i32) #1

declare dso_local i32 @__l2cap_le_connect_rsp_defer(%struct.TYPE_5__*) #1

declare dso_local i32 @__l2cap_connect_rsp_defer(%struct.TYPE_5__*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @bt_sock_stream_recvmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @bt_sock_recvmsg(%struct.socket*, %struct.msghdr*, i64, i32) #1

declare dso_local i32 @__sock_queue_rcv_skb(%struct.sock*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @l2cap_chan_busy(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
