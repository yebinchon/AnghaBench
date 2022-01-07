; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iov_iter = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c">>> TWRITE fid %d offset %llu count %zd\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i32 0, align 4
@P9_TWRITE = common dso_local global i32 0, align 4
@P9_ZC_HDR_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dqd\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dqV\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"bogus RWRITE count (%d > %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"<<< RWRITE count %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_write(%struct.p9_fid* %0, i64 %1, %struct.iov_iter* %2, i32* %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.p9_client*, align 8
  %10 = alloca %struct.p9_req_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %15 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %14, i32 0, i32 2
  %16 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  store %struct.p9_client* %16, %struct.p9_client** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @P9_DEBUG_9P, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %24 = call i32 @iov_iter_count(%struct.iov_iter* %23)
  %25 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22, i32 %24)
  br label %26

26:                                               ; preds = %126, %4
  %27 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %28 = call i32 @iov_iter_count(%struct.iov_iter* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %143

30:                                               ; preds = %26
  %31 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %32 = call i32 @iov_iter_count(%struct.iov_iter* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %34 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %41 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @P9_IOHDRSZ, align 4
  %44 = sub nsw i32 %42, %43
  %45 = icmp sgt i32 %39, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38, %30
  %47 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %48 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @P9_IOHDRSZ, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %38
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %60 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %66, 1024
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %70 = load i32, i32* @P9_TWRITE, align 4
  %71 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @P9_ZC_HDR_SZ, align 4
  %74 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %75 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client* %69, i32 %70, i32* null, %struct.iov_iter* %71, i32 0, i32 %72, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %77, i32 %78)
  store %struct.p9_req_t* %79, %struct.p9_req_t** %10, align 8
  br label %90

80:                                               ; preds = %65, %58
  %81 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %82 = load i32, i32* @P9_TWRITE, align 4
  %83 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %84 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %89 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %81, i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %85, i64 %86, i32 %87, %struct.iov_iter* %88)
  store %struct.p9_req_t* %89, %struct.p9_req_t** %10, align 8
  br label %90

90:                                               ; preds = %80, %68
  %91 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %92 = call i64 @IS_ERR(%struct.p9_req_t* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %96 = call i32 @PTR_ERR(%struct.p9_req_t* %95)
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  br label %143

98:                                               ; preds = %90
  %99 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %100 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %99, i32 0, i32 0
  %101 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %102 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @p9pdu_readf(i32* %100, i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %111 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %112 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %111, i32 0, i32 0
  %113 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %110, i32* %112)
  %114 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %115 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %116 = call i32 @p9_tag_remove(%struct.p9_client* %114, %struct.p9_req_t* %115)
  br label %143

117:                                              ; preds = %98
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i32, i32* @P9_DEBUG_9P, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %128)
  %130 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %131 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %132 = call i32 @p9_tag_remove(%struct.p9_client* %130, %struct.p9_req_t* %131)
  %133 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @iov_iter_advance(%struct.iov_iter* %133, i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %6, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %6, align 8
  br label %26

143:                                              ; preds = %109, %94, %26
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client*, i32, i32*, %struct.iov_iter*, i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i64, i32, %struct.iov_iter*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
