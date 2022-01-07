; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_point.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_request_info = type { i32 }
%struct.iw_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IW_EV_LCP_PK_LEN = common dso_local global i32 0, align 4
@IW_EV_POINT_OFF = common dso_local global i32 0, align 4
@IW_EV_POINT_PK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iwe_stream_add_point(%struct.iw_request_info* %0, i8* %1, i8* %2, %struct.iw_event* %3, i8* %4) #0 {
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iw_request_info* %0, %struct.iw_request_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.iw_event* %3, %struct.iw_event** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %15 = call i32 @iwe_stream_point_len(%struct.iw_request_info* %14)
  %16 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %17 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %15, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %23 = call i32 @iwe_stream_point_len(%struct.iw_request_info* %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %25 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ult i8* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %5
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %38 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %41 = bitcast %struct.iw_event* %40 to i8*
  %42 = load i32, i32* @IW_EV_LCP_PK_LEN, align 4
  %43 = call i32 @memcpy(i8* %39, i8* %41, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %49 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %48, i32 0, i32 1
  %50 = bitcast %struct.TYPE_4__* %49 to i8*
  %51 = load i32, i32* @IW_EV_POINT_OFF, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* @IW_EV_POINT_PK_LEN, align 4
  %55 = load i32, i32* @IW_EV_LCP_PK_LEN, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @memcpy(i8* %47, i8* %53, i32 %56)
  %58 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %59 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %35
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %74 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcpy(i8* %71, i8* %72, i32 %77)
  br label %79

79:                                               ; preds = %67, %64, %35
  %80 = load i32, i32* %11, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %7, align 8
  br label %84

84:                                               ; preds = %79, %5
  %85 = load i8*, i8** %7, align 8
  ret i8* %85
}

declare dso_local i32 @iwe_stream_point_len(%struct.iw_request_info*) #1

declare dso_local i32 @iwe_stream_lcp_len(%struct.iw_request_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
