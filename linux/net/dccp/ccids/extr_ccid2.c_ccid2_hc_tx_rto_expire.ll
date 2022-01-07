; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_rto_expire.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_rto_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, %struct.sock* }
%struct.sock = type { i64 }
%struct.timer_list = type { i32 }

@tx_rtotimer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RTO_EXPIRE\0A\00", align 1
@DCCP_CLOSED = common dso_local global i64 0, align 8
@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@hc = common dso_local global %struct.ccid2_hc_tx_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ccid2_hc_tx_rto_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_tx_rto_expire(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %7 = ptrtoint %struct.ccid2_hc_tx_sock* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @tx_rtotimer, align 4
  %10 = call %struct.ccid2_hc_tx_sock* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ccid2_hc_tx_sock* %10, %struct.ccid2_hc_tx_sock** %3, align 8
  %11 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %12 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %11, i32 0, i32 10
  %13 = load %struct.sock*, %struct.sock** %12, align 8
  store %struct.sock* %13, %struct.sock** %4, align 8
  %14 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %15 = call i32 @ccid2_cwnd_network_limited(%struct.ccid2_hc_tx_sock* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @bh_lock_sock(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i64 @sock_owned_by_user(%struct.sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %24 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %23, i32 0, i32 4
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %26, 5
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @sk_reset_timer(%struct.sock* %22, i32* %24, i64 %29)
  br label %101

31:                                               ; preds = %1
  %32 = call i32 @ccid2_pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DCCP_CLOSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %101

39:                                               ; preds = %31
  %40 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %41 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %45 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DCCP_RTO_MAX, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @DCCP_RTO_MAX, align 4
  %51 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %52 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %55 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 2
  %58 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %59 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %66 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %69 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %71 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %70, i32 0, i32 9
  store i64 0, i64* %71, align 8
  %72 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %73 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %76 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %78 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %80 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %82 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %81, i32 0, i32 3
  store i32 -1, i32* %82, align 4
  %83 = load %struct.sock*, %struct.sock** %4, align 8
  %84 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %83, i32 1)
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load %struct.sock*, %struct.sock** %4, align 8
  %89 = call i32 @dccp_tasklet_schedule(%struct.sock* %88)
  br label %90

90:                                               ; preds = %87, %67
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %93 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %92, i32 0, i32 4
  %94 = load i64, i64* @jiffies, align 8
  %95 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %96 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = call i32 @sk_reset_timer(%struct.sock* %91, i32* %93, i64 %99)
  br label %101

101:                                              ; preds = %90, %38, %21
  %102 = load %struct.sock*, %struct.sock** %4, align 8
  %103 = call i32 @bh_unlock_sock(%struct.sock* %102)
  %104 = load %struct.sock*, %struct.sock** %4, align 8
  %105 = call i32 @sock_put(%struct.sock* %104)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ccid2_cwnd_network_limited(%struct.ccid2_hc_tx_sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i32 @ccid2_pr_debug(i8*) #1

declare dso_local i32 @ccid2_change_l_ack_ratio(%struct.sock*, i32) #1

declare dso_local i32 @dccp_tasklet_schedule(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
