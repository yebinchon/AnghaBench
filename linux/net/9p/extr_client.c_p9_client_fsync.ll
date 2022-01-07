; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c">>> TFSYNC fid %d datasync:%d\0A\00", align 1
@P9_TFSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"<<< RFSYNC fid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_fsync(%struct.p9_fid* %0, i32 %1) #0 {
  %3 = alloca %struct.p9_fid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_client*, align 8
  %7 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @P9_DEBUG_9P, align 4
  %9 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %10 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  %14 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %15 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %14, i32 0, i32 1
  %16 = load %struct.p9_client*, %struct.p9_client** %15, align 8
  store %struct.p9_client* %16, %struct.p9_client** %6, align 8
  %17 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %18 = load i32, i32* @P9_TFSYNC, align 4
  %19 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  store %struct.p9_req_t* %23, %struct.p9_req_t** %7, align 8
  %24 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %25 = call i64 @IS_ERR(%struct.p9_req_t* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %29 = call i32 @PTR_ERR(%struct.p9_req_t* %28)
  store i32 %29, i32* %5, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @P9_DEBUG_9P, align 4
  %32 = load %struct.p9_fid*, %struct.p9_fid** %3, align 8
  %33 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.p9_client*, %struct.p9_client** %6, align 8
  %37 = load %struct.p9_req_t*, %struct.p9_req_t** %7, align 8
  %38 = call i32 @p9_tag_remove(%struct.p9_client* %36, %struct.p9_req_t* %37)
  br label %39

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
