; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_reshutack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_reshutack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CMD_SETUP_T2 = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_reshutack(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %16, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %18, %struct.sctp_chunk** %14, align 8
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %20 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %19, i32 4)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %6
  %23 = load %struct.net*, %struct.net** %9, align 8
  %24 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %28 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sctp_sf_violation_chunklen(%struct.net* %23, %struct.sctp_endpoint* %24, %struct.sctp_association* %25, i32 %29, i8* %26, %struct.sctp_cmd_seq* %27)
  store i32 %30, i32* %7, align 4
  br label %57

31:                                               ; preds = %6
  %32 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %34 = call %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association* %32, %struct.sctp_chunk* %33)
  store %struct.sctp_chunk* %34, %struct.sctp_chunk** %15, align 8
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %36 = icmp eq %struct.sctp_chunk* null, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %55

38:                                               ; preds = %31
  %39 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %40 = load i32, i32* @SCTP_CMD_SETUP_T2, align 4
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %42 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %41)
  %43 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %39, i32 %40, i32 %42)
  %44 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %45 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %46 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %47 = call i32 @SCTP_TO(i32 %46)
  %48 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %44, i32 %45, i32 %47)
  %49 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %50 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %52 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %51)
  %53 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %49, i32 %50, i32 %52)
  %54 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %37
  %56 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %38, %22
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_shutdown_ack(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
