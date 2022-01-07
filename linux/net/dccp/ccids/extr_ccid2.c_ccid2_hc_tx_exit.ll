; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_exit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @ccid2_hc_tx_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_tx_exit(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %5)
  store %struct.ccid2_hc_tx_sock* %6, %struct.ccid2_hc_tx_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %9 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %8, i32 0, i32 3
  %10 = call i32 @sk_stop_timer(%struct.sock* %7, i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %14 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %19 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %31 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %33 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %32, i32 0, i32 1
  %34 = call i32 @dccp_ackvec_parsed_cleanup(i32* %33)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @sk_stop_timer(%struct.sock*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dccp_ackvec_parsed_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
