; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_prepare_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_prepare_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_req_t = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.p9_client = type { i64, i32 }

@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"client %p op %d\0A\00", align 1
@Disconnected = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BeginDisconnect = common dso_local global i64 0, align 8
@P9_TCLUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_req_t* (%struct.p9_client*, i32, i32, i8*, i32)* @p9_client_prepare_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_req_t* @p9_client_prepare_req(%struct.p9_client* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.p9_req_t*, align 8
  %7 = alloca %struct.p9_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p9_req_t*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @P9_DEBUG_MUX, align 4
  %15 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @p9_debug(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.p9_client* %15, i32 %16)
  %18 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %19 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @Disconnected, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.p9_req_t* @ERR_PTR(i32 %25)
  store %struct.p9_req_t* %26, %struct.p9_req_t** %6, align 8
  br label %92

27:                                               ; preds = %5
  %28 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %29 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BeginDisconnect, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @P9_TCLUNK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.p9_req_t* @ERR_PTR(i32 %39)
  store %struct.p9_req_t* %40, %struct.p9_req_t** %6, align 8
  br label %92

41:                                               ; preds = %33, %27
  %42 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call %struct.p9_req_t* @p9_tag_alloc(%struct.p9_client* %42, i32 %43, i32 %44)
  store %struct.p9_req_t* %45, %struct.p9_req_t** %13, align 8
  %46 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %47 = call i64 @IS_ERR(%struct.p9_req_t* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  store %struct.p9_req_t* %50, %struct.p9_req_t** %6, align 8
  br label %92

51:                                               ; preds = %41
  %52 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %53 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %52, i32 0, i32 0
  %54 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %55 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @p9pdu_prepare(%struct.TYPE_4__* %53, i32 %57, i32 %58)
  %60 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %61 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %60, i32 0, i32 0
  %62 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %63 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @p9pdu_vwritef(%struct.TYPE_4__* %61, i32 %64, i8* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %84

71:                                               ; preds = %51
  %72 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %73 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %74 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %73, i32 0, i32 0
  %75 = call i32 @p9pdu_finalize(%struct.p9_client* %72, %struct.TYPE_4__* %74)
  %76 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %79 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @trace_9p_client_req(%struct.p9_client* %76, i32 %77, i32 %81)
  %83 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  store %struct.p9_req_t* %83, %struct.p9_req_t** %6, align 8
  br label %92

84:                                               ; preds = %70
  %85 = load %struct.p9_client*, %struct.p9_client** %7, align 8
  %86 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %87 = call i32 @p9_tag_remove(%struct.p9_client* %85, %struct.p9_req_t* %86)
  %88 = load %struct.p9_req_t*, %struct.p9_req_t** %13, align 8
  %89 = call i32 @p9_req_put(%struct.p9_req_t* %88)
  %90 = load i32, i32* %12, align 4
  %91 = call %struct.p9_req_t* @ERR_PTR(i32 %90)
  store %struct.p9_req_t* %91, %struct.p9_req_t** %6, align 8
  br label %92

92:                                               ; preds = %84, %71, %49, %37, %23
  %93 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  ret %struct.p9_req_t* %93
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.p9_client*, i32) #1

declare dso_local %struct.p9_req_t* @ERR_PTR(i32) #1

declare dso_local %struct.p9_req_t* @p9_tag_alloc(%struct.p9_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_prepare(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @p9pdu_vwritef(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @p9pdu_finalize(%struct.p9_client*, %struct.TYPE_4__*) #1

declare dso_local i32 @trace_9p_client_req(%struct.p9_client*, i32, i32) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @p9_req_put(%struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
