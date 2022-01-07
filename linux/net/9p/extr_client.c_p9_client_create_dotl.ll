; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_create_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_create_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_qid = type { i32, i64, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c">>> TLCREATE fid %d name %s flags %d mode %d gid %d\0A\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@P9_TLCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dsddg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Qd\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"<<< RLCREATE qid %x.%llx.%x iounit %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_create_dotl(%struct.p9_fid* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.p9_qid* %5) #0 {
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
  %17 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.p9_qid* %5, %struct.p9_qid** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @P9_DEBUG_9P, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @from_kgid(i32* @init_user_ns, i32 %25)
  %27 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i32 %23, i32 %24, i32 %26)
  %28 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %29 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %28, i32 0, i32 3
  %30 = load %struct.p9_client*, %struct.p9_client** %29, align 8
  store %struct.p9_client* %30, %struct.p9_client** %15, align 8
  %31 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %32 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %95

38:                                               ; preds = %6
  %39 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %40 = load i32, i32* @P9_TLCREATE, align 4
  %41 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %42 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %39, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %44, i32 %45, i32 %46, i32 %47)
  store %struct.p9_req_t* %48, %struct.p9_req_t** %16, align 8
  %49 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %50 = call i64 @IS_ERR(%struct.p9_req_t* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %54 = call i32 @PTR_ERR(%struct.p9_req_t* %53)
  store i32 %54, i32* %14, align 4
  br label %93

55:                                               ; preds = %38
  %56 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %57 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %56, i32 0, i32 0
  %58 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %59 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %62 = call i32 @p9pdu_readf(i32* %57, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.p9_qid* %61, i32* %17)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %67 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %68 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %67, i32 0, i32 0
  %69 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %66, i32* %68)
  br label %89

70:                                               ; preds = %55
  %71 = load i32, i32* @P9_DEBUG_9P, align 4
  %72 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %73 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %76 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.p9_qid*, %struct.p9_qid** %13, align 8
  %79 = getelementptr inbounds %struct.p9_qid, %struct.p9_qid* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %74, i64 %77, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %85 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %88 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %70, %65
  %90 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  %91 = load %struct.p9_req_t*, %struct.p9_req_t** %16, align 8
  %92 = call i32 @p9_tag_remove(%struct.p9_client* %90, %struct.p9_req_t* %91)
  br label %93

93:                                               ; preds = %89, %52
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %35
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i32, i32, i32) #1

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
