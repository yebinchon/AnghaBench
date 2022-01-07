; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_tso_should_defer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_tso_should_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.inet_connection_sock = type { i64 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TCP_CA_Recovery = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@TCPHDR_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32*, i32*, i32)* @tcp_tso_should_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_tso_should_defer(%struct.sock* %0, %struct.sk_buff* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inet_connection_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcp_sock*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %22)
  store %struct.inet_connection_sock* %23, %struct.inet_connection_sock** %12, align 8
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %24)
  store %struct.tcp_sock* %25, %struct.tcp_sock** %17, align 8
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %12, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_CA_Recovery, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %202

32:                                               ; preds = %5
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load i32, i32* @NSEC_PER_MSEC, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %202

45:                                               ; preds = %32
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %47 = call i32 @tcp_packets_in_flight(%struct.tcp_sock* %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @tcp_skb_pcount(%struct.sk_buff* %48)
  %50 = icmp sle i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp sle i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %61 = call i32 @tcp_wnd_end(%struct.tcp_sock* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %13, align 4
  %67 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %68 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = icmp sge i32 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %45
  br label %202

87:                                               ; preds = %45
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %89)
  %91 = icmp ne %struct.sk_buff* %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %202

99:                                               ; preds = %92, %87
  %100 = load %struct.sock*, %struct.sock** %7, align 8
  %101 = call %struct.TYPE_5__* @sock_net(%struct.sock* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @READ_ONCE(i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %99
  %109 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = call i32 @min(i32 %111, i32 %118)
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %21, align 4
  %122 = sdiv i32 %121, %120
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %21, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %202

127:                                              ; preds = %108
  br label %139

128:                                              ; preds = %99
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %131 = call i32 @tcp_max_tso_deferred_mss(%struct.tcp_sock* %130)
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = icmp sgt i32 %129, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %202

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %127
  %140 = load %struct.sock*, %struct.sock** %7, align 8
  %141 = call %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock* %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %18, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %202

145:                                              ; preds = %139
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = load i64, i64* @NSEC_PER_USEC, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.tcp_sock*, %struct.tcp_sock** %17, align 8
  %157 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 4
  %160 = mul nsw i32 %155, %159
  %161 = sub nsw i32 %153, %160
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %145
  br label %202

164:                                              ; preds = %145
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sle i32 %169, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32*, i32** %9, align 8
  store i32 1, i32* %175, align 4
  store i32 1, i32* %6, align 4
  br label %203

176:                                              ; preds = %168
  br label %186

177:                                              ; preds = %164
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32*, i32** %10, align 8
  store i32 1, i32* %184, align 4
  store i32 1, i32* %6, align 4
  br label %203

185:                                              ; preds = %177
  br label %186

186:                                              ; preds = %185, %176
  %187 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %188 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @TCPHDR_FIN, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %186
  %195 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %196 = call %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff* %195)
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194, %186
  br label %202

201:                                              ; preds = %194
  store i32 1, i32* %6, align 4
  br label %203

202:                                              ; preds = %200, %163, %144, %137, %126, %98, %86, %44, %31
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %201, %183, %174
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_6__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_5__* @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_max_tso_deferred_mss(%struct.tcp_sock*) #1

declare dso_local %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
