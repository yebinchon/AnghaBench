; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_renameat.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_renameat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c">>> TRENAMEAT olddirfid %d old name %s newdirfid %d new name %s\0A\00", align 1
@P9_TRENAMEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dsds\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"<<< RRENAMEAT newdirfid %d new name %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_renameat(%struct.p9_fid* %0, i8* %1, %struct.p9_fid* %2, i8* %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.p9_req_t*, align 8
  %11 = alloca %struct.p9_client*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.p9_fid* %2, %struct.p9_fid** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %13 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %12, i32 0, i32 1
  %14 = load %struct.p9_client*, %struct.p9_client** %13, align 8
  store %struct.p9_client* %14, %struct.p9_client** %11, align 8
  %15 = load i32, i32* @P9_DEBUG_9P, align 4
  %16 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %17 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %21 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 (i32, i8*, i32, i8*, ...) @p9_debug(i32 %15, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19, i32 %22, i8* %23)
  %25 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %26 = load i32, i32* @P9_TRENAMEAT, align 4
  %27 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %28 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %32 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* %30, i32 %33, i8* %34)
  store %struct.p9_req_t* %35, %struct.p9_req_t** %10, align 8
  %36 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %37 = call i64 @IS_ERR(%struct.p9_req_t* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_req_t* %40)
  store i32 %41, i32* %9, align 4
  br label %52

42:                                               ; preds = %4
  %43 = load i32, i32* @P9_DEBUG_9P, align 4
  %44 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  %45 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 (i32, i8*, i32, i8*, ...) @p9_debug(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %47)
  %49 = load %struct.p9_client*, %struct.p9_client** %11, align 8
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %51 = call i32 @p9_tag_remove(%struct.p9_client* %49, %struct.p9_req_t* %50)
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @p9_debug(i32, i8*, i32, i8*, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
