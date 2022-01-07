; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.dccp_sock = type { i64, i32 }
%struct.ccid3_hc_tx_sock = type { i64, i64, i64, i64, i32, i8*, i64, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i64 }

@EBADMSG = common dso_local global i32 0, align 4
@TFRC_SSTATE_NO_SENT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@TFRC_INITIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SYN RTT = %uus\0A\00", align 1
@DCCP_FALLBACK_RTT = common dso_local global i64 0, align 8
@TFRC_SSTATE_NO_FBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"delay=%ld\0A\00", align 1
@TFRC_T_DELTA = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@CCID_PACKET_SEND_AT_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @ccid3_hc_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_tx_send_packet(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dccp_sock*, align 8
  %7 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %10)
  store %struct.dccp_sock* %11, %struct.dccp_sock** %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %12)
  store %struct.ccid3_hc_tx_sock* %13, %struct.ccid3_hc_tx_sock** %7, align 8
  %14 = call i8* (...) @ktime_get_real()
  store i8* %14, i8** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBADMSG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %132

25:                                               ; preds = %2
  %26 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %27 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TFRC_SSTATE_NO_SENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %34 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %33, i32 0, i32 9
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i32, i32* @TFRC_INITIAL_TIMEOUT, align 4
  %37 = call i64 @usecs_to_jiffies(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @sk_reset_timer(%struct.sock* %32, i32* %34, i64 %38)
  %40 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %41 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %44 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %43, i32 0, i32 8
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %47 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %52 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %54 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %31
  %58 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %59 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %60)
  %62 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %63 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %66 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = call i64 @rfc3390_initial_rate(%struct.sock* %67)
  %69 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %70 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %73 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %87

74:                                               ; preds = %31
  %75 = load i64, i64* @DCCP_FALLBACK_RTT, align 8
  %76 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %77 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %79 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %82 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %81, i32 0, i32 3
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %84 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = shl i64 %85, 6
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %74, %57
  %88 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %89 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %88)
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = load i32, i32* @TFRC_SSTATE_NO_FBACK, align 4
  %92 = call i32 @ccid3_hc_tx_set_state(%struct.sock* %90, i32 %91)
  br label %113

93:                                               ; preds = %25
  %94 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %95 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %94, i32 0, i32 5
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i64 @ktime_us_delta(i8* %96, i8* %97)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @TFRC_T_DELTA, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @USEC_PER_MSEC, align 4
  %108 = sdiv i32 %106, %107
  store i32 %108, i32* %3, align 4
  br label %132

109:                                              ; preds = %93
  %110 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @ccid3_hc_tx_update_win_count(%struct.ccid3_hc_tx_sock* %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %87
  %114 = load %struct.dccp_sock*, %struct.dccp_sock** %6, align 8
  %115 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  %116 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %117 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = call %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %123 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %122, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %126 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @ktime_add_us(i8* %124, i32 %127)
  %129 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %7, align 8
  %130 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @CCID_PACKET_SEND_AT_ONCE, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %113, %104, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i8* @ktime_get_real(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i64) #1

declare dso_local i64 @rfc3390_initial_rate(%struct.sock*) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

declare dso_local i32 @ccid3_hc_tx_set_state(%struct.sock*, i32) #1

declare dso_local i64 @ktime_us_delta(i8*, i8*) #1

declare dso_local i32 @ccid3_hc_tx_update_win_count(%struct.ccid3_hc_tx_sock*, i8*) #1

declare dso_local %struct.TYPE_2__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @ktime_add_us(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
