; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, %struct.p9_client* }
%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c">>> TLINK dfid %d oldfid %d newname %s\0A\00", align 1
@P9_TLINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dds\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<<< RLINK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_link(%struct.p9_fid* %0, %struct.p9_fid* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca %struct.p9_fid*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.p9_client*, align 8
  %9 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store %struct.p9_fid* %1, %struct.p9_fid** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @P9_DEBUG_9P, align 4
  %11 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %12 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %15 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i32, i8*, ...) @p9_debug(i32 %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i8* %17)
  %19 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %20 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %19, i32 0, i32 1
  %21 = load %struct.p9_client*, %struct.p9_client** %20, align 8
  store %struct.p9_client* %21, %struct.p9_client** %8, align 8
  %22 = load %struct.p9_client*, %struct.p9_client** %8, align 8
  %23 = load i32, i32* @P9_TLINK, align 4
  %24 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %25 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.p9_fid*, %struct.p9_fid** %6, align 8
  %28 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %22, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i8* %30)
  store %struct.p9_req_t* %31, %struct.p9_req_t** %9, align 8
  %32 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %33 = call i64 @IS_ERR(%struct.p9_req_t* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %37 = call i32 @PTR_ERR(%struct.p9_req_t* %36)
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %3
  %39 = load i32, i32* @P9_DEBUG_9P, align 4
  %40 = call i32 (i32, i8*, ...) @p9_debug(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.p9_client*, %struct.p9_client** %8, align 8
  %42 = load %struct.p9_req_t*, %struct.p9_req_t** %9, align 8
  %43 = call i32 @p9_tag_remove(%struct.p9_client* %41, %struct.p9_req_t* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @p9_debug(i32, i8*, ...) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
