; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_check_errors.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_check_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i64, i32 }
%struct.p9_req_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"requested packet size too big: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't parse header %d\0A\00", align 1
@P9_RERROR = common dso_local global i64 0, align 8
@P9_RLERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"s?d\00", align 1
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"<<< RERROR (%d) %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"<<< RLERROR (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"couldn't parse error%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_check_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_check_errors(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %10 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %11 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %10, i32 0, i32 0
  %12 = call i32 @p9_parse_header(%struct.TYPE_4__* %11, i32* null, i64* %6, i32* null, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %14 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %18 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %23 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %24 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %112

31:                                               ; preds = %2
  %32 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %33 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %34 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %33, i32 0, i32 0
  %35 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %32, %struct.TYPE_4__* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %112

43:                                               ; preds = %31
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @P9_RERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @P9_RLERROR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %112

52:                                               ; preds = %47, %43
  %53 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %54 = call i32 @p9_is_proto_dotl(%struct.p9_client* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %58 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %57, i32 0, i32 0
  %59 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %60 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @p9pdu_readf(%struct.TYPE_4__* %58, i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, i32* %8)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %107

66:                                               ; preds = %56
  %67 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %68 = call i64 @p9_is_proto_dotu(%struct.p9_client* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 512
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %70, %66
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i32 @p9_errstr2errno(i8* %80, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @P9_DEBUG_9P, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %79, %76
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @kfree(i8* %90)
  br label %105

92:                                               ; preds = %52
  %93 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %94 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %93, i32 0, i32 0
  %95 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %96 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.TYPE_4__*, i32, i8*, ...) @p9pdu_readf(%struct.TYPE_4__* %94, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @P9_DEBUG_9P, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %92, %89
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %112

107:                                              ; preds = %65
  %108 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %107, %105, %51, %38, %21
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @p9_parse_header(%struct.TYPE_4__*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, %struct.TYPE_4__*) #1

declare dso_local i32 @p9_is_proto_dotl(%struct.p9_client*) #1

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
