; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_get_nexthop.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_get_nexthop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_nh = type { i32 }
%struct.mpls_route = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpls_nh* (%struct.mpls_route*, i32)* @mpls_get_nexthop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpls_nh* @mpls_get_nexthop(%struct.mpls_route* %0, i32 %1) #0 {
  %3 = alloca %struct.mpls_route*, align 8
  %4 = alloca i32, align 4
  store %struct.mpls_route* %0, %struct.mpls_route** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mpls_route*, %struct.mpls_route** %3, align 8
  %6 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mpls_route*, %struct.mpls_route** %3, align 8
  %11 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  %16 = bitcast i32* %15 to %struct.mpls_nh*
  ret %struct.mpls_nh* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
