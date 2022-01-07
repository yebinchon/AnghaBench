; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_fid = type { i32, i32, i32 }
%struct.p9_req_t = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c">>> TATTACH afid %d uname %s aname %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@P9_TATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ddss?u\00", align 1
@P9_NOFID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"<<< RATTACH qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_attach(%struct.p9_client* %0, %struct.p9_fid* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_req_t*, align 8
  %14 = alloca %struct.p9_fid*, align 8
  %15 = alloca %struct.p9_qid, align 8
  store %struct.p9_client* %0, %struct.p9_client** %7, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @P9_DEBUG_9P, align 4
  %17 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %18 = icmp ne %struct.p9_fid* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %21 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ -1, %23 ]
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26, i8* %27)
  %29 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %30 = call %struct.p9_fid* @p9_fid_create(%struct.p9_client* %29)
  store %struct.p9_fid* %30, %struct.p9_fid** %14, align 8
  %31 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %32 = icmp ne %struct.p9_fid* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %98

36:                                               ; preds = %24
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %39 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %41 = load i32, i32* @P9_TATTACH, align 4
  %42 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %43 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %46 = icmp ne %struct.p9_fid* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %49 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %36
  %52 = load i32, i32* @P9_NOFID, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %50, %47 ], [ %52, %51 ]
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %40, i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %54, i8* %55, i8* %56, i32 %57)
  store %struct.p9_req_t* %58, %struct.p9_req_t** %13, align 8
  %59 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %60 = call i64 @IS_ERR(%struct.p9_req_t* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %64 = call i32 @PTR_ERR(%struct.p9_req_t* %63)
  store i32 %64, i32* %12, align 4
  br label %98

65:                                               ; preds = %53
  %66 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %67 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %66, i32 0, i32 0
  %68 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %69 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @p9pdu_readf(i32* %67, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %15)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %76 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %77 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %76, i32 0, i32 0
  %78 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %75, i32* %77)
  %79 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %80 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %81 = call i32 @p9_tag_remove(%struct.p9_client* %79, %struct.p9_req_t* %80)
  br label %98

82:                                               ; preds = %65
  %83 = load i32, i32* @P9_DEBUG_9P, align 4
  %84 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 %87, i32 %89)
  %91 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %92 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %91, i32 0, i32 1
  %93 = call i32 @memmove(i32* %92, %struct.p9_qid* %15, i32 24)
  %94 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %95 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %96 = call i32 @p9_tag_remove(%struct.p9_client* %94, %struct.p9_req_t* %95)
  %97 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  store %struct.p9_fid* %97, %struct.p9_fid** %6, align 8
  br label %107

98:                                               ; preds = %74, %62, %33
  %99 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %100 = icmp ne %struct.p9_fid* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.p9_fid*, %struct.p9_fid** %14, align 8
  %103 = call i32 @p9_fid_destroy(%struct.p9_fid* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %12, align 4
  %106 = call %struct.p9_fid* @ERR_PTR(i32 %105)
  store %struct.p9_fid* %106, %struct.p9_fid** %6, align 8
  br label %107

107:                                              ; preds = %104, %82
  %108 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  ret %struct.p9_fid* %108
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_fid* @p9_fid_create(%struct.p9_client*) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, %struct.p9_qid*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @memmove(i32*, %struct.p9_qid*, i32) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
