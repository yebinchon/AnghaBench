; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_rstatfs = type { i64, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c">>> TSTATFS fid %d\0A\00", align 1
@P9_TSTATFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ddqqqqqqd\00", align 1
@.str.3 = private unnamed_addr constant [120 x i8] c"<<< RSTATFS fid %d type 0x%lx bsize %ld blocks %llu bfree %llu bavail %llu files %llu ffree %llu fsid %llu namelen %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_statfs(%struct.p9_fid* %0, %struct.p9_rstatfs* %1) #0 {
  %3 = alloca %struct.p9_fid*, align 8
  %4 = alloca %struct.p9_rstatfs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_req_t*, align 8
  %7 = alloca %struct.p9_client*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %3, align 8
  store %struct.p9_rstatfs* %1, %struct.p9_rstatfs** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %9 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %8, i32 0, i32 1
  %10 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  store %struct.p9_client* %10, %struct.p9_client** %7, align 8
  %11 = load i32, i32* @P9_DEBUG_9P, align 4
  %12 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %13 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %17 = load i32, i32* @P9_TSTATFS, align 4
  %18 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %19 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %16, i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store %struct.p9_req_t* %21, %struct.p9_req_t** %6, align 8
  %22 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %23 = call i64 @IS_ERR(%struct.p9_req_t* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.p9_req_t* %26)
  store i32 %27, i32* %5, align 4
  br label %99

28:                                               ; preds = %2
  %29 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %30 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %29, i32 0, i32 0
  %31 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %32 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %34, i32 0, i32 8
  %36 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %36, i32 0, i32 7
  %38 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %38, i32 0, i32 6
  %40 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %41 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %40, i32 0, i32 5
  %42 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %43 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %42, i32 0, i32 4
  %44 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %45 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %44, i32 0, i32 3
  %46 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %46, i32 0, i32 2
  %48 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %48, i32 0, i32 1
  %50 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %50, i32 0, i32 0
  %52 = call i32 @p9pdu_readf(i32* %30, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64* %35, i64* %37, i32* %39, i32* %41, i32* %43, i32* %45, i32* %47, i32* %49, i64* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %28
  %56 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %57 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %58 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %57, i32 0, i32 0
  %59 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %56, i32* %58)
  %60 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %61 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %62 = call i32 @p9_tag_remove(%struct.p9_client* %60, %struct.p9_req_t* %61)
  br label %99

63:                                               ; preds = %28
  %64 = load i32, i32* @P9_DEBUG_9P, align 4
  %65 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %66 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %69 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %72 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %75 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %78 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %81 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %84 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %87 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %90 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.p9_rstatfs*, %struct.p9_rstatfs** %4, align 8
  %93 = getelementptr inbounds %struct.p9_rstatfs, %struct.p9_rstatfs* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %64, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.3, i64 0, i64 0), i32 %67, i64 %70, i64 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i64 %94)
  %96 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %97 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %98 = call i32 @p9_tag_remove(%struct.p9_client* %96, %struct.p9_req_t* %97)
  br label %99

99:                                               ; preds = %63, %55, %25
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
