; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_timer.c_tcp_write_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i32, i64, i32, i64 }
%struct.tcp_sock = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i64 0, align 8
@BPF_SOCK_OPS_RTO_CB_FLAG = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_RTO_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_write_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_write_timeout(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inet_connection_sock*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %11)
  store %struct.inet_connection_sock* %12, %struct.inet_connection_sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %5, align 8
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.net* @sock_net(%struct.sock* %15)
  store %struct.net* %16, %struct.net** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @TCPF_SYN_SENT, align 4
  %22 = load i32, i32* @TCPF_SYN_RECV, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %1
  %27 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i32 @dst_negative_advice(%struct.sock* %32)
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @sk_rethink_txhash(%struct.sock* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %49

43:                                               ; preds = %37
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %43, %42
  %50 = phi i64 [ %40, %42 ], [ %48, %43 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %53 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %112

58:                                               ; preds = %1
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = load %struct.net*, %struct.net** %6, align 8
  %61 = getelementptr inbounds %struct.net, %struct.net* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @retransmits_timed_out(%struct.sock* %59, i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = call i32 @tcp_mtu_probing(%struct.inet_connection_sock* %67, %struct.sock* %68)
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = call i32 @dst_negative_advice(%struct.sock* %70)
  br label %75

72:                                               ; preds = %58
  %73 = load %struct.sock*, %struct.sock** %3, align 8
  %74 = call i32 @sk_rethink_txhash(%struct.sock* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.net*, %struct.net** %6, align 8
  %77 = getelementptr inbounds %struct.net, %struct.net* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = load %struct.sock*, %struct.sock** %3, align 8
  %81 = load i32, i32* @SOCK_DEAD, align 4
  %82 = call i64 @sock_flag(%struct.sock* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %75
  %85 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %86 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TCP_RTO_MAX, align 8
  %89 = icmp slt i64 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load %struct.sock*, %struct.sock** %3, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @tcp_orphan_retries(%struct.sock* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %84
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @retransmits_timed_out(%struct.sock* %97, i32 %98, i32 0)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %96, %84
  %103 = phi i1 [ true, %84 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %8, align 4
  %105 = load %struct.sock*, %struct.sock** %3, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @tcp_out_of_resources(%struct.sock* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 1, i32* %2, align 4
  br label %148

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %75
  br label %112

112:                                              ; preds = %111, %49
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %112
  %116 = load %struct.sock*, %struct.sock** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %119 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @retransmits_timed_out(%struct.sock* %116, i32 %117, i32 %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load %struct.sock*, %struct.sock** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @tcp_fastopen_active_detect_blackhole(%struct.sock* %123, i32 %124)
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %127 = load i32, i32* @BPF_SOCK_OPS_RTO_CB_FLAG, align 4
  %128 = call i64 @BPF_SOCK_OPS_TEST_FLAG(%struct.tcp_sock* %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load %struct.sock*, %struct.sock** %3, align 8
  %132 = load i32, i32* @BPF_SOCK_OPS_RTO_CB, align 4
  %133 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %134 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %4, align 8
  %137 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @tcp_call_bpf_3arg(%struct.sock* %131, i32 %132, i32 %135, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %122
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.sock*, %struct.sock** %3, align 8
  %146 = call i32 @tcp_write_err(%struct.sock* %145)
  store i32 1, i32* %2, align 4
  br label %148

147:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %144, %109
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @dst_negative_advice(%struct.sock*) #1

declare dso_local i32 @sk_rethink_txhash(%struct.sock*) #1

declare dso_local i32 @retransmits_timed_out(%struct.sock*, i32, i32) #1

declare dso_local i32 @tcp_mtu_probing(%struct.inet_connection_sock*, %struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @tcp_orphan_retries(%struct.sock*, i32) #1

declare dso_local i64 @tcp_out_of_resources(%struct.sock*, i32) #1

declare dso_local i32 @tcp_fastopen_active_detect_blackhole(%struct.sock*, i32) #1

declare dso_local i64 @BPF_SOCK_OPS_TEST_FLAG(%struct.tcp_sock*, i32) #1

declare dso_local i32 @tcp_call_bpf_3arg(%struct.sock*, i32, i32, i64, i32) #1

declare dso_local i32 @tcp_write_err(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
