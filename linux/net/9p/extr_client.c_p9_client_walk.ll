; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i64, i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i64, i8*, i64 }
%struct.p9_req_t = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c">>> TWALK fids %d,%d nwname %ud wname[0] %s\0A\00", align 1
@P9_TWALK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ddT\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<<< RWALK nwqid %d:\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"<<<     [%d] %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %0, i64 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_client*, align 8
  %12 = alloca %struct.p9_fid*, align 8
  %13 = alloca %struct.p9_qid*, align 8
  %14 = alloca %struct.p9_req_t*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.p9_qid* null, %struct.p9_qid** %13, align 8
  %17 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %18 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %17, i32 0, i32 3
  %19 = load %struct.p9_client*, %struct.p9_client** %18, align 8
  store %struct.p9_client* %19, %struct.p9_client** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %24 = call %struct.p9_fid* @p9_fid_create(%struct.p9_client* %23)
  store %struct.p9_fid* %24, %struct.p9_fid** %12, align 8
  %25 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %26 = icmp ne %struct.p9_fid* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %157

30:                                               ; preds = %22
  %31 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %32 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %35 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %38

36:                                               ; preds = %4
  %37 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  store %struct.p9_fid* %37, %struct.p9_fid** %12, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* @P9_DEBUG_9P, align 4
  %40 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %41 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %44 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i8**, i8*** %8, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ null, %53 ]
  %56 = call i32 (i32, i8*, i64, ...) @p9_debug(i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45, i64 %46, i8* %55)
  %57 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %58 = load i32, i32* @P9_TWALK, align 4
  %59 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %60 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %63 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %57, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %64, i64 %65, i8** %66)
  store %struct.p9_req_t* %67, %struct.p9_req_t** %14, align 8
  %68 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %69 = call i64 @IS_ERR(%struct.p9_req_t* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %54
  %72 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %73 = call i32 @PTR_ERR(%struct.p9_req_t* %72)
  store i32 %73, i32* %10, align 4
  br label %157

74:                                               ; preds = %54
  %75 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %76 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %75, i32 0, i32 0
  %77 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %78 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @p9pdu_readf(i32* %76, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %15, %struct.p9_qid** %13)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %85 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %86 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %85, i32 0, i32 0
  %87 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %84, i32* %86)
  %88 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %89 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %90 = call i32 @p9_tag_remove(%struct.p9_client* %88, %struct.p9_req_t* %89)
  br label %152

91:                                               ; preds = %74
  %92 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %93 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %94 = call i32 @p9_tag_remove(%struct.p9_client* %92, %struct.p9_req_t* %93)
  %95 = load i32, i32* @P9_DEBUG_9P, align 4
  %96 = load i64, i64* %15, align 8
  %97 = call i32 (i32, i8*, i64, ...) @p9_debug(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %152

104:                                              ; preds = %91
  store i64 0, i64* %16, align 8
  br label %105

105:                                              ; preds = %128, %104
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %131

109:                                              ; preds = %105
  %110 = load i32, i32* @P9_DEBUG_9P, align 4
  %111 = load i64, i64* %16, align 8
  %112 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %112, i64 %113
  %115 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %118 = load i64, i64* %16, align 8
  %119 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %117, i64 %118
  %120 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %122, i64 %123
  %125 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i32, i8*, i64, ...) @p9_debug(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %111, i64 %116, i64 %121, i8* %126)
  br label %128

128:                                              ; preds = %109
  %129 = load i64, i64* %16, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %16, align 8
  br label %105

131:                                              ; preds = %105
  %132 = load i64, i64* %7, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %136 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %135, i32 0, i32 1
  %137 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %138 = load i64, i64* %15, align 8
  %139 = sub i64 %138, 1
  %140 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %137, i64 %139
  %141 = call i32 @memmove(i32* %136, %struct.p9_qid* %140, i32 24)
  br label %148

142:                                              ; preds = %131
  %143 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %144 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %147 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %150 = call i32 @kfree(%struct.p9_qid* %149)
  %151 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  store %struct.p9_fid* %151, %struct.p9_fid** %5, align 8
  br label %170

152:                                              ; preds = %101, %83
  %153 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %154 = call i32 @kfree(%struct.p9_qid* %153)
  %155 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %156 = call i32 @p9_client_clunk(%struct.p9_fid* %155)
  store %struct.p9_fid* null, %struct.p9_fid** %12, align 8
  br label %157

157:                                              ; preds = %152, %71, %27
  %158 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %159 = icmp ne %struct.p9_fid* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %162 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %163 = icmp ne %struct.p9_fid* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.p9_fid*, %struct.p9_fid** %12, align 8
  %166 = call i32 @p9_fid_destroy(%struct.p9_fid* %165)
  br label %167

167:                                              ; preds = %164, %160, %157
  %168 = load i32, i32* %10, align 4
  %169 = call %struct.p9_fid* @ERR_PTR(i32 %168)
  store %struct.p9_fid* %169, %struct.p9_fid** %5, align 8
  br label %170

170:                                              ; preds = %167, %148
  %171 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  ret %struct.p9_fid* %171
}

declare dso_local %struct.p9_fid* @p9_fid_create(%struct.p9_client*) #1

declare dso_local i32 @p9_debug(i32, i8*, i64, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i64, i64, i64, i8**) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i64*, %struct.p9_qid**) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @memmove(i32*, %struct.p9_qid*, i32) #1

declare dso_local i32 @kfree(%struct.p9_qid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
