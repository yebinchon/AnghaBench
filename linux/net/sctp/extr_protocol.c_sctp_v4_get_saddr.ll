; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_get_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_get_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_sock = type { i32 }
%struct.sctp_transport = type { i64, %union.sctp_addr }
%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.flowi = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rtable = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_sock*, %struct.sctp_transport*, %struct.flowi*)* @sctp_v4_get_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v4_get_saddr(%struct.sctp_sock* %0, %struct.sctp_transport* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.sctp_sock*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.rtable*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %9, i32 0, i32 1
  store %union.sctp_addr* %10, %union.sctp_addr** %7, align 8
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtable*
  store %struct.rtable* %14, %struct.rtable** %8, align 8
  %15 = load %struct.rtable*, %struct.rtable** %8, align 8
  %16 = icmp ne %struct.rtable* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %20 = bitcast %union.sctp_addr* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.flowi*, %struct.flowi** %6, align 8
  %23 = getelementptr inbounds %struct.flowi, %struct.flowi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %28 = bitcast %union.sctp_addr* %27 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %17, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
