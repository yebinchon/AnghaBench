; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_cwnd_application_limited.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_cwnd_application_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @ccid2_cwnd_application_limited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_cwnd_application_limited(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %8)
  store %struct.ccid2_hc_tx_sock* %9, %struct.ccid2_hc_tx_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rfc3390_bytes_to_packets(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %16 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @max(i8* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %23 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %28 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %31 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 1
  %34 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %35 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 2
  %38 = add nsw i32 %33, %37
  %39 = call i8* @max(i8* %29, i32 %38)
  %40 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %41 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %43 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = ashr i32 %46, 1
  %48 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %49 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %26, %2
  %51 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %52 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %51, i32 0, i32 2
  store i8* null, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %5, align 8
  %55 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = call i32 @ccid2_check_l_ack_ratio(%struct.sock* %56)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @rfc3390_bytes_to_packets(i32) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32 @ccid2_check_l_ack_ratio(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
