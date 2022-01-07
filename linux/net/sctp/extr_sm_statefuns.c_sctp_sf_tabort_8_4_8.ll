; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_tabort_8_4_8.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_tabort_8_4_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_packet = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*)* @sctp_sf_tabort_8_4_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_tabort_8_4_8(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_packet*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %17, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  store %struct.sctp_packet* null, %struct.sctp_packet** %14, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %15, align 8
  %20 = load %struct.net*, %struct.net** %9, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %23 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net* %20, %struct.sctp_association* %21, %struct.sctp_chunk* %22)
  store %struct.sctp_packet* %23, %struct.sctp_packet** %14, align 8
  %24 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %25 = icmp ne %struct.sctp_packet* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %27, i32* %7, align 4
  br label %80

28:                                               ; preds = %6
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %31 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %29, %struct.sctp_chunk* %30, i32 0)
  store %struct.sctp_chunk* %31, %struct.sctp_chunk** %16, align 8
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %33 = icmp ne %struct.sctp_chunk* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %36 = call i32 @sctp_ootb_pkt_free(%struct.sctp_packet* %35)
  %37 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %37, i32* %7, align 4
  br label %80

38:                                               ; preds = %28
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %40 = call i64 @sctp_test_T_bit(%struct.sctp_chunk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %50 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %38
  %52 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %53 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %62 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %60, %struct.sctp_chunk* %61)
  %63 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %64 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %65 = load %struct.sctp_packet*, %struct.sctp_packet** %14, align 8
  %66 = call i32 @SCTP_PACKET(%struct.sctp_packet* %65)
  %67 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %63, i32 %64, i32 %66)
  %68 = load %struct.net*, %struct.net** %9, align 8
  %69 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %70 = call i32 @SCTP_INC_STATS(%struct.net* %68, i32 %69)
  %71 = load %struct.net*, %struct.net** %9, align 8
  %72 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %76 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sctp_sf_pdiscard(%struct.net* %71, %struct.sctp_endpoint* %72, %struct.sctp_association* %73, i32 %77, i8* %74, %struct.sctp_cmd_seq* %75)
  %79 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %51, %34, %26
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_ootb_pkt_free(%struct.sctp_packet*) #1

declare dso_local i64 @sctp_test_T_bit(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
