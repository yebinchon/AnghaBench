; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c">>> TSYMLINK dfid %d name %s  symtgt %s\0A\00", align 1
@P9_TSYMLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dssg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"<<< RSYMLINK qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_symlink(%struct.p9_fid* %0, i8* %1, i8* %2, i32 %3, %struct.p9_qid* %4) #0 {
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_qid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.p9_client*, align 8
  %13 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.p9_qid* %4, %struct.p9_qid** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @P9_DEBUG_9P, align 4
  %15 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %16 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i8* %19)
  %21 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %22 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %21, i32 0, i32 1
  %23 = load %struct.p9_client*, %struct.p9_client** %22, align 8
  store %struct.p9_client* %23, %struct.p9_client** %12, align 8
  %24 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  %25 = load i32, i32* @P9_TSYMLINK, align 4
  %26 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %27 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %24, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29, i8* %30, i32 %31)
  store %struct.p9_req_t* %32, %struct.p9_req_t** %13, align 8
  %33 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %34 = call i64 @IS_ERR(%struct.p9_req_t* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %38 = call i32 @PTR_ERR(%struct.p9_req_t* %37)
  store i32 %38, i32* %11, align 4
  br label %70

39:                                               ; preds = %5
  %40 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %41 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %40, i32 0, i32 0
  %42 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  %43 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.p9_qid*, %struct.p9_qid** %10, align 8
  %46 = call i32 @p9pdu_readf(i32* %41, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  %51 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %52 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %51, i32 0, i32 0
  %53 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %50, i32* %52)
  br label %66

54:                                               ; preds = %39
  %55 = load i32, i32* @P9_DEBUG_9P, align 4
  %56 = load %struct.p9_qid*, %struct.p9_qid** %10, align 8
  %57 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.p9_qid*, %struct.p9_qid** %10, align 8
  %60 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.p9_qid*, %struct.p9_qid** %10, align 8
  %63 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %58, i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %54, %49
  %67 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  %68 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %69 = call i32 @p9_tag_remove(%struct.p9_client* %67, %struct.p9_req_t* %68)
  br label %70

70:                                               ; preds = %66, %36
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i8*, i32) #1

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
