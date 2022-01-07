; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_6_2.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_data_6_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64*, i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%union.sctp_arg = type { i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_MIB_IN_DATA_CHUNK_DISCARDS = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_ABORT = common dso_local global i32 0, align 4
@SCTP_DATA_SACK_IMM = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_GEN_SACK = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_data_6_2(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %union.sctp_arg, align 4
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.sctp_arg, align 4
  %18 = alloca %union.sctp_arg, align 4
  %19 = alloca %union.sctp_arg, align 4
  %20 = alloca %union.sctp_arg, align 4
  %21 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %21, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %22 = call i32 (...) @SCTP_NOFORCE()
  %23 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %14, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %25, %struct.sctp_chunk** %15, align 8
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %28 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %26, %struct.sctp_association* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %6
  %31 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %32 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %33 = call i32 (...) @SCTP_NULL()
  %34 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %17, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %17, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %31, i32 %32, i32 %36)
  %38 = load %struct.net*, %struct.net** %9, align 8
  %39 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %43 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sctp_sf_pdiscard(%struct.net* %38, %struct.sctp_endpoint* %39, %struct.sctp_association* %40, i32 %44, i8* %41, %struct.sctp_cmd_seq* %42)
  store i32 %45, i32* %7, align 4
  br label %168

46:                                               ; preds = %6
  %47 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 1
  %50 = call i32 @sctp_datachk_len(i32* %49)
  %51 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load %struct.net*, %struct.net** %9, align 8
  %55 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %56 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %59 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sctp_sf_violation_chunklen(%struct.net* %54, %struct.sctp_endpoint* %55, %struct.sctp_association* %56, i32 %60, i8* %57, %struct.sctp_cmd_seq* %58)
  store i32 %61, i32* %7, align 4
  br label %168

62:                                               ; preds = %46
  %63 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %65 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %66 = call i32 @sctp_eat_data(%struct.sctp_association* %63, %struct.sctp_chunk* %64, %struct.sctp_cmd_seq* %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  switch i32 %67, label %94 [
    i32 129, label %68
    i32 132, label %69
    i32 134, label %69
    i32 133, label %73
    i32 131, label %73
    i32 130, label %77
    i32 128, label %79
  ]

68:                                               ; preds = %62
  br label %96

69:                                               ; preds = %62, %62
  %70 = load %struct.net*, %struct.net** %9, align 8
  %71 = load i32, i32* @SCTP_MIB_IN_DATA_CHUNK_DISCARDS, align 4
  %72 = call i32 @SCTP_INC_STATS(%struct.net* %70, i32 %71)
  br label %155

73:                                               ; preds = %62, %62
  %74 = load %struct.net*, %struct.net** %9, align 8
  %75 = load i32, i32* @SCTP_MIB_IN_DATA_CHUNK_DISCARDS, align 4
  %76 = call i32 @SCTP_INC_STATS(%struct.net* %74, i32 %75)
  br label %140

77:                                               ; preds = %62
  %78 = load i32, i32* @SCTP_DISPOSITION_ABORT, align 4
  store i32 %78, i32* %7, align 4
  br label %168

79:                                               ; preds = %62
  %80 = load %struct.net*, %struct.net** %9, align 8
  %81 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %82 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %83 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %84 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %86 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 1
  %92 = call i32 @sctp_datahdr_len(i32* %91)
  %93 = call i32 @sctp_sf_abort_violation(%struct.net* %80, %struct.sctp_endpoint* %81, %struct.sctp_association* %82, %struct.sctp_chunk* %83, %struct.sctp_cmd_seq* %84, i32* %89, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %168

94:                                               ; preds = %62
  %95 = call i32 (...) @BUG()
  br label %96

96:                                               ; preds = %94, %68
  %97 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %98 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SCTP_DATA_SACK_IMM, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = call i32 (...) @SCTP_FORCE()
  %107 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %18, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = bitcast %union.sctp_arg* %14 to i8*
  %109 = bitcast %union.sctp_arg* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  br label %110

110:                                              ; preds = %105, %96
  %111 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %120 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %121 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %122 = call i32 @SCTP_TO(i64 %121)
  %123 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %19, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %19, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %119, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %118, %110
  %128 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %129 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %134 = load i32, i32* @SCTP_CMD_GEN_SACK, align 4
  %135 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %14, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %133, i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %139, i32* %7, align 4
  br label %168

140:                                              ; preds = %73
  %141 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %142 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %147 = load i32, i32* @SCTP_CMD_GEN_SACK, align 4
  %148 = call i32 (...) @SCTP_FORCE()
  %149 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %20, i32 0, i32 0
  store i32 %148, i32* %149, align 4
  %150 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %20, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %146, i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %145, %140
  %154 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %154, i32* %7, align 4
  br label %168

155:                                              ; preds = %69
  %156 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %157 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %162 = load i32, i32* @SCTP_CMD_GEN_SACK, align 4
  %163 = getelementptr inbounds %union.sctp_arg, %union.sctp_arg* %14, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %161, i32 %162, i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %153, %138, %79, %77, %53, %30
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @SCTP_NOFORCE(...) #1

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_datachk_len(i32*) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_eat_data(%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_sf_abort_violation(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_cmd_seq*, i32*, i32) #1

declare dso_local i32 @sctp_datahdr_len(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @SCTP_FORCE(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SCTP_TO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
