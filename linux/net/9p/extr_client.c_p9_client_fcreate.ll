; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_fcreate.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_fcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c">>> TCREATE fid %d name %s perm %d mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@P9_TCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dsdb?s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Qd\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"<<< RCREATE qid %x.%llx.%x iounit %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_fcreate(%struct.p9_fid* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_client*, align 8
  %14 = alloca %struct.p9_req_t*, align 8
  %15 = alloca %struct.p9_qid, align 8
  %16 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @P9_DEBUG_9P, align 4
  %18 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %19 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i32 %22, i32 %23)
  store i32 0, i32* %12, align 4
  %25 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %26 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %25, i32 0, i32 3
  %27 = load %struct.p9_client*, %struct.p9_client** %26, align 8
  store %struct.p9_client* %27, %struct.p9_client** %13, align 8
  %28 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %29 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %88

35:                                               ; preds = %5
  %36 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %37 = load i32, i32* @P9_TCREATE, align 4
  %38 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %39 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %36, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %41, i32 %42, i32 %43, i8* %44)
  store %struct.p9_req_t* %45, %struct.p9_req_t** %14, align 8
  %46 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %47 = call i64 @IS_ERR(%struct.p9_req_t* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %51 = call i32 @PTR_ERR(%struct.p9_req_t* %50)
  store i32 %51, i32* %12, align 4
  br label %86

52:                                               ; preds = %35
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %54 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %53, i32 0, i32 0
  %55 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %56 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @p9pdu_readf(i32* %54, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %15, i32* %16)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %63 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %64 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %63, i32 0, i32 0
  %65 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %62, i32* %64)
  br label %82

66:                                               ; preds = %52
  %67 = load i32, i32* @P9_DEBUG_9P, align 4
  %68 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %15, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %69, i64 %71, i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %78 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %81 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %66, %61
  %83 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %84 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %85 = call i32 @p9_tag_remove(%struct.p9_client* %83, %struct.p9_req_t* %84)
  br label %86

86:                                               ; preds = %82, %49
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %32
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, %struct.p9_qid*, i32*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
