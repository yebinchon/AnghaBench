; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_beat_8_3.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_beat_8_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_paramhdr = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sctp_heartbeathdr* }
%struct.sctp_heartbeathdr = type { i32 }

@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_beat_8_3(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_paramhdr*, align 8
  %15 = alloca %struct.sctp_chunk*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca i64, align 8
  %18 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %18, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = bitcast i8* %19 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %15, align 8
  store i64 0, i64* %17, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %21, %struct.sctp_association* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %6
  %26 = load %struct.net*, %struct.net** %9, align 8
  %27 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %31 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sctp_sf_pdiscard(%struct.net* %26, %struct.sctp_endpoint* %27, %struct.sctp_association* %28, i32 %32, i8* %29, %struct.sctp_cmd_seq* %30)
  store i32 %33, i32* %7, align 4
  br label %111

34:                                               ; preds = %6
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %36 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = load %struct.net*, %struct.net** %9, align 8
  %40 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %44 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sctp_sf_violation_chunklen(%struct.net* %39, %struct.sctp_endpoint* %40, %struct.sctp_association* %41, i32 %45, i8* %42, %struct.sctp_cmd_seq* %43)
  store i32 %46, i32* %7, align 4
  br label %111

47:                                               ; preds = %34
  %48 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %49 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.sctp_heartbeathdr*
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.sctp_heartbeathdr* %53, %struct.sctp_heartbeathdr** %56, align 8
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.sctp_heartbeathdr*, %struct.sctp_heartbeathdr** %59, align 8
  %61 = bitcast %struct.sctp_heartbeathdr* %60 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %61, %struct.sctp_paramhdr** %14, align 8
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %63 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ntohs(i32 %66)
  %68 = sub i64 %67, 4
  store i64 %68, i64* %17, align 8
  %69 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %70 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ntohs(i32 %71)
  %73 = load i64, i64* %17, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %47
  %76 = load %struct.net*, %struct.net** %9, align 8
  %77 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %78 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %81 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %82 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sctp_sf_violation_paramlen(%struct.net* %76, %struct.sctp_endpoint* %77, %struct.sctp_association* %78, i32 %83, i8* %79, %struct.sctp_paramhdr* %80, %struct.sctp_cmd_seq* %81)
  store i32 %84, i32* %7, align 4
  br label %111

85:                                               ; preds = %47
  %86 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %87 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %17, align 8
  %90 = call i32 @pskb_pull(%struct.TYPE_6__* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %109

93:                                               ; preds = %85
  %94 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %95 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %96 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %97 = load i64, i64* %17, align 8
  %98 = call %struct.sctp_chunk* @sctp_make_heartbeat_ack(%struct.sctp_association* %94, %struct.sctp_chunk* %95, %struct.sctp_paramhdr* %96, i64 %97)
  store %struct.sctp_chunk* %98, %struct.sctp_chunk** %16, align 8
  %99 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %100 = icmp ne %struct.sctp_chunk* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %109

102:                                              ; preds = %93
  %103 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %104 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %105 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %106 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %105)
  %107 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %103, i32 %104, i32 %106)
  %108 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %108, i32* %7, align 4
  br label %111

109:                                              ; preds = %101, %92
  %110 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %102, %75, %38, %25
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_paramhdr*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @pskb_pull(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_heartbeat_ack(%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_paramhdr*, i64) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
