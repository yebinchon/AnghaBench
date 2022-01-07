; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { i32 }
%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, %struct.sock*, i64, i32, i32, i32, i32, i32, i32 }
%struct.dccp_sock = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DCCP_TIMEOUT_INIT = common dso_local global i32 0, align 4
@ccid2_jiffies32 = common dso_local global i32 0, align 4
@ccid2_hc_tx_rto_expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid*, %struct.sock*)* @ccid2_hc_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_hc_tx_init(%struct.ccid* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccid*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i64, align 8
  store %struct.ccid* %0, %struct.ccid** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %9 = load %struct.ccid*, %struct.ccid** %4, align 8
  %10 = call %struct.ccid2_hc_tx_sock* @ccid_priv(%struct.ccid* %9)
  store %struct.ccid2_hc_tx_sock* %10, %struct.ccid2_hc_tx_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %7, align 8
  %13 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %14 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %16 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rfc3390_bytes_to_packets(i32 %17)
  %19 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %20 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %22 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %25 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %27 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @DIV_ROUND_UP(i32 %28, i32 2)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %36 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %2
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %43 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %46 = call i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %44
  %52 = load i32, i32* @DCCP_TIMEOUT_INIT, align 4
  %53 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %54 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %56 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load i32, i32* @ccid2_jiffies32, align 4
  %58 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %59 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 7
  store i32 %57, i32* %61, align 4
  %62 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %63 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %62, i32 0, i32 8
  store i32 %57, i32* %63, align 8
  %64 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %65 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %68 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %67, i32 0, i32 4
  store %struct.sock* %66, %struct.sock** %68, align 8
  %69 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %70 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %69, i32 0, i32 3
  %71 = load i32, i32* @ccid2_hc_tx_rto_expire, align 4
  %72 = call i32 @timer_setup(i32* %70, i32 %71, i32 0)
  %73 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %74 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %73, i32 0, i32 2
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %51, %48
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid_priv(%struct.ccid*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @rfc3390_bytes_to_packets(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
