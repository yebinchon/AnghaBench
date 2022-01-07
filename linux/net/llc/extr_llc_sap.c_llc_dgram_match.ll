; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_dgram_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_llc_sap.c_llc_dgram_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_sap = type { i32 }
%struct.llc_addr = type { i64, i32 }
%struct.sock = type { i64 }
%struct.llc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SOCK_DGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llc_sap*, %struct.llc_addr*, %struct.sock*)* @llc_dgram_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_dgram_match(%struct.llc_sap* %0, %struct.llc_addr* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.llc_sap*, align 8
  %5 = alloca %struct.llc_addr*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.llc_sock*, align 8
  store %struct.llc_sap* %0, %struct.llc_sap** %4, align 8
  store %struct.llc_addr* %1, %struct.llc_addr** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %6, align 8
  %9 = call %struct.llc_sock* @llc_sk(%struct.sock* %8)
  store %struct.llc_sock* %9, %struct.llc_sock** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %6, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_DGRAM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %17 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.llc_addr*, %struct.llc_addr** %5, align 8
  %21 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.llc_sock*, %struct.llc_sock** %7, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.llc_addr*, %struct.llc_addr** %5, align 8
  %30 = getelementptr inbounds %struct.llc_addr, %struct.llc_addr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @ether_addr_equal(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %24, %15, %3
  %35 = phi i1 [ false, %15 ], [ false, %3 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
