; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_send_restart_abort.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_send_restart_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)* }
%union.sctp_addr_param = type { i32 }
%struct.sctp_errhdr = type { i32, i32, i64 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_packet = type { i32 }
%struct.TYPE_6__ = type { %struct.sctp_endpoint* }

@SCTP_ERROR_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_CMD_DISCARD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %union.sctp_addr*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*)* @sctp_sf_send_restart_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_send_restart_abort(%struct.net* %0, %union.sctp_addr* %1, %struct.sctp_chunk* %2, %struct.sctp_cmd_seq* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_cmd_seq*, align 8
  %9 = alloca %struct.sctp_af*, align 8
  %10 = alloca %union.sctp_addr_param*, align 8
  %11 = alloca %struct.sctp_errhdr*, align 8
  %12 = alloca [20 x i8], align 16
  %13 = alloca %struct.sctp_endpoint*, align 8
  %14 = alloca %struct.sctp_packet*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %7, align 8
  store %struct.sctp_cmd_seq* %3, %struct.sctp_cmd_seq** %8, align 8
  %16 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %17 = bitcast %union.sctp_addr* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sctp_af* @sctp_get_af_specific(i32 %19)
  store %struct.sctp_af* %20, %struct.sctp_af** %9, align 8
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %22 = bitcast i8* %21 to %struct.sctp_errhdr*
  store %struct.sctp_errhdr* %22, %struct.sctp_errhdr** %11, align 8
  %23 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %11, align 8
  %24 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %26, %union.sctp_addr_param** %10, align 8
  %27 = load %struct.sctp_af*, %struct.sctp_af** %9, align 8
  %28 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %27, i32 0, i32 0
  %29 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %28, align 8
  %30 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %31 = load %union.sctp_addr_param*, %union.sctp_addr_param** %10, align 8
  %32 = call i32 %29(%union.sctp_addr* %30, %union.sctp_addr_param* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 16
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @SCTP_ERROR_RESTART, align 4
  %38 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %11, align 8
  %39 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %11, align 8
  %43 = getelementptr inbounds %struct.sctp_errhdr, %struct.sctp_errhdr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.net*, %struct.net** %5, align 8
  %45 = getelementptr inbounds %struct.net, %struct.net* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_6__* @sctp_sk(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %49, align 8
  store %struct.sctp_endpoint* %50, %struct.sctp_endpoint** %13, align 8
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %13, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %54 = load %struct.sctp_errhdr*, %struct.sctp_errhdr** %11, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net* %51, %struct.sctp_endpoint* %52, i32* null, %struct.sctp_chunk* %53, %struct.sctp_errhdr* %54, i32 %55)
  store %struct.sctp_packet* %56, %struct.sctp_packet** %14, align 8
  %57 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %58 = icmp ne %struct.sctp_packet* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %4
  br label %73

60:                                               ; preds = %4
  %61 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %62 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %63 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %64 = call i32 @SCTP_PACKET(%struct.sctp_packet* %63)
  %65 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %61, i32 %62, i32 %64)
  %66 = load %struct.net*, %struct.net** %5, align 8
  %67 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %68 = call i32 @SCTP_INC_STATS(%struct.net* %66, i32 %67)
  %69 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %70 = load i32, i32* @SCTP_CMD_DISCARD_PACKET, align 4
  %71 = call i32 (...) @SCTP_NULL()
  %72 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %60, %59
  ret i32 0
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_6__* @sctp_sk(i32) #1

declare dso_local %struct.sctp_packet* @sctp_abort_pkt_new(%struct.net*, %struct.sctp_endpoint*, i32*, %struct.sctp_chunk*, %struct.sctp_errhdr*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
