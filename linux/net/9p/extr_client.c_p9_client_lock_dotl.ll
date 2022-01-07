; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_lock_dotl.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_lock_dotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_flock = type { i32, i32, i32, i32, i32, i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c">>> TLOCK fid %d type %i flags %d start %lld length %lld proc_id %d client_id %s\0A\00", align 1
@P9_TLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dbdqqds\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"<<< RLOCK status %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_lock_dotl(%struct.p9_fid* %0, %struct.p9_flock* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.p9_flock*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.p9_client*, align 8
  %10 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store %struct.p9_flock* %1, %struct.p9_flock** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %12 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %11, i32 0, i32 1
  %13 = load %struct.p9_client*, %struct.p9_client** %12, align 8
  store %struct.p9_client* %13, %struct.p9_client** %9, align 8
  %14 = load i32, i32* @P9_DEBUG_9P, align 4
  %15 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %16 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %19 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %22 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %25 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %28 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %31 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %34 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %14, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %38 = load i32, i32* @P9_TLOCK, align 4
  %39 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %40 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %43 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %46 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %49 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %52 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %55 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.p9_flock*, %struct.p9_flock** %6, align 8
  %58 = getelementptr inbounds %struct.p9_flock, %struct.p9_flock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  store %struct.p9_req_t* %60, %struct.p9_req_t** %10, align 8
  %61 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %62 = call i64 @IS_ERR(%struct.p9_req_t* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %3
  %65 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %66 = call i32 @PTR_ERR(%struct.p9_req_t* %65)
  store i32 %66, i32* %4, align 4
  br label %92

67:                                               ; preds = %3
  %68 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %69 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %68, i32 0, i32 0
  %70 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %71 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @p9pdu_readf(i32* %69, i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %79 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %80 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %79, i32 0, i32 0
  %81 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %78, i32* %80)
  br label %87

82:                                               ; preds = %67
  %83 = load i32, i32* @P9_DEBUG_9P, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %89 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %90 = call i32 @p9_tag_remove(%struct.p9_client* %88, %struct.p9_req_t* %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %64
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
