; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_xattrcreate.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_xattrcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c">>> TXATTRCREATE fid %d name  %s size %lld flag %d\0A\00", align 1
@P9_TXATTRCREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dsqd\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"<<< RXATTRCREATE fid %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_xattrcreate(%struct.p9_fid* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_req_t*, align 8
  %11 = alloca %struct.p9_client*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @P9_DEBUG_9P, align 4
  %13 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %14 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16, i64 %17, i32 %18)
  store i32 0, i32* %9, align 4
  %20 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %21 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %20, i32 0, i32 1
  %22 = load %struct.p9_client*, %struct.p9_client** %21, align 8
  store %struct.p9_client* %22, %struct.p9_client** %11, align 8
  %23 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %24 = load i32, i32* @P9_TXATTRCREATE, align 4
  %25 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %26 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %27, i8* %28, i64 %29, i32 %30)
  store %struct.p9_req_t* %31, %struct.p9_req_t** %10, align 8
  %32 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %33 = call i64 @IS_ERR(%struct.p9_req_t* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.p9_req_t* %36)
  store i32 %37, i32* %9, align 4
  br label %47

38:                                               ; preds = %4
  %39 = load i32, i32* @P9_DEBUG_9P, align 4
  %40 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %41 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %45 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %46 = call i32 @p9_tag_remove(%struct.p9_client* %44, %struct.p9_req_t* %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
