; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_synack_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_synack_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_out_options = type { i32, %struct.tcp_fastopen_cookie*, i32, i32, i64, i32 }
%struct.tcp_md5sig_key = type { i32 }
%struct.tcp_fastopen_cookie = type { i64, i64 }
%struct.inet_request_sock = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_TCP_OPTION_SPACE = common dso_local global i32 0, align 4
@TCPOLEN_MSS_ALIGNED = common dso_local global i64 0, align 8
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOLEN_WSCALE_ALIGNED = common dso_local global i64 0, align 8
@OPTION_TS = common dso_local global i32 0, align 4
@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i64 0, align 8
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOLEN_SACKPERM_ALIGNED = common dso_local global i64 0, align 8
@TCPOLEN_EXP_FASTOPEN_BASE = common dso_local global i64 0, align 8
@TCPOLEN_FASTOPEN_BASE = common dso_local global i64 0, align 8
@OPTION_FAST_OPEN_COOKIE = common dso_local global i32 0, align 4
@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG_ALIGNED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.request_sock*, i32, %struct.sk_buff*, %struct.tcp_out_options*, %struct.tcp_md5sig_key*, %struct.tcp_fastopen_cookie*)* @tcp_synack_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_synack_options(%struct.sock* %0, %struct.request_sock* %1, i32 %2, %struct.sk_buff* %3, %struct.tcp_out_options* %4, %struct.tcp_md5sig_key* %5, %struct.tcp_fastopen_cookie* %6) #0 {
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.tcp_out_options*, align 8
  %13 = alloca %struct.tcp_md5sig_key*, align 8
  %14 = alloca %struct.tcp_fastopen_cookie*, align 8
  %15 = alloca %struct.inet_request_sock*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.request_sock* %1, %struct.request_sock** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %11, align 8
  store %struct.tcp_out_options* %4, %struct.tcp_out_options** %12, align 8
  store %struct.tcp_md5sig_key* %5, %struct.tcp_md5sig_key** %13, align 8
  store %struct.tcp_fastopen_cookie* %6, %struct.tcp_fastopen_cookie** %14, align 8
  %18 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %19 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %18)
  store %struct.inet_request_sock* %19, %struct.inet_request_sock** %15, align 8
  %20 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %23 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* @TCPOLEN_MSS_ALIGNED, align 8
  %25 = load i32, i32* %16, align 4
  %26 = zext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %30 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %7
  %35 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %36 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %39 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @OPTION_WSCALE, align 4
  %41 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %42 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i64, i64* @TCPOLEN_WSCALE_ALIGNED, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %34, %7
  %51 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %52 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load i32, i32* @OPTION_TS, align 4
  %58 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %59 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = call i64 @tcp_skb_timestamp(%struct.sk_buff* %62)
  %64 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %65 = call %struct.TYPE_2__* @tcp_rsk(%struct.request_sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %63, %67
  %69 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %70 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %72 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %75 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* @TCPOLEN_TSTAMP_ALIGNED, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = sub nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %56, %50
  %82 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %83 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %89 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %90 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %94 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = load i64, i64* @TCPOLEN_SACKPERM_ALIGNED, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = sub nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %101, %87
  br label %108

108:                                              ; preds = %107, %81
  %109 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %14, align 8
  %110 = icmp ne %struct.tcp_fastopen_cookie* %109, null
  br i1 %110, label %111, label %154

111:                                              ; preds = %108
  %112 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %14, align 8
  %113 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %111
  %117 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %14, align 8
  %118 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %17, align 4
  %121 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %14, align 8
  %122 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i64, i64* @TCPOLEN_EXP_FASTOPEN_BASE, align 8
  br label %129

127:                                              ; preds = %116
  %128 = load i64, i64* @TCPOLEN_FASTOPEN_BASE, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 3
  %137 = and i32 %136, -4
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %129
  %142 = load i32, i32* @OPTION_FAST_OPEN_COOKIE, align 4
  %143 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %144 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %14, align 8
  %148 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %149 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %148, i32 0, i32 1
  store %struct.tcp_fastopen_cookie* %147, %struct.tcp_fastopen_cookie** %149, align 8
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %16, align 4
  %152 = sub i32 %151, %150
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %141, %129
  br label %154

154:                                              ; preds = %153, %111, %108
  %155 = load %struct.sock*, %struct.sock** %8, align 8
  %156 = call i32 @tcp_sk(%struct.sock* %155)
  %157 = load %struct.inet_request_sock*, %struct.inet_request_sock** %15, align 8
  %158 = load %struct.tcp_out_options*, %struct.tcp_out_options** %12, align 8
  %159 = call i32 @smc_set_option_cond(i32 %156, %struct.inet_request_sock* %157, %struct.tcp_out_options* %158, i32* %16)
  %160 = load i32, i32* @MAX_TCP_OPTION_SPACE, align 4
  %161 = load i32, i32* %16, align 4
  %162 = sub i32 %160, %161
  ret i32 %162
}

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @tcp_skb_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smc_set_option_cond(i32, %struct.inet_request_sock*, %struct.tcp_out_options*, i32*) #1

declare dso_local i32 @tcp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
