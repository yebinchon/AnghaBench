; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_readlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i8*, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c">>> TREADLINK fid %d\0A\00", align 1
@P9_TREADLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"<<< RREADLINK target %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_readlink(%struct.p9_fid* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %10 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %9, i32 0, i32 1
  %11 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  store %struct.p9_client* %11, %struct.p9_client** %7, align 8
  %12 = load i32, i32* @P9_DEBUG_9P, align 4
  %13 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %14 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @p9_debug(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %18 = load i32, i32* @P9_TREADLINK, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  store %struct.p9_req_t* %22, %struct.p9_req_t** %8, align 8
  %23 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %24 = call i64 @IS_ERR(%struct.p9_req_t* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.p9_req_t* %27)
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %2
  %30 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %31 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %30, i32 0, i32 0
  %32 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %33 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @p9pdu_readf(i32* %31, i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %41 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %42 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %41, i32 0, i32 0
  %43 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %40, i32* %42)
  br label %49

44:                                               ; preds = %29
  %45 = load i32, i32* @P9_DEBUG_9P, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @p9_debug(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %51 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %52 = call i32 @p9_tag_remove(%struct.p9_client* %50, %struct.p9_req_t* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %26
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @p9_debug(i32, i8*, i8*) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i8**) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
