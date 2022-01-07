; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_amt_host_if_call.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_amt_host_if_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amt_host_if = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.amt_host_if_resp_header = type { i32, i32 }

@AMT_STATUS_SDK_RESOURCES = common dso_local global i32 0, align 4
@AMT_STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@AMT_STATUS_HOST_IF_EMPTY_RESPONSE = common dso_local global i32 0, align 4
@AMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amt_host_if*, i8*, i64, i32**, i32, i32)* @amt_host_if_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amt_host_if_call(%struct.amt_host_if* %0, i8* %1, i64 %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amt_host_if*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.amt_host_if_resp_header*, align 8
  store %struct.amt_host_if* %0, %struct.amt_host_if** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.amt_host_if*, %struct.amt_host_if** %8, align 8
  %20 = getelementptr inbounds %struct.amt_host_if, %struct.amt_host_if* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i64 @malloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32**, i32*** %11, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32**, i32*** %11, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @AMT_STATUS_SDK_RESOURCES, align 4
  store i32 %34, i32* %7, align 4
  br label %99

35:                                               ; preds = %6
  %36 = load i32**, i32*** %11, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @memset(i32* %37, i32 0, i32 %38)
  %40 = load i32**, i32*** %11, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to %struct.amt_host_if_resp_header*
  store %struct.amt_host_if_resp_header* %42, %struct.amt_host_if_resp_header** %18, align 8
  %43 = load %struct.amt_host_if*, %struct.amt_host_if** %8, align 8
  %44 = getelementptr inbounds %struct.amt_host_if, %struct.amt_host_if* %43, i32 0, i32 0
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.amt_host_if*, %struct.amt_host_if** %8, align 8
  %48 = getelementptr inbounds %struct.amt_host_if, %struct.amt_host_if* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @mei_send_msg(%struct.TYPE_3__* %44, i8* %45, i64 %46, i32 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %55, i32* %7, align 4
  br label %99

56:                                               ; preds = %35
  %57 = load %struct.amt_host_if*, %struct.amt_host_if** %8, align 8
  %58 = getelementptr inbounds %struct.amt_host_if, %struct.amt_host_if* %57, i32 0, i32 0
  %59 = load i32**, i32*** %11, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @mei_recv_msg(%struct.TYPE_3__* %58, i32* %60, i32 %61, i32 2000)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @AMT_STATUS_HOST_IF_EMPTY_RESPONSE, align 4
  store i32 %66, i32* %7, align 4
  br label %99

67:                                               ; preds = %56
  %68 = load %struct.amt_host_if_resp_header*, %struct.amt_host_if_resp_header** %18, align 8
  %69 = getelementptr inbounds %struct.amt_host_if_resp_header, %struct.amt_host_if_resp_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @AMT_STATUS_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %17, align 4
  store i32 %75, i32* %7, align 4
  br label %99

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.amt_host_if_resp_header*, %struct.amt_host_if_resp_header** %18, align 8
  %79 = getelementptr inbounds %struct.amt_host_if_resp_header, %struct.amt_host_if_resp_header* %78, i32 0, i32 1
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @amt_verify_response_header(i32 %77, i32* %79, i64 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @AMT_STATUS_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %7, align 4
  br label %99

87:                                               ; preds = %76
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %15, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %96, i32* %7, align 4
  br label %99

97:                                               ; preds = %90, %87
  %98 = load i32, i32* @AMT_STATUS_SUCCESS, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %95, %85, %74, %65, %54, %33
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mei_send_msg(%struct.TYPE_3__*, i8*, i64, i32) #1

declare dso_local i64 @mei_recv_msg(%struct.TYPE_3__*, i32*, i32, i32) #1

declare dso_local i32 @amt_verify_response_header(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
