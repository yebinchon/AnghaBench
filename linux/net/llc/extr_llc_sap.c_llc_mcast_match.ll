; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_mcast_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_mcast_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.llc_addr = type { i64 }
%struct.sk_buff = type { i64 }
%struct.sock = type { i64 }
%struct.llc_sock = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_sap*, %struct.llc_addr*, %struct.sk_buff*, %struct.sock*)* @llc_mcast_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_mcast_match(%struct.llc_sap* %0, %struct.llc_addr* %1, %struct.sk_buff* %2, %struct.sock* %3) #0 {
  %5 = alloca %struct.llc_sap*, align 8
  %6 = alloca %struct.llc_addr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.llc_sock*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %5, align 8
  store %struct.llc_addr* %1, %struct.llc_addr** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.sock* %3, %struct.sock** %8, align 8
  %10 = load %struct.sock*, %struct.sock** %8, align 8
  %11 = call %struct.llc_sock* @llc_sk(%struct.sock* %10)
  store %struct.llc_sock* %11, %struct.llc_sock** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %8, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_DGRAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %19 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.llc_addr*, %struct.llc_addr** %6, align 8
  %23 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.llc_sock*, %struct.llc_sock** %9, align 8
  %28 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br label %34

34:                                               ; preds = %26, %17, %4
  %35 = phi i1 [ false, %17 ], [ false, %4 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
