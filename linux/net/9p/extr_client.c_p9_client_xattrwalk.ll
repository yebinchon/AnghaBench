; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_xattrwalk.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_xattrwalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c">>> TXATTRWALK file_fid %d, attr_fid %d name %s\0A\00", align 1
@P9_TXATTRWALK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dds\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"<<<  RXATTRWALK fid %d size %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p9_fid* @p9_client_xattrwalk(%struct.p9_fid* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_req_t*, align 8
  %10 = alloca %struct.p9_client*, align 8
  %11 = alloca %struct.p9_fid*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %13 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %12, i32 0, i32 1
  %14 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  store %struct.p9_client* %14, %struct.p9_client** %10, align 8
  %15 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %16 = call %struct.p9_fid* @p9_fid_create(%struct.p9_client* %15)
  store %struct.p9_fid* %16, %struct.p9_fid** %11, align 8
  %17 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %18 = icmp ne %struct.p9_fid* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %8, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load i32, i32* @P9_DEBUG_9P, align 4
  %24 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %25 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %28 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, i8*, i32, i32, ...) @p9_debug(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i8* %30)
  %32 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %33 = load i32, i32* @P9_TXATTRWALK, align 4
  %34 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %35 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %38 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i8* %40)
  store %struct.p9_req_t* %41, %struct.p9_req_t** %9, align 8
  %42 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %43 = call i64 @IS_ERR(%struct.p9_req_t* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %47 = call i32 @PTR_ERR(%struct.p9_req_t* %46)
  store i32 %47, i32* %8, align 4
  br label %81

48:                                               ; preds = %22
  %49 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %50 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %49, i32 0, i32 0
  %51 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %52 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @p9pdu_readf(i32* %50, i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %61 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %60, i32 0, i32 0
  %62 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %59, i32* %61)
  %63 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %64 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %65 = call i32 @p9_tag_remove(%struct.p9_client* %63, %struct.p9_req_t* %64)
  br label %78

66:                                               ; preds = %48
  %67 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  %68 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %69 = call i32 @p9_tag_remove(%struct.p9_client* %67, %struct.p9_req_t* %68)
  %70 = load i32, i32* @P9_DEBUG_9P, align 4
  %71 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %72 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, i32, ...) @p9_debug(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  store %struct.p9_fid* %77, %struct.p9_fid** %4, align 8
  br label %94

78:                                               ; preds = %58
  %79 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %80 = call i32 @p9_client_clunk(%struct.p9_fid* %79)
  store %struct.p9_fid* null, %struct.p9_fid** %11, align 8
  br label %81

81:                                               ; preds = %78, %45, %19
  %82 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %83 = icmp ne %struct.p9_fid* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %86 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %87 = icmp ne %struct.p9_fid* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.p9_fid*, %struct.p9_fid** %11, align 8
  %90 = call i32 @p9_fid_destroy(%struct.p9_fid* %89)
  br label %91

91:                                               ; preds = %88, %84, %81
  %92 = load i32, i32* %8, align 4
  %93 = call %struct.p9_fid* @ERR_PTR(i32 %92)
  store %struct.p9_fid* %93, %struct.p9_fid** %4, align 8
  br label %94

94:                                               ; preds = %91, %66
  %95 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  ret %struct.p9_fid* %95
}

declare dso_local %struct.p9_fid* @p9_fid_create(%struct.p9_client*) #1

declare dso_local i32 @p9_debug(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @p9_fid_destroy(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
