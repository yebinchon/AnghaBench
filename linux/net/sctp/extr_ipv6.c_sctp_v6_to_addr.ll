; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ipv6.c_sctp_v6_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.in6_addr, i64, i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.in6_addr*, i32)* @sctp_v6_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_to_addr(%union.sctp_addr* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AF_INET6, align 4
  %8 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %9 = bitcast %union.sctp_addr* %8 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %13 = bitcast %union.sctp_addr* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 8
  %15 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %16 = bitcast %union.sctp_addr* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %22 = bitcast %struct.in6_addr* %20 to i8*
  %23 = bitcast %struct.in6_addr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %25 = bitcast %union.sctp_addr* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
