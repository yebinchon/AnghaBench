; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.p9_req_t = type { i32 }
%struct.kvec = type { i8*, i32 }
%struct.iov_iter = type { i32 }

@READ = common dso_local global i32 0, align 4
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c">>> TREADDIR fid %d offset %llu count %d\0A\00", align 1
@P9_READDIRHDRSZ = common dso_local global i32 0, align 4
@P9_TREADDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dqd\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"bogus RREADDIR count (%d > %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"<<< RREADDIR count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_readdir(%struct.p9_fid* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_client*, align 8
  %14 = alloca %struct.p9_req_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.kvec, align 8
  %17 = alloca %struct.iov_iter, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 0
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds %struct.kvec, %struct.kvec* %16, i32 0, i32 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = load i32, i32* @READ, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @iov_iter_kvec(%struct.iov_iter* %17, i32 %22, %struct.kvec* %16, i32 1, i32 %23)
  %25 = load i32, i32* @P9_DEBUG_9P, align 4
  %26 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %27 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29, i32 %30)
  store i32 0, i32* %10, align 4
  %32 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %33 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %32, i32 0, i32 2
  %34 = load %struct.p9_client*, %struct.p9_client** %33, align 8
  store %struct.p9_client* %34, %struct.p9_client** %13, align 8
  %35 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %36 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %43 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @P9_READDIRHDRSZ, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sgt i32 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40, %4
  %49 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %50 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @P9_READDIRHDRSZ, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %62 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %68, 1024
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %72 = load i32, i32* @P9_TREADDIR, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %75 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client* %71, i32 %72, %struct.iov_iter* %17, i32* null, i32 %73, i32 0, i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %77, i32 %78)
  store %struct.p9_req_t* %79, %struct.p9_req_t** %14, align 8
  br label %89

80:                                               ; preds = %67, %60
  store i32 1, i32* %12, align 4
  %81 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %82 = load i32, i32* @P9_TREADDIR, align 4
  %83 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %84 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %81, i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %86, i32 %87)
  store %struct.p9_req_t* %88, %struct.p9_req_t** %14, align 8
  br label %89

89:                                               ; preds = %80, %70
  %90 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %91 = call i64 @IS_ERR(%struct.p9_req_t* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %95 = call i32 @PTR_ERR(%struct.p9_req_t* %94)
  store i32 %95, i32* %10, align 4
  br label %139

96:                                               ; preds = %89
  %97 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %98 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %97, i32 0, i32 0
  %99 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %100 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @p9pdu_readf(i32* %98, i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %8, i8** %15)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %107 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %108 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %107, i32 0, i32 0
  %109 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %106, i32* %108)
  br label %135

110:                                              ; preds = %96
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %114, %110
  %120 = load i32, i32* @P9_DEBUG_9P, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @memmove(i8* %126, i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %119
  %131 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %132 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %133 = call i32 @p9_tag_remove(%struct.p9_client* %131, %struct.p9_req_t* %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %5, align 4
  br label %141

135:                                              ; preds = %105
  %136 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %137 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %138 = call i32 @p9_tag_remove(%struct.p9_client* %136, %struct.p9_req_t* %137)
  br label %139

139:                                              ; preds = %135, %93
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %130
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @iov_iter_kvec(%struct.iov_iter*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client*, i32, %struct.iov_iter*, i32*, i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*, i8**) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
