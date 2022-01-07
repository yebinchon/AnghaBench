; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_mkdir_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_mkdir_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c">>> TMKDIR fid %d name %s mode %d gid %d\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@P9_TMKDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dsdg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"<<< RMKDIR qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_mkdir_dotl(%struct.p9_fid* %0, i8* %1, i32 %2, i32 %3, %struct.p9_qid* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.p9_qid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_client*, align 8
  %14 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.p9_qid* %4, %struct.p9_qid** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %16 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %15, i32 0, i32 1
  %17 = load %struct.p9_client*, %struct.p9_client** %16, align 8
  store %struct.p9_client* %17, %struct.p9_client** %13, align 8
  %18 = load i32, i32* @P9_DEBUG_9P, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @from_kgid(i32* @init_user_ns, i32 %24)
  %26 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23, i32 %25)
  %27 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %28 = load i32, i32* @P9_TMKDIR, align 4
  %29 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %30 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %27, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32, i32 %33, i32 %34)
  store %struct.p9_req_t* %35, %struct.p9_req_t** %14, align 8
  %36 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %37 = call i64 @IS_ERR(%struct.p9_req_t* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_req_t* %40)
  store i32 %41, i32* %6, align 4
  br label %74

42:                                               ; preds = %5
  %43 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %44 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %43, i32 0, i32 0
  %45 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %46 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p9_qid*, %struct.p9_qid** %11, align 8
  %49 = call i32 @p9pdu_readf(i32* %44, i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %54 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %55 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %54, i32 0, i32 0
  %56 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %53, i32* %55)
  br label %69

57:                                               ; preds = %42
  %58 = load i32, i32* @P9_DEBUG_9P, align 4
  %59 = load %struct.p9_qid*, %struct.p9_qid** %11, align 8
  %60 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.p9_qid*, %struct.p9_qid** %11, align 8
  %63 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.p9_qid*, %struct.p9_qid** %11, align 8
  %66 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %61, i64 %64, i32 %67)
  br label %69

69:                                               ; preds = %57, %52
  %70 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  %71 = load %struct.p9_req_t*, %struct.p9_req_t** %14, align 8
  %72 = call i32 @p9_tag_remove(%struct.p9_client* %70, %struct.p9_req_t* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %39
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, %struct.p9_qid*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
