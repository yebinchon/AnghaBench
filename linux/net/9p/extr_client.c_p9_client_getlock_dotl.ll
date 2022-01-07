; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_getlock_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_getlock_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_getlock = type { i32, i32, i32, i32, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c">>> TGETLOCK fid %d, type %i start %lld length %lld proc_id %d client_id %s\0A\00", align 1
@P9_TGETLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dbqqds\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bqqds\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"<<< RGETLOCK type %i start %lld length %lld proc_id %d client_id %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_getlock_dotl(%struct.p9_fid* %0, %struct.p9_getlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_fid*, align 8
  %5 = alloca %struct.p9_getlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %4, align 8
  store %struct.p9_getlock* %1, %struct.p9_getlock** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %10 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %9, i32 0, i32 1
  %11 = load %struct.p9_client*, %struct.p9_client** %10, align 8
  store %struct.p9_client* %11, %struct.p9_client** %7, align 8
  %12 = load i32, i32* @P9_DEBUG_9P, align 4
  %13 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %14 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %17 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %20 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %23 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %26 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %29 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @p9_debug(i32 %12, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %33 = load i32, i32* @P9_TGETLOCK, align 4
  %34 = load %struct.p9_fid*, %struct.p9_fid** %4, align 8
  %35 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %38 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %41 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %44 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %47 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %50 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  store %struct.p9_req_t* %52, %struct.p9_req_t** %8, align 8
  %53 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %54 = call i64 @IS_ERR(%struct.p9_req_t* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %2
  %57 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %58 = call i32 @PTR_ERR(%struct.p9_req_t* %57)
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %2
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %61 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %60, i32 0, i32 0
  %62 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %63 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %66 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %65, i32 0, i32 4
  %67 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %68 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %67, i32 0, i32 3
  %69 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %70 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %69, i32 0, i32 2
  %71 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %72 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %71, i32 0, i32 1
  %73 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %74 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %73, i32 0, i32 0
  %75 = call i32 @p9pdu_readf(i32* %61, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %66, i32* %68, i32* %70, i32* %72, i32* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %59
  %79 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %80 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %81 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %80, i32 0, i32 0
  %82 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %79, i32* %81)
  br label %101

83:                                               ; preds = %59
  %84 = load i32, i32* @P9_DEBUG_9P, align 4
  %85 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %86 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %89 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %92 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %95 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.p9_getlock*, %struct.p9_getlock** %5, align 8
  %98 = getelementptr inbounds %struct.p9_getlock, %struct.p9_getlock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, i32, i32, i32, i32, i32, ...) @p9_debug(i32 %84, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %83, %78
  %102 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %103 = load %struct.p9_req_t*, %struct.p9_req_t** %8, align 8
  %104 = call i32 @p9_tag_remove(%struct.p9_client* %102, %struct.p9_req_t* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %56
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @p9_debug(i32, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
