; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_check_zc_errors.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_check_zc_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_req_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.iov_iter = type { i32 }

@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't parse header %d\0A\00", align 1
@P9_RERROR = common dso_local global i64 0, align 8
@P9_RLERROR = common dso_local global i64 0, align 8
@P9_ZC_HDR_SZ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"s?d\00", align 1
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"<<< RERROR (%d) %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"<<< RLERROR (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"couldn't parse error%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*, %struct.iov_iter*, i32)* @p9_check_zc_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_check_zc_errors(%struct.p9_client* %0, %struct.p9_req_t* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_client*, align 8
  %7 = alloca %struct.p9_req_t*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %6, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %13, align 8
  %16 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %17 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %16, i32 0, i32 0
  %18 = call i32 @p9_parse_header(%struct.TYPE_4__* %17, i32* null, i64* %12, i32* null, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %20 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %21 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %20, i32 0, i32 0
  %22 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %19, %struct.TYPE_4__* %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %147

30:                                               ; preds = %4
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @P9_RERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @P9_RLERROR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %147

39:                                               ; preds = %34, %30
  %40 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %41 = call i32 @p9_is_proto_dotl(%struct.p9_client* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %127, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 7
  store i32 %45, i32* %15, align 4
  %46 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %47 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %51 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %49, %53
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @P9_ZC_HDR_SZ, align 4
  %57 = sub nsw i32 %56, 7
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %142

62:                                               ; preds = %43
  %63 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %64 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %68 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8* %72, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %62
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %85 = call i32 @copy_from_iter_full(i8* %80, i32 %83, %struct.iov_iter* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @EFAULT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %142

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %62
  store i8* null, i8** %13, align 8
  %92 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %93 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %92, i32 0, i32 0
  %94 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %95 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @p9pdu_readf(%struct.TYPE_4__* %93, i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, i32* %11)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %142

101:                                              ; preds = %91
  %102 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %103 = call i64 @p9_is_proto_dotu(%struct.p9_client* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 512
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %105, %101
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = call i32 @p9_errstr2errno(i8* %115, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @P9_DEBUG_9P, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 0, %120
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %114, %111
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @kfree(i8* %125)
  br label %140

127:                                              ; preds = %39
  %128 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %129 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %128, i32 0, i32 0
  %130 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %131 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @p9pdu_readf(%struct.TYPE_4__* %129, i32 %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @P9_DEBUG_9P, align 4
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 0, %137
  %139 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %127, %124
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %147

142:                                              ; preds = %100, %87, %59
  %143 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %142, %140, %38, %25
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @p9_parse_header(%struct.TYPE_4__*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, %struct.TYPE_4__*) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @p9_is_proto_dotl(%struct.p9_client*) #1

declare dso_local i32 @copy_from_iter_full(i8*, i32, %struct.iov_iter*) #1

declare dso_local i32 @p9pdu_readf(%struct.TYPE_4__*, i32, i8*, ...) #1

declare dso_local i64 @p9_is_proto_dotu(%struct.p9_client*) #1

declare dso_local i32 @p9_errstr2errno(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
