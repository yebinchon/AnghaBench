; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_get_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.sctp_addr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %struct.sock*)* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sctp_af* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i16)* @sctp_get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_get_port(%struct.sock* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %union.sctp_addr, align 4
  %6 = alloca %struct.sctp_af*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_6__* @sctp_sk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.sctp_af*, %struct.sctp_af** %11, align 8
  store %struct.sctp_af* %12, %struct.sctp_af** %6, align 8
  %13 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %14 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %13, i32 0, i32 0
  %15 = load i32 (%union.sctp_addr*, %struct.sock*)*, i32 (%union.sctp_addr*, %struct.sock*)** %14, align 8
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = call i32 %15(%union.sctp_addr* %5, %struct.sock* %16)
  %18 = load i16, i16* %4, align 2
  %19 = call i32 @htons(i16 zeroext %18)
  %20 = bitcast %union.sctp_addr* %5 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @sctp_get_port_local(%struct.sock* %22, %union.sctp_addr* %5)
  ret i32 %23
}

declare dso_local %struct.TYPE_6__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @sctp_get_port_local(%struct.sock*, %union.sctp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
