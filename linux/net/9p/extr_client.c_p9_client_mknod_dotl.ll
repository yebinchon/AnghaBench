; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_mknod_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_mknod_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c">>> TMKNOD fid %d name %s mode %d major %d minor %d\0A\00", align 1
@P9_TMKNOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dsdddg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"<<< RMKNOD qid %x.%llx.%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_mknod_dotl(%struct.p9_fid* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.p9_qid* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_qid*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.p9_client*, align 8
  %16 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.p9_qid* %5, %struct.p9_qid** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %18 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %17, i32 0, i32 1
  %19 = load %struct.p9_client*, %struct.p9_client** %18, align 8
  store %struct.p9_client* %19, %struct.p9_client** %15, align 8
  %20 = load i32, i32* @P9_DEBUG_9P, align 4
  %21 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %22 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @MAJOR(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @MINOR(i32 %28)
  %30 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i32 %25, i32 %27, i32 %29)
  %31 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %32 = load i32, i32* @P9_TMKNOD, align 4
  %33 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %34 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @MAJOR(i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @MINOR(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36, i32 %37, i32 %39, i32 %41, i32 %42)
  store %struct.p9_req_t* %43, %struct.p9_req_t** %16, align 8
  %44 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %45 = call i64 @IS_ERR(%struct.p9_req_t* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %49 = call i32 @PTR_ERR(%struct.p9_req_t* %48)
  store i32 %49, i32* %7, align 4
  br label %82

50:                                               ; preds = %6
  %51 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %52 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %51, i32 0, i32 0
  %53 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %54 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %57 = call i32 @p9pdu_readf(i32* %52, i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %62 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %63 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %62, i32 0, i32 0
  %64 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %61, i32* %63)
  br label %77

65:                                               ; preds = %50
  %66 = load i32, i32* @P9_DEBUG_9P, align 4
  %67 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %68 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %71 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %74 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %69, i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %65, %60
  %78 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %79 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %80 = call i32 @p9_tag_remove(%struct.p9_client* %78, %struct.p9_req_t* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %47
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i32, i32, i32, i32) #1

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
