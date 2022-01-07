; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_..dccp.h_dccp_csum_outgoing.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_..dccp.h_dccp_csum_outgoing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @dccp_csum_outgoing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_csum_outgoing(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call i32 @dccp_csum_coverage(%struct.sk_buff* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp uge i32 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = call %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  %30 = call i32 @skb_checksum(%struct.sk_buff* %16, i32 0, i32 %29, i32 0)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @dccp_csum_coverage(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
