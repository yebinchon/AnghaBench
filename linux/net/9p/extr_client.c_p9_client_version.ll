; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c">>> TVERSION msize %d protocol %d\0A\00", align 1
@P9_TVERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"9P2000.L\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"9P2000.u\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"9P2000\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"version error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"<<< RVERSION msize %d %s\0A\00", align 1
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"server returned an unknown version: %s\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"server returned a msize < 4096: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*)* @p9_client_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_client_version(%struct.p9_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p9_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %8 = load i32, i32* @P9_DEBUG_9P, align 4
  %9 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %10 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %13 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @p9_debug(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %17 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %40 [
    i32 130, label %19
    i32 129, label %26
    i32 128, label %33
  ]

19:                                               ; preds = %1
  %20 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %21 = load i32, i32* @P9_TVERSION, align 4
  %22 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %23 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %20, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.p9_req_t* %25, %struct.p9_req_t** %5, align 8
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %28 = load i32, i32* @P9_TVERSION, align 4
  %29 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %30 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.p9_req_t* %32, %struct.p9_req_t** %5, align 8
  br label %43

33:                                               ; preds = %1
  %34 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %35 = load i32, i32* @P9_TVERSION, align 4
  %36 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %37 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.p9_req_t* %39, %struct.p9_req_t** %5, align 8
  br label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %127

43:                                               ; preds = %33, %26, %19
  %44 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %45 = call i64 @IS_ERR(%struct.p9_req_t* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.p9_req_t* %48)
  store i32 %49, i32* %2, align 4
  br label %127

50:                                               ; preds = %43
  %51 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %52 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %51, i32 0, i32 0
  %53 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %54 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @p9pdu_readf(i32* %52, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7, i8** %6)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load i32, i32* @P9_DEBUG_9P, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, ...) @p9_debug(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %64 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %65 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %64, i32 0, i32 0
  %66 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %63, i32* %65)
  br label %120

67:                                               ; preds = %50
  %68 = load i32, i32* @P9_DEBUG_9P, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i32, i8*, ...) @p9_debug(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %69, i8* %70)
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %77 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %76, i32 0, i32 1
  store i32 130, i32* %77, align 4
  br label %100

78:                                               ; preds = %67
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strncmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %84 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %83, i32 0, i32 1
  store i32 129, i32* %84, align 4
  br label %99

85:                                               ; preds = %78
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %91 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %90, i32 0, i32 1
  store i32 128, i32* %91, align 4
  br label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 (i32, i8*, ...) @p9_debug(i32 %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %120

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %75
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 4096
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, ...) @p9_debug(i32 %104, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EREMOTEIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %120

109:                                              ; preds = %100
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %112 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %118 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %109
  br label %120

120:                                              ; preds = %119, %103, %92, %59
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @kfree(i8* %121)
  %123 = load %struct.p9_client*, %struct.p9_client** %3, align 8
  %124 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %125 = call i32 @p9_tag_remove(%struct.p9_client* %123, %struct.p9_req_t* %124)
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %120, %47, %40
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*, i8**) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
