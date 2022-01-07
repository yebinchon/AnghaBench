; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_no_feedback_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_no_feedback_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid3_hc_tx_sock = type { i64, i32, i64, i32, i32, i32, i32, i32, i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@tx_no_feedback_timer = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s(%p, state=%s) - entry\0A\00", align 1
@DCCPF_OPEN = common dso_local global i32 0, align 4
@DCCPF_PARTOPEN = common dso_local global i32 0, align 4
@TFRC_SSTATE_FBACK = common dso_local global i64 0, align 8
@TFRC_SSTATE_NO_FBACK = common dso_local global i32 0, align 4
@TFRC_T_MBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Reduced X to %llu/64 bytes/sec\0A\00", align 1
@TFRC_INITIAL_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@hc = common dso_local global %struct.ccid3_hc_tx_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ccid3_hc_tx_no_feedback_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_tx_no_feedback_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %7 = ptrtoint %struct.ccid3_hc_tx_sock* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_no_feedback_timer, align 4
  %10 = call %struct.ccid3_hc_tx_sock* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ccid3_hc_tx_sock* %10, %struct.ccid3_hc_tx_sock** %3, align 8
  %11 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %12 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %11, i32 0, i32 9
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %4, align 8
  %14 = load i32, i32* @USEC_PER_SEC, align 4
  %15 = sdiv i32 %14, 5
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @bh_lock_sock(%struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i64 @sock_owned_by_user(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %147

23:                                               ; preds = %1
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @dccp_role(%struct.sock* %24)
  %26 = sext i32 %25 to i64
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %29 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ccid3_tx_state_name(i64 %30)
  %32 = call i32 (i8*, i64, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %26, %struct.sock* %27, i32 %31)
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @DCCPF_OPEN, align 4
  %38 = load i32, i32* @DCCPF_PARTOPEN, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  br label %156

44:                                               ; preds = %23
  %45 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %46 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TFRC_SSTATE_FBACK, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = load i32, i32* @TFRC_SSTATE_NO_FBACK, align 4
  %53 = call i32 @ccid3_hc_tx_set_state(%struct.sock* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %56 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %61 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59, %54
  %65 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %66 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %67, 2
  %69 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %70 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 6
  %74 = load i32, i32* @TFRC_T_MBI, align 4
  %75 = sdiv i32 %73, %74
  %76 = call i8* @max(i32 %68, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %79 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %81 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %80)
  br label %121

82:                                               ; preds = %59
  %83 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %84 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %87 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = ashr i32 %88, 5
  %90 = icmp sgt i32 %85, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %93 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 2
  %96 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %97 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 6
  %101 = load i32, i32* @TFRC_T_MBI, align 4
  %102 = mul nsw i32 2, %101
  %103 = sdiv i32 %100, %102
  %104 = call i8* @max(i32 %95, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %107 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  br label %118

108:                                              ; preds = %82
  %109 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %110 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %113 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %115 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 4
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %108, %91
  %119 = load %struct.sock*, %struct.sock** %4, align 8
  %120 = call i32 @ccid3_hc_tx_update_x(%struct.sock* %119, i32* null)
  br label %121

121:                                              ; preds = %118, %64
  %122 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %123 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = call i32 (i8*, i64, ...) @ccid3_pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %125)
  %127 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %128 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = load i64, i64* @TFRC_INITIAL_TIMEOUT, align 8
  store i64 %135, i64* %5, align 8
  br label %146

136:                                              ; preds = %121
  %137 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %138 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %141 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 2, %142
  %144 = call i8* @max(i32 %139, i32 %143)
  %145 = ptrtoint i8* %144 to i64
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %136, %134
  br label %147

147:                                              ; preds = %146, %22
  %148 = load %struct.sock*, %struct.sock** %4, align 8
  %149 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %3, align 8
  %150 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %149, i32 0, i32 7
  %151 = load i64, i64* @jiffies, align 8
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @usecs_to_jiffies(i64 %152)
  %154 = add nsw i64 %151, %153
  %155 = call i32 @sk_reset_timer(%struct.sock* %148, i32* %150, i64 %154)
  br label %156

156:                                              ; preds = %147, %43
  %157 = load %struct.sock*, %struct.sock** %4, align 8
  %158 = call i32 @bh_unlock_sock(%struct.sock* %157)
  %159 = load %struct.sock*, %struct.sock** %4, align 8
  %160 = call i32 @sock_put(%struct.sock* %159)
  ret void
}

declare dso_local %struct.ccid3_hc_tx_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i64, ...) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

declare dso_local i32 @ccid3_tx_state_name(i64) #1

declare dso_local i32 @ccid3_hc_tx_set_state(%struct.sock*, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

declare dso_local i32 @ccid3_hc_tx_update_x(%struct.sock*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
