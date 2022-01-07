; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_do_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_paramhdr = type { i32 }
%struct.sctp_chunk = type { i32, i32, i32*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_addiphdr = type { i32 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_asconf(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
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
  %17 = alloca %struct.sctp_addiphdr*, align 8
  %18 = alloca i64, align 8
  %19 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %19, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  store %struct.sctp_paramhdr* null, %struct.sctp_paramhdr** %14, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %15, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %16, align 8
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %24 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %22, %struct.sctp_association* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %6
  %27 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %28 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %29 = call i32 (...) @SCTP_NULL()
  %30 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %27, i32 %28, i32 %29)
  %31 = load %struct.net*, %struct.net** %9, align 8
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %36 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sctp_sf_pdiscard(%struct.net* %31, %struct.sctp_endpoint* %32, %struct.sctp_association* %33, i32 %37, i8* %34, %struct.sctp_cmd_seq* %35)
  store i32 %38, i32* %7, align 4
  br label %182

39:                                               ; preds = %6
  %40 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.net*, %struct.net** %9, align 8
  %47 = getelementptr inbounds %struct.net, %struct.net* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %45
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %53 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.net*, %struct.net** %9, align 8
  %58 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %59 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %62 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sctp_sf_discard_chunk(%struct.net* %57, %struct.sctp_endpoint* %58, %struct.sctp_association* %59, i32 %63, i8* %60, %struct.sctp_cmd_seq* %61)
  store i32 %64, i32* %7, align 4
  br label %182

65:                                               ; preds = %51, %45
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %67 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %66, i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load %struct.net*, %struct.net** %9, align 8
  %71 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %72 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %75 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sctp_sf_violation_chunklen(%struct.net* %70, %struct.sctp_endpoint* %71, %struct.sctp_association* %72, i32 %76, i8* %73, %struct.sctp_cmd_seq* %74)
  store i32 %77, i32* %7, align 4
  br label %182

78:                                               ; preds = %65
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %80 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %79, i32 0, i32 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.sctp_addiphdr*
  store %struct.sctp_addiphdr* %84, %struct.sctp_addiphdr** %17, align 8
  %85 = load %struct.sctp_addiphdr*, %struct.sctp_addiphdr** %17, align 8
  %86 = getelementptr inbounds %struct.sctp_addiphdr, %struct.sctp_addiphdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohl(i32 %87)
  store i64 %88, i64* %18, align 8
  %89 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %91 = call i32 @sctp_verify_asconf(%struct.sctp_association* %89, %struct.sctp_chunk* %90, i32 1, %struct.sctp_paramhdr** %14)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %78
  %94 = load %struct.net*, %struct.net** %9, align 8
  %95 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %96 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %14, align 8
  %99 = bitcast %struct.sctp_paramhdr* %98 to i8*
  %100 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %101 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @sctp_sf_violation_paramlen(%struct.net* %94, %struct.sctp_endpoint* %95, %struct.sctp_association* %96, i32 %102, i8* %97, i8* %99, %struct.sctp_cmd_seq* %100)
  store i32 %103, i32* %7, align 4
  br label %182

104:                                              ; preds = %78
  %105 = load i64, i64* %18, align 8
  %106 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %107 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %104
  %113 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %114 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %119 = call i32 @sctp_assoc_clean_asconf_ack_cache(%struct.sctp_association* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %123 = call %struct.sctp_chunk* @sctp_process_asconf(%struct.sctp_association* %121, %struct.sctp_chunk* %122)
  store %struct.sctp_chunk* %123, %struct.sctp_chunk** %15, align 8
  %124 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %125 = icmp ne %struct.sctp_chunk* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %127, i32* %7, align 4
  br label %182

128:                                              ; preds = %120
  br label %153

129:                                              ; preds = %104
  %130 = load i64, i64* %18, align 8
  %131 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %132 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  %136 = icmp slt i64 %130, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %129
  %138 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %139 = load %struct.sctp_addiphdr*, %struct.sctp_addiphdr** %17, align 8
  %140 = getelementptr inbounds %struct.sctp_addiphdr, %struct.sctp_addiphdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.sctp_chunk* @sctp_assoc_lookup_asconf_ack(%struct.sctp_association* %138, i32 %141)
  store %struct.sctp_chunk* %142, %struct.sctp_chunk** %15, align 8
  %143 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %144 = icmp ne %struct.sctp_chunk* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %146, i32* %7, align 4
  br label %182

147:                                              ; preds = %137
  %148 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %149 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %148, i32 0, i32 2
  store i32* null, i32** %149, align 8
  br label %152

150:                                              ; preds = %129
  %151 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %151, i32* %7, align 4
  br label %182

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %128
  %154 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %155 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %158 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %160 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %161 = load %struct.sctp_chunk*, %struct.sctp_chunk** %15, align 8
  %162 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %161)
  %163 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %159, i32 %160, i32 %162)
  %164 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %165 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %180

168:                                              ; preds = %153
  %169 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %170 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %171 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %172 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %175 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @sctp_sf_heartbeat(%struct.sctp_endpoint* %169, %struct.sctp_association* %170, i32 %176, i32* %173, %struct.sctp_cmd_seq* %174)
  %178 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %179 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %168, %153
  %181 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %180, %150, %145, %126, %93, %69, %56, %26
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @sctp_verify_asconf(%struct.sctp_association*, %struct.sctp_chunk*, i32, %struct.sctp_paramhdr**) #1

declare dso_local i32 @sctp_sf_violation_paramlen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_assoc_clean_asconf_ack_cache(%struct.sctp_association*) #1

declare dso_local %struct.sctp_chunk* @sctp_process_asconf(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_assoc_lookup_asconf_ack(%struct.sctp_association*, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_sf_heartbeat(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i32*, %struct.sctp_cmd_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
