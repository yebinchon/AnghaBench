; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_value.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_request_info = type { i32 }
%struct.iw_event = type { i8, i32 }

@IW_EV_LCP_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iwe_stream_add_value(%struct.iw_request_info* %0, i8* %1, i8* %2, i8* %3, %struct.iw_event* %4, i32 %5) #0 {
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iw_event*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iw_request_info* %0, %struct.iw_request_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.iw_event* %4, %struct.iw_event** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %15 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %14)
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* @IW_EV_LCP_LEN, align 8
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ult i8* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %6
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %33 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %32, i32 0, i32 0
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @memcpy(i8* %31, i8* %33, i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %47 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.iw_event*, %struct.iw_event** %11, align 8
  %50 = bitcast %struct.iw_event* %49 to i8*
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @memcpy(i8* %48, i8* %50, i32 %51)
  br label %53

53:                                               ; preds = %30, %6
  %54 = load i8*, i8** %9, align 8
  ret i8* %54
}

declare dso_local i32 @iwe_stream_lcp_len(%struct.iw_request_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
