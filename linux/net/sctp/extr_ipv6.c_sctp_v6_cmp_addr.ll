; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_cmp_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_cmp_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*, %union.sctp_addr*)* @sctp_v6_cmp_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_cmp_addr(%union.sctp_addr* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca %union.sctp_addr*, align 8
  %4 = alloca %union.sctp_addr*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %3, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %4, align 8
  %5 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %6 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %7 = call i64 @__sctp_v6_cmp_addr(%union.sctp_addr* %5, %union.sctp_addr* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %13, %17
  br label %19

19:                                               ; preds = %9, %2
  %20 = phi i1 [ false, %2 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @__sctp_v6_cmp_addr(%union.sctp_addr*, %union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
