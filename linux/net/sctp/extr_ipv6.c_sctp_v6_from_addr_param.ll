; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_from_addr_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_from_addr_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32 }
%union.sctp_addr_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)* @sctp_v6_from_addr_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_from_addr_param(%union.sctp_addr* %0, %union.sctp_addr_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %5, align 8
  store %union.sctp_addr_param* %1, %union.sctp_addr_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %11 = bitcast %union.sctp_addr* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 8
  %17 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %18 = bitcast %union.sctp_addr* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %union.sctp_addr_param*, %union.sctp_addr_param** %6, align 8
  %21 = bitcast %union.sctp_addr_param* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %25 = bitcast %union.sctp_addr* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %29 = bitcast %union.sctp_addr* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
