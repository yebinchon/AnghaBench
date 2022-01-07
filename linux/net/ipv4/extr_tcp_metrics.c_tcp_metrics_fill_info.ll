; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_metrics_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcp_metrics_block = type { i32*, %struct.tcp_fastopen_metrics, i64, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.tcp_fastopen_metrics = type { %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@TCP_METRICS_ATTR_ADDR_IPV4 = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_SADDR_IPV4 = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_ADDR_IPV6 = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_SADDR_IPV6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_AGE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TCP_METRICS_ATTR_PAD = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_VALS = common dso_local global i32 0, align 4
@TCP_METRIC_MAX_KERNEL = common dso_local global i32 0, align 4
@TCP_METRIC_RTT = common dso_local global i32 0, align 4
@TCP_METRIC_RTT_US = common dso_local global i32 0, align 4
@TCP_METRIC_RTTVAR = common dso_local global i32 0, align 4
@TCP_METRIC_RTTVAR_US = common dso_local global i32 0, align 4
@fastopen_seqlock = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_FOPEN_MSS = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_FOPEN_SYN_DROPS = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_FOPEN_SYN_DROP_TS = common dso_local global i32 0, align 4
@TCP_METRICS_ATTR_FOPEN_COOKIE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcp_metrics_block*)* @tcp_metrics_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_metrics_fill_info(%struct.sk_buff* %0, %struct.tcp_metrics_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_metrics_block*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x %struct.tcp_fastopen_metrics], align 16
  %11 = alloca %struct.tcp_fastopen_metrics*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcp_metrics_block* %1, %struct.tcp_metrics_block** %5, align 8
  %13 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %55 [
    i32 129, label %17
    i32 128, label %36
  ]

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @TCP_METRICS_ATTR_ADDR_IPV4, align 4
  %20 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %20, i32 0, i32 4
  %22 = call i32 @inetpeer_get_addr_v4(%struct.TYPE_5__* %21)
  %23 = call i32 @nla_put_in_addr(%struct.sk_buff* %18, i32 %19, i32 %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %228

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @TCP_METRICS_ATTR_SADDR_IPV4, align 4
  %29 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %30 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %29, i32 0, i32 3
  %31 = call i32 @inetpeer_get_addr_v4(%struct.TYPE_5__* %30)
  %32 = call i32 @nla_put_in_addr(%struct.sk_buff* %27, i32 %28, i32 %31)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %228

35:                                               ; preds = %26
  br label %58

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @TCP_METRICS_ATTR_ADDR_IPV6, align 4
  %39 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %39, i32 0, i32 4
  %41 = call i32 @inetpeer_get_addr_v6(%struct.TYPE_5__* %40)
  %42 = call i32 @nla_put_in6_addr(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %228

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @TCP_METRICS_ATTR_SADDR_IPV6, align 4
  %48 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %49 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %48, i32 0, i32 3
  %50 = call i32 @inetpeer_get_addr_v6(%struct.TYPE_5__* %49)
  %51 = call i32 @nla_put_in6_addr(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %228

54:                                               ; preds = %45
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EAFNOSUPPORT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %231

58:                                               ; preds = %54, %35
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @TCP_METRICS_ATTR_AGE, align 4
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i32, i32* @TCP_METRICS_ATTR_PAD, align 4
  %67 = call i64 @nla_put_msecs(%struct.sk_buff* %59, i32 %60, i64 %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %228

70:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* @TCP_METRICS_ATTR_VALS, align 4
  %73 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %71, i32 %72)
  store %struct.nlattr* %73, %struct.nlattr** %6, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %228

77:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %141, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TCP_METRIC_MAX_KERNEL, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %144

83:                                               ; preds = %78
  %84 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  br label %141

94:                                               ; preds = %83
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @TCP_METRIC_RTT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load i32, i32* @TCP_METRIC_RTT_US, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @nla_put_u32(%struct.sk_buff* %99, i32 %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %228

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sdiv i32 %109, 1000
  %111 = call i32 @max(i32 %110, i32 1)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %106, %94
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load i32, i32* @TCP_METRIC_RTTVAR_US, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @nla_put_u32(%struct.sk_buff* %117, i32 %119, i32 %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %228

124:                                              ; preds = %116
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sdiv i32 %127, 1000
  %129 = call i32 @max(i32 %128, i32 1)
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %112
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @nla_put_u32(%struct.sk_buff* %131, i32 %133, i32 %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %228

138:                                              ; preds = %130
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %93
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %78

144:                                              ; preds = %78
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %150 = call i32 @nla_nest_end(%struct.sk_buff* %148, %struct.nlattr* %149)
  br label %155

151:                                              ; preds = %144
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %154 = call i32 @nla_nest_cancel(%struct.sk_buff* %152, %struct.nlattr* %153)
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %163, %155
  %157 = call i32 @read_seqbegin(i32* @fastopen_seqlock)
  store i32 %157, i32* %12, align 4
  %158 = getelementptr inbounds [1 x %struct.tcp_fastopen_metrics], [1 x %struct.tcp_fastopen_metrics]* %10, i64 0, i64 0
  %159 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %160 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %159, i32 0, i32 1
  %161 = bitcast %struct.tcp_fastopen_metrics* %158 to i8*
  %162 = bitcast %struct.tcp_fastopen_metrics* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %161, i8* align 8 %162, i64 40, i1 false)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @read_seqretry(i32* @fastopen_seqlock, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %156, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds [1 x %struct.tcp_fastopen_metrics], [1 x %struct.tcp_fastopen_metrics]* %10, i64 0, i64 0
  store %struct.tcp_fastopen_metrics* %168, %struct.tcp_fastopen_metrics** %11, align 8
  %169 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %170 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = load i32, i32* @TCP_METRICS_ATTR_FOPEN_MSS, align 4
  %176 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %177 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = call i64 @nla_put_u16(%struct.sk_buff* %174, i32 %175, i64 %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %228

182:                                              ; preds = %173, %167
  %183 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %184 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %182
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = load i32, i32* @TCP_METRICS_ATTR_FOPEN_SYN_DROPS, align 4
  %190 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %191 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @nla_put_u16(%struct.sk_buff* %188, i32 %189, i64 %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %187
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = load i32, i32* @TCP_METRICS_ATTR_FOPEN_SYN_DROP_TS, align 4
  %198 = load i64, i64* @jiffies, align 8
  %199 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %200 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = load i32, i32* @TCP_METRICS_ATTR_PAD, align 4
  %204 = call i64 @nla_put_msecs(%struct.sk_buff* %196, i32 %197, i64 %202, i32 %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %195, %187
  br label %228

207:                                              ; preds = %195, %182
  %208 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %209 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %207
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = load i32, i32* @TCP_METRICS_ATTR_FOPEN_COOKIE, align 4
  %216 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %217 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.tcp_fastopen_metrics*, %struct.tcp_fastopen_metrics** %11, align 8
  %221 = getelementptr inbounds %struct.tcp_fastopen_metrics, %struct.tcp_fastopen_metrics* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i64 @nla_put(%struct.sk_buff* %214, i32 %215, i64 %219, i32 %223)
  %225 = icmp slt i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %213
  br label %228

227:                                              ; preds = %213, %207
  store i32 0, i32* %3, align 4
  br label %231

228:                                              ; preds = %226, %206, %181, %137, %123, %105, %76, %69, %53, %44, %34, %25
  %229 = load i32, i32* @EMSGSIZE, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %228, %227, %55
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @inetpeer_get_addr_v4(%struct.TYPE_5__*) #1

declare dso_local i32 @nla_put_in6_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @inetpeer_get_addr_v6(%struct.TYPE_5__*) #1

declare dso_local i64 @nla_put_msecs(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
