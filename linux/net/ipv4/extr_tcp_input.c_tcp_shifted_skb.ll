; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_shifted_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_shifted_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.tcp_sacktag_state = type { i32 }
%struct.tcp_sock = type { i32, %struct.sk_buff*, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i64 }

@TCPCB_EVER_RETRANS = common dso_local global i32 0, align 4
@LINUX_MIB_SACKSHIFTED = common dso_local global i32 0, align 4
@TCPHDR_FIN = common dso_local global i32 0, align 4
@LINUX_MIB_SACKMERGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sk_buff*, %struct.tcp_sacktag_state*, i32, i32, i32, i32)* @tcp_shifted_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_shifted_skb(%struct.sock* %0, %struct.sk_buff* %1, %struct.sk_buff* %2, %struct.tcp_sacktag_state* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.tcp_sacktag_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcp_sock*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %12, align 8
  store %struct.tcp_sacktag_state* %3, %struct.tcp_sacktag_state** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.sock*, %struct.sock** %10, align 8
  %22 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %21)
  store %struct.tcp_sock* %22, %struct.tcp_sock** %18, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %15, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.sock*, %struct.sock** %10, align 8
  %36 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %13, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = call i32 @tcp_skb_timestamp_us(%struct.sk_buff* %45)
  %47 = call i32 @tcp_sacktag_one(%struct.sock* %35, %struct.tcp_sacktag_state* %36, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = load %struct.tcp_sacktag_state*, %struct.tcp_sacktag_state** %13, align 8
  %51 = getelementptr inbounds %struct.tcp_sacktag_state, %struct.tcp_sacktag_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @tcp_rate_skb_delivered(%struct.sock* %48, %struct.sk_buff* %49, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = icmp eq %struct.sk_buff* %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %67
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %75 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @tcp_skb_pcount_add(%struct.sk_buff* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = call i32 @tcp_skb_pcount(%struct.sk_buff* %82)
  %84 = load i32, i32* %14, align 4
  %85 = icmp ult i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN_ON_ONCE(i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sub i32 0, %89
  %91 = call i32 @tcp_skb_pcount_add(%struct.sk_buff* %88, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %65
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %65
  %103 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %104 = call i32 @tcp_skb_pcount(%struct.sk_buff* %103)
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %108 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %112 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TCPCB_EVER_RETRANS, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %110
  %127 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %128 = call i32 @tcp_skb_pcount(%struct.sk_buff* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  %133 = load %struct.sock*, %struct.sock** %10, align 8
  %134 = call i32 @sock_net(%struct.sock* %133)
  %135 = load i32, i32* @LINUX_MIB_SACKSHIFTED, align 4
  %136 = call i32 @NET_INC_STATS(i32 %134, i32 %135)
  store i32 0, i32* %9, align 4
  br label %226

137:                                              ; preds = %110
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %140 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %139, i32 0, i32 2
  %141 = load %struct.sk_buff*, %struct.sk_buff** %140, align 8
  %142 = icmp eq %struct.sk_buff* %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %146 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %145, i32 0, i32 2
  store %struct.sk_buff* %144, %struct.sk_buff** %146, align 8
  br label %147

147:                                              ; preds = %143, %137
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %150 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %149, i32 0, i32 1
  %151 = load %struct.sk_buff*, %struct.sk_buff** %150, align 8
  %152 = icmp eq %struct.sk_buff* %148, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %155 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %155, i32 0, i32 1
  store %struct.sk_buff* %154, %struct.sk_buff** %156, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = call i32 @tcp_skb_pcount(%struct.sk_buff* %157)
  %159 = load %struct.tcp_sock*, %struct.tcp_sock** %18, align 8
  %160 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %153, %147
  %164 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %165 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %164)
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %169 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %167
  store i32 %172, i32* %170, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %178 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %177)
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 6
  store i32 %176, i32* %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %181 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %180)
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @TCPHDR_FIN, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %163
  %188 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %189 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %187, %163
  %194 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %195 = load %struct.sock*, %struct.sock** %10, align 8
  %196 = call %struct.sk_buff* @tcp_highest_sack(%struct.sock* %195)
  %197 = icmp eq %struct.sk_buff* %194, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.sock*, %struct.sock** %10, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %201 = call i32 @tcp_advance_highest_sack(%struct.sock* %199, %struct.sk_buff* %200)
  br label %202

202:                                              ; preds = %198, %193
  %203 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %205 = call i32 @tcp_skb_collapse_tstamp(%struct.sk_buff* %203, %struct.sk_buff* %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %207 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %206)
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @unlikely(i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %202
  %214 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %215 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %214)
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %213, %202
  %219 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %220 = load %struct.sock*, %struct.sock** %10, align 8
  %221 = call i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff* %219, %struct.sock* %220)
  %222 = load %struct.sock*, %struct.sock** %10, align 8
  %223 = call i32 @sock_net(%struct.sock* %222)
  %224 = load i32, i32* @LINUX_MIB_SACKMERGED, align 4
  %225 = call i32 @NET_INC_STATS(i32 %223, i32 %224)
  store i32 1, i32* %9, align 4
  br label %226

226:                                              ; preds = %218, %126
  %227 = load i32, i32* %9, align 4
  ret i32 %227
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tcp_sacktag_one(%struct.sock*, %struct.tcp_sacktag_state*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local i32 @tcp_rate_skb_delivered(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_skb_pcount_add(%struct.sk_buff*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @NET_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_highest_sack(%struct.sock*) #1

declare dso_local i32 @tcp_advance_highest_sack(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_collapse_tstamp(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @tcp_rtx_queue_unlink_and_free(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
