; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_addstrm_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_process_strreset_addstrm_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32 }
%struct.sctp_association = type { i64, i64*, i32, i32, %struct.sctp_chunk*, %struct.sctp_stream }
%struct.sctp_stream = type { i64 }
%struct.sctp_strreset_addstrm = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }
%union.sctp_params = type { %struct.sctp_strreset_addstrm* }

@SCTP_STRRESET_DENIED = common dso_local global i64 0, align 8
@SCTP_STRRESET_ERR_BAD_SEQNO = common dso_local global i64 0, align 8
@SCTP_STRRESET_PERFORMED = common dso_local global i64 0, align 8
@SCTP_ENABLE_CHANGE_ASSOC_REQ = common dso_local global i32 0, align 4
@SCTP_STRRESET_ERR_IN_PROGRESS = common dso_local global i64 0, align 8
@SCTP_MAX_STREAM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_process_strreset_addstrm_in(%struct.sctp_association* %0, %struct.sctp_strreset_addstrm* %1, %struct.sctp_ulpevent** %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %union.sctp_params, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_ulpevent**, align 8
  %8 = alloca %struct.sctp_strreset_addstrm*, align 8
  %9 = alloca %struct.sctp_stream*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %5, i32 0, i32 0
  store %struct.sctp_strreset_addstrm* %1, %struct.sctp_strreset_addstrm** %17, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_ulpevent** %2, %struct.sctp_ulpevent*** %7, align 8
  %18 = bitcast %union.sctp_params* %5 to %struct.sctp_strreset_addstrm**
  %19 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %18, align 8
  store %struct.sctp_strreset_addstrm* %19, %struct.sctp_strreset_addstrm** %8, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %20, i32 0, i32 5
  store %struct.sctp_stream* %21, %struct.sctp_stream** %9, align 8
  %22 = load i64, i64* @SCTP_STRRESET_DENIED, align 8
  store i64 %22, i64* %10, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %11, align 8
  %23 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %8, align 8
  %24 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohl(i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @TSN_lt(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 2
  %39 = call i64 @TSN_lt(i64 %34, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33, %3
  %42 = load i64, i64* @SCTP_STRRESET_ERR_BAD_SEQNO, align 8
  store i64 %42, i64* %10, align 8
  br label %138

43:                                               ; preds = %33
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @TSN_lt(i64 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = sub nsw i64 %53, %54
  %56 = sub nsw i64 %55, 1
  store i64 %56, i64* %15, align 8
  %57 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %58 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %50
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %148

67:                                               ; preds = %50
  br label %138

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %71 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SCTP_ENABLE_CHANGE_ASSOC_REQ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %134

81:                                               ; preds = %69
  %82 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @SCTP_STRRESET_ERR_IN_PROGRESS, align 8
  store i64 %87, i64* %10, align 8
  br label %134

88:                                               ; preds = %81
  %89 = load %struct.sctp_strreset_addstrm*, %struct.sctp_strreset_addstrm** %8, align 8
  %90 = getelementptr inbounds %struct.sctp_strreset_addstrm, %struct.sctp_strreset_addstrm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ntohs(i32 %91)
  store i64 %92, i64* %14, align 8
  %93 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %94 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %95, %96
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %88
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @SCTP_MAX_STREAM, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100, %88
  br label %134

105:                                              ; preds = %100
  %106 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call i32 @sctp_stream_alloc_out(%struct.sctp_stream* %106, i64 %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %134

113:                                              ; preds = %105
  %114 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call %struct.sctp_chunk* @sctp_make_strreset_addstrm(%struct.sctp_association* %114, i64 %115, i32 0)
  store %struct.sctp_chunk* %116, %struct.sctp_chunk** %11, align 8
  %117 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %118 = icmp ne %struct.sctp_chunk* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %134

120:                                              ; preds = %113
  %121 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %122 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %123 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %122, i32 0, i32 4
  store %struct.sctp_chunk* %121, %struct.sctp_chunk** %123, align 8
  %124 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %125 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %127 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %126, i32 0, i32 4
  %128 = load %struct.sctp_chunk*, %struct.sctp_chunk** %127, align 8
  %129 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %128)
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.sctp_stream*, %struct.sctp_stream** %9, align 8
  %132 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* @SCTP_STRRESET_PERFORMED, align 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %120, %119, %112, %104, %86, %80
  %135 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @sctp_update_strreset_result(%struct.sctp_association* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %67, %41
  %139 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %140 = icmp ne %struct.sctp_chunk* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association* %142, i64 %143, i64 %144)
  store %struct.sctp_chunk* %145, %struct.sctp_chunk** %11, align 8
  br label %146

146:                                              ; preds = %141, %138
  %147 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  store %struct.sctp_chunk* %147, %struct.sctp_chunk** %4, align 8
  br label %148

148:                                              ; preds = %146, %66
  %149 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %149
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sctp_stream_alloc_out(%struct.sctp_stream*, i64, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_addstrm(%struct.sctp_association*, i64, i32) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_update_strreset_result(%struct.sctp_association*, i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_resp(%struct.sctp_association*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
