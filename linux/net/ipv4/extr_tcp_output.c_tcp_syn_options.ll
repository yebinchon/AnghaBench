; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_syn_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_syn_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_out_options = type { i32, %struct.TYPE_9__*, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcp_sock = type { i32, i32, %struct.TYPE_7__, i64, %struct.TYPE_6__*, i32, %struct.tcp_fastopen_request* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.tcp_md5sig_key* (%struct.sock*, %struct.sock*)* }
%struct.tcp_fastopen_request = type { %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64 }

@MAX_TCP_OPTION_SPACE = common dso_local global i32 0, align 4
@TCPOLEN_MSS_ALIGNED = common dso_local global i64 0, align 8
@OPTION_TS = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOLEN_WSCALE_ALIGNED = common dso_local global i64 0, align 8
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOLEN_SACKPERM_ALIGNED = common dso_local global i64 0, align 8
@TCPOLEN_EXP_FASTOPEN_BASE = common dso_local global i64 0, align 8
@TCPOLEN_FASTOPEN_BASE = common dso_local global i64 0, align 8
@OPTION_FAST_OPEN_COOKIE = common dso_local global i32 0, align 4
@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@tcp_md5_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.tcp_out_options*, %struct.tcp_md5sig_key**)* @tcp_syn_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_syn_options(%struct.sock* %0, %struct.sk_buff* %1, %struct.tcp_out_options* %2, %struct.tcp_md5sig_key** %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tcp_out_options*, align 8
  %8 = alloca %struct.tcp_md5sig_key**, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcp_fastopen_request*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.tcp_out_options* %2, %struct.tcp_out_options** %7, align 8
  store %struct.tcp_md5sig_key** %3, %struct.tcp_md5sig_key*** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %9, align 8
  %15 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 6
  %18 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %17, align 8
  store %struct.tcp_fastopen_request* %18, %struct.tcp_fastopen_request** %11, align 8
  %19 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %8, align 8
  store %struct.tcp_md5sig_key* null, %struct.tcp_md5sig_key** %19, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call i32 @tcp_advertise_mss(%struct.sock* %20)
  %22 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @TCPOLEN_MSS_ALIGNED, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = call %struct.TYPE_10__* @sock_net(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.tcp_md5sig_key**, %struct.tcp_md5sig_key*** %8, align 8
  %37 = load %struct.tcp_md5sig_key*, %struct.tcp_md5sig_key** %36, align 8
  %38 = icmp ne %struct.tcp_md5sig_key* %37, null
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %35, %4
  %41 = phi i1 [ false, %4 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load i32, i32* @OPTION_TS, align 4
  %47 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %48 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i64 @tcp_skb_timestamp(%struct.sk_buff* %51)
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %58 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %64 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %45, %40
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = call %struct.TYPE_10__* @sock_net(%struct.sock* %71)
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %84 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @OPTION_WSCALE, align 4
  %86 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %87 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i64, i64* @TCPOLEN_WSCALE_ALIGNED, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %78, %70
  %96 = load %struct.sock*, %struct.sock** %5, align 8
  %97 = call %struct.TYPE_10__* @sock_net(%struct.sock* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @likely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %95
  %104 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %105 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %106 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @OPTION_TS, align 4
  %110 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %111 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load i64, i64* @TCPOLEN_SACKPERM_ALIGNED, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = sub nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %119, %103
  br label %126

126:                                              ; preds = %125, %95
  %127 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %128 = icmp ne %struct.tcp_fastopen_request* %127, null
  br i1 %128, label %129, label %187

129:                                              ; preds = %126
  %130 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %131 = getelementptr inbounds %struct.tcp_fastopen_request, %struct.tcp_fastopen_request* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sge i64 %133, 0
  br i1 %134, label %135, label %187

135:                                              ; preds = %129
  %136 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %137 = getelementptr inbounds %struct.tcp_fastopen_request, %struct.tcp_fastopen_request* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %142 = getelementptr inbounds %struct.tcp_fastopen_request, %struct.tcp_fastopen_request* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i64, i64* @TCPOLEN_EXP_FASTOPEN_BASE, align 8
  br label %150

148:                                              ; preds = %135
  %149 = load i64, i64* @TCPOLEN_FASTOPEN_BASE, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i64 [ %147, %146 ], [ %149, %148 ]
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 3
  %158 = and i32 %157, -4
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp uge i32 %159, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %150
  %163 = load i32, i32* @OPTION_FAST_OPEN_COOKIE, align 4
  %164 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %165 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %169 = getelementptr inbounds %struct.tcp_fastopen_request, %struct.tcp_fastopen_request* %168, i32 0, i32 0
  %170 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %171 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %170, i32 0, i32 1
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %171, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sub i32 %173, %172
  store i32 %174, i32* %10, align 4
  %175 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %176 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.tcp_fastopen_request*, %struct.tcp_fastopen_request** %11, align 8
  %178 = getelementptr inbounds %struct.tcp_fastopen_request, %struct.tcp_fastopen_request* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 1, i32 0
  %184 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %162, %150
  br label %187

187:                                              ; preds = %186, %129, %126
  %188 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %189 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %190 = call i32 @smc_set_option(%struct.tcp_sock* %188, %struct.tcp_out_options* %189, i32* %10)
  %191 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  %192 = load i32, i32* %10, align 4
  %193 = sub i32 %191, %192
  ret i32 %193
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_advertise_mss(%struct.sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_10__* @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_skb_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smc_set_option(%struct.tcp_sock*, %struct.tcp_out_options*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
