; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_fast_4_4.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_fast_4_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_SACK = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_data_fast_4_4(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca i32, align 4
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
  %20 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %21 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %19, %struct.sctp_association* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %6
  %24 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %25 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %26 = call i32 (...) @SCTP_NULL()
  %27 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %24, i32 %25, i32 %26)
  %28 = load %struct.net*, %struct.net** %9, align 8
  %29 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %33 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sctp_sf_pdiscard(%struct.net* %28, %struct.sctp_endpoint* %29, %struct.sctp_association* %30, i32 %34, i8* %31, %struct.sctp_cmd_seq* %32)
  store i32 %35, i32* %7, align 4
  br label %99

36:                                               ; preds = %6
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %38 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 0
  %40 = call i32 @sctp_datachk_len(i32* %39)
  %41 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %36
  %44 = load %struct.net*, %struct.net** %9, align 8
  %45 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %49 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sctp_sf_violation_chunklen(%struct.net* %44, %struct.sctp_endpoint* %45, %struct.sctp_association* %46, i32 %50, i8* %47, %struct.sctp_cmd_seq* %48)
  store i32 %51, i32* %7, align 4
  br label %99

52:                                               ; preds = %36
  %53 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %55 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %56 = call i32 @sctp_eat_data(%struct.sctp_association* %53, %struct.sctp_chunk* %54, %struct.sctp_cmd_seq* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  switch i32 %57, label %76 [
    i32 129, label %58
    i32 132, label %58
    i32 133, label %58
    i32 131, label %58
    i32 134, label %58
    i32 130, label %59
    i32 128, label %61
  ]

58:                                               ; preds = %52, %52, %52, %52, %52
  br label %78

59:                                               ; preds = %52
  %60 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %60, i32* %7, align 4
  br label %99

61:                                               ; preds = %52
  %62 = load %struct.net*, %struct.net** %9, align 8
  %63 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %64 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %65 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %66 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %68 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %73 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %72, i32 0, i32 0
  %74 = call i32 @sctp_datahdr_len(i32* %73)
  %75 = call i32 @sctp_sf_abort_violation(%struct.net* %62, %struct.sctp_endpoint* %63, %struct.sctp_association* %64, %struct.sctp_chunk* %65, %struct.sctp_cmd_seq* %66, i32* %71, i32 %74)
  store i32 %75, i32* %7, align 4
  br label %99

76:                                               ; preds = %52
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %58
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %80 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %85 = load i32, i32* @SCTP_CMD_GEN_SHUTDOWN, align 4
  %86 = call i32 (...) @SCTP_NULL()
  %87 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %84, i32 %85, i32 %86)
  %88 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %89 = load i32, i32* @SCTP_CMD_GEN_SACK, align 4
  %90 = call i32 (...) @SCTP_FORCE()
  %91 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %88, i32 %89, i32 %90)
  %92 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %93 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %94 = load i32, i32* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 4
  %95 = call i32 @SCTP_TO(i32 %94)
  %96 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %83, %78
  %98 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %61, %59, %43, %23
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_datachk_len(i32*) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_eat_data(%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_abort_violation(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, i32*, i32) #1

declare dso_local i32 @sctp_datahdr_len(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @SCTP_FORCE(...) #1

declare dso_local i32 @SCTP_TO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
