; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_get_timestamping_opt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_get_timestamping_opt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.tcp_info = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_NLA_BUSY = common dso_local global i32 0, align 4
@TCP_NLA_PAD = common dso_local global i32 0, align 4
@TCP_NLA_RWND_LIMITED = common dso_local global i32 0, align 4
@TCP_NLA_SNDBUF_LIMITED = common dso_local global i32 0, align 4
@TCP_NLA_DATA_SEGS_OUT = common dso_local global i32 0, align 4
@TCP_NLA_TOTAL_RETRANS = common dso_local global i32 0, align 4
@TCP_NLA_PACING_RATE = common dso_local global i32 0, align 4
@TCP_NLA_DELIVERY_RATE = common dso_local global i32 0, align 4
@TCP_NLA_SND_CWND = common dso_local global i32 0, align 4
@TCP_NLA_REORDERING = common dso_local global i32 0, align 4
@TCP_NLA_MIN_RTT = common dso_local global i32 0, align 4
@TCP_NLA_RECUR_RETRANS = common dso_local global i32 0, align 4
@TCP_NLA_DELIVERY_RATE_APP_LMT = common dso_local global i32 0, align 4
@TCP_NLA_SND_SSTHRESH = common dso_local global i32 0, align 4
@TCP_NLA_DELIVERED = common dso_local global i32 0, align 4
@TCP_NLA_DELIVERED_CE = common dso_local global i32 0, align 4
@TCP_NLA_SNDQ_SIZE = common dso_local global i32 0, align 4
@TCP_NLA_CA_STATE = common dso_local global i32 0, align 4
@TCP_NLA_BYTES_SENT = common dso_local global i32 0, align 4
@TCP_NLA_BYTES_RETRANS = common dso_local global i32 0, align 4
@TCP_NLA_DSACK_DUPS = common dso_local global i32 0, align 4
@TCP_NLA_REORD_SEEN = common dso_local global i32 0, align 4
@TCP_NLA_SRTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tcp_get_timestamping_opt_stats(%struct.sock* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcp_info, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %4, align 8
  %11 = call i32 (...) @tcp_opt_stats_get_size()
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.sk_buff* @alloc_skb(i32 %11, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %178

17:                                               ; preds = %1
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %19 = call i32 @tcp_get_info_chrono_stats(%struct.tcp_sock* %18, %struct.tcp_info* %6)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @TCP_NLA_BUSY, align 4
  %22 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @TCP_NLA_PAD, align 4
  %25 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %20, i32 %21, i64 %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @TCP_NLA_RWND_LIMITED, align 4
  %28 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %6, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @TCP_NLA_PAD, align 4
  %31 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %26, i32 %27, i64 %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @TCP_NLA_SNDBUF_LIMITED, align 4
  %34 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %6, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @TCP_NLA_PAD, align 4
  %37 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %32, i32 %33, i64 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* @TCP_NLA_DATA_SEGS_OUT, align 4
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* @TCP_NLA_PAD, align 4
  %44 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %38, i32 %39, i64 %42, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @TCP_NLA_TOTAL_RETRANS, align 4
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @TCP_NLA_PAD, align 4
  %51 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %45, i32 %46, i64 %49, i32 %50)
  %52 = load %struct.sock*, %struct.sock** %3, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @READ_ONCE(i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %17
  %59 = load i64, i64* %7, align 8
  br label %61

60:                                               ; preds = %17
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i64 [ %59, %58 ], [ -1, %60 ]
  store i64 %62, i64* %8, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @TCP_NLA_PACING_RATE, align 4
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @TCP_NLA_PAD, align 4
  %67 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %63, i32 %64, i64 %65, i32 %66)
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %69 = call i64 @tcp_compute_delivery_rate(%struct.tcp_sock* %68)
  store i64 %69, i64* %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @TCP_NLA_DELIVERY_RATE, align 4
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @TCP_NLA_PAD, align 4
  %74 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %70, i32 %71, i64 %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @TCP_NLA_SND_CWND, align 4
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i32, i32* @TCP_NLA_REORDERING, align 4
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load i32, i32* @TCP_NLA_MIN_RTT, align 4
  %89 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %90 = call i32 @tcp_min_rtt(%struct.tcp_sock* %89)
  %91 = call i32 @nla_put_u32(%struct.sk_buff* %87, i32 %88, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i32, i32* @TCP_NLA_RECUR_RETRANS, align 4
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @nla_put_u8(%struct.sk_buff* %92, i32 %93, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* @TCP_NLA_DELIVERY_RATE_APP_LMT, align 4
  %101 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %102 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @nla_put_u8(%struct.sk_buff* %99, i32 %100, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* @TCP_NLA_SND_SSTHRESH, align 4
  %111 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %112 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @nla_put_u32(%struct.sk_buff* %109, i32 %110, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = load i32, i32* @TCP_NLA_DELIVERED, align 4
  %117 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %118 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @nla_put_u32(%struct.sk_buff* %115, i32 %116, i32 %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load i32, i32* @TCP_NLA_DELIVERED_CE, align 4
  %123 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %124 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @nla_put_u32(%struct.sk_buff* %121, i32 %122, i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = load i32, i32* @TCP_NLA_SNDQ_SIZE, align 4
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = call i32 @nla_put_u32(%struct.sk_buff* %127, i32 %128, i32 %135)
  %137 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %138 = load i32, i32* @TCP_NLA_CA_STATE, align 4
  %139 = load %struct.sock*, %struct.sock** %3, align 8
  %140 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %139)
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nla_put_u8(%struct.sk_buff* %137, i32 %138, i32 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load i32, i32* @TCP_NLA_BYTES_SENT, align 4
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 9
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @TCP_NLA_PAD, align 4
  %150 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %144, i32 %145, i64 %148, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = load i32, i32* @TCP_NLA_BYTES_RETRANS, align 4
  %153 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %154 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %153, i32 0, i32 10
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @TCP_NLA_PAD, align 4
  %157 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %151, i32 %152, i64 %155, i32 %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load i32, i32* @TCP_NLA_DSACK_DUPS, align 4
  %160 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %161 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @nla_put_u32(%struct.sk_buff* %158, i32 %159, i32 %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = load i32, i32* @TCP_NLA_REORD_SEEN, align 4
  %166 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %167 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @nla_put_u32(%struct.sk_buff* %164, i32 %165, i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = load i32, i32* @TCP_NLA_SRTT, align 4
  %172 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %173 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %172, i32 0, i32 13
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %174, 3
  %176 = call i32 @nla_put_u32(%struct.sk_buff* %170, i32 %171, i32 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %177, %struct.sk_buff** %2, align 8
  br label %178

178:                                              ; preds = %61, %16
  %179 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %179
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @tcp_opt_stats_get_size(...) #1

declare dso_local i32 @tcp_get_info_chrono_stats(%struct.tcp_sock*, %struct.tcp_info*) #1

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @tcp_compute_delivery_rate(%struct.tcp_sock*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcp_min_rtt(%struct.tcp_sock*) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
