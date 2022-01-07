; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.p9_req_t = type { i64, i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c">>> TFLUSH tag %d\0A\00", align 1
@P9_TFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@REQ_STATUS_SENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_client_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_client_flush(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca %struct.p9_req_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %9 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %10 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %9, i32 0, i32 1
  %11 = call i32 @p9_parse_header(i32* %10, i32* null, i32* null, i32* %7, i32 1)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* @P9_DEBUG_9P, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @p9_debug(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %21 = load i32, i32* @P9_TFLUSH, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %20, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  store %struct.p9_req_t* %23, %struct.p9_req_t** %6, align 8
  %24 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %25 = call i64 @IS_ERR(%struct.p9_req_t* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %29 = call i32 @PTR_ERR(%struct.p9_req_t* %28)
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %16
  %31 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %32 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REQ_STATUS_SENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %38 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.p9_client*, %struct.p9_req_t*)**
  %42 = load i32 (%struct.p9_client*, %struct.p9_req_t*)*, i32 (%struct.p9_client*, %struct.p9_req_t*)** %41, align 8
  %43 = icmp ne i32 (%struct.p9_client*, %struct.p9_req_t*)* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %46 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i32 (%struct.p9_client*, %struct.p9_req_t*)**
  %50 = load i32 (%struct.p9_client*, %struct.p9_req_t*)*, i32 (%struct.p9_client*, %struct.p9_req_t*)** %49, align 8
  %51 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %52 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %53 = call i32 %50(%struct.p9_client* %51, %struct.p9_req_t* %52)
  br label %54

54:                                               ; preds = %44, %36
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %57 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %58 = call i32 @p9_tag_remove(%struct.p9_client* %56, %struct.p9_req_t* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %27, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @p9_parse_header(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @p9_debug(i32, i8*, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
