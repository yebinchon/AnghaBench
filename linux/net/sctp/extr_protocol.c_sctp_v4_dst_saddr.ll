; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_dst_saddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_dst_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.flowi4 = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sctp_addr*, %struct.flowi4*, i32)* @sctp_v4_dst_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v4_dst_saddr(%union.sctp_addr* %0, %struct.flowi4* %1, i32 %2) #0 {
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %struct.flowi4* %1, %struct.flowi4** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %9 = bitcast %union.sctp_addr* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %13 = bitcast %union.sctp_addr* %12 to %struct.TYPE_4__*
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %16 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
