; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_send_stale_cookie_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_send_stale_cookie_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.sctp_signed_cookie* }
%struct.sctp_signed_cookie = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_packet = type { i32 }

@SCTP_CMD_SEND_PKT = common dso_local global i32 0, align 4
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, %struct.sctp_chunk*)* @sctp_send_stale_cookie_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_send_stale_cookie_err(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, %struct.sctp_chunk* %3, %struct.sctp_cmd_seq* %4, %struct.sctp_chunk* %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_cmd_seq*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.sctp_packet*, align 8
  %14 = alloca %struct.sctp_signed_cookie*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %8, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %9, align 8
  store %struct.sctp_chunk* %3, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_cmd_seq* %4, %struct.sctp_cmd_seq** %11, align 8
  store %struct.sctp_chunk* %5, %struct.sctp_chunk** %12, align 8
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %16 = icmp ne %struct.sctp_chunk* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %6
  %18 = load %struct.net*, %struct.net** %7, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %21 = call %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net* %18, %struct.sctp_association* %19, %struct.sctp_chunk* %20)
  store %struct.sctp_packet* %21, %struct.sctp_packet** %13, align 8
  %22 = load %struct.sctp_packet*, %struct.sctp_packet** %13, align 8
  %23 = icmp ne %struct.sctp_packet* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %17
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %27, align 8
  store %struct.sctp_signed_cookie* %28, %struct.sctp_signed_cookie** %14, align 8
  %29 = load %struct.sctp_signed_cookie*, %struct.sctp_signed_cookie** %14, align 8
  %30 = getelementptr inbounds %struct.sctp_signed_cookie, %struct.sctp_signed_cookie* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sctp_packet*, %struct.sctp_packet** %13, align 8
  %34 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %36 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.sctp_packet*, %struct.sctp_packet** %13, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %45 = call i32 @sctp_packet_append_chunk(%struct.sctp_packet* %43, %struct.sctp_chunk* %44)
  %46 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %11, align 8
  %47 = load i32, i32* @SCTP_CMD_SEND_PKT, align 4
  %48 = load %struct.sctp_packet*, %struct.sctp_packet** %13, align 8
  %49 = call i32 @SCTP_PACKET(%struct.sctp_packet* %48)
  %50 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %46, i32 %47, i32 %49)
  %51 = load %struct.net*, %struct.net** %7, align 8
  %52 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %53 = call i32 @SCTP_INC_STATS(%struct.net* %51, i32 %52)
  br label %57

54:                                               ; preds = %17
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %56 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %55)
  br label %57

57:                                               ; preds = %54, %24
  br label %58

58:                                               ; preds = %57, %6
  ret void
}

declare dso_local %struct.sctp_packet* @sctp_ootb_pkt_new(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_PACKET(%struct.sctp_packet*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
