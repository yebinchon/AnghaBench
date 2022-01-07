; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_failed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.sctp_chunk = type { i32 }
%union.sctp_subtype = type { i64 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SCTP_EVENT_T_CHUNK = common dso_local global i32 0, align 4
@SCTP_CID_ABORT = common dso_local global i64 0, align 8
@SCTP_COMM_LOST = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_NEW_STATE = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_CMD_DELETE_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_cmd_seq*, %struct.sctp_association*, i32, i64, %struct.sctp_chunk*, i32)* @sctp_cmd_assoc_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_assoc_failed(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, i32 %2, i64 %3, %struct.sctp_chunk* %4, i32 %5) #0 {
  %7 = alloca %union.sctp_subtype, align 8
  %8 = alloca %struct.sctp_cmd_seq*, align 8
  %9 = alloca %struct.sctp_association*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_ulpevent*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %7, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %8, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.sctp_chunk* %4, %struct.sctp_chunk** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32)*, i32 (i32*, i32)** %20, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 3
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32 %21(i32* %23, i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SCTP_EVENT_T_CHUNK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %6
  %30 = bitcast %union.sctp_subtype* %7 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SCTP_CID_ABORT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %36 = load i32, i32* @SCTP_COMM_LOST, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %35, i32 0, i32 %36, i32 %37, i32 0, i32 0, %struct.sctp_chunk* %38, i32 %39)
  store %struct.sctp_ulpevent* %40, %struct.sctp_ulpevent** %13, align 8
  br label %47

41:                                               ; preds = %29, %6
  %42 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %43 = load i32, i32* @SCTP_COMM_LOST, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %42, i32 0, i32 %43, i32 %44, i32 0, i32 0, %struct.sctp_chunk* null, i32 %45)
  store %struct.sctp_ulpevent* %46, %struct.sctp_ulpevent** %13, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %49 = icmp ne %struct.sctp_ulpevent* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %52 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %53 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %13, align 8
  %54 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %53)
  %55 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %51, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %67 = call %struct.sctp_chunk* @sctp_make_violation_max_retrans(%struct.sctp_association* %65, %struct.sctp_chunk* %66)
  store %struct.sctp_chunk* %67, %struct.sctp_chunk** %14, align 8
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %69 = icmp ne %struct.sctp_chunk* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %72 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %74 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %73)
  %75 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %79 = load i32, i32* @SCTP_CMD_NEW_STATE, align 4
  %80 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %81 = call i32 @SCTP_STATE(i32 %80)
  %82 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %78, i32 %79, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %8, align 8
  %88 = load i32, i32* @SCTP_CMD_DELETE_TCB, align 4
  %89 = call i32 (...) @SCTP_NULL()
  %90 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_violation_max_retrans(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_STATE(i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
