; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-core.c_iwe_stream_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_request_info = type { i32 }
%struct.iw_event = type { i32, i8 }

@IW_EV_LCP_PK_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iwe_stream_add_event(%struct.iw_request_info* %0, i8* %1, i8* %2, %struct.iw_event* %3, i32 %4) #0 {
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iw_request_info* %0, %struct.iw_request_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.iw_event* %3, %struct.iw_event** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %13 = call i32 @iwe_stream_lcp_len(%struct.iw_request_info* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @iwe_stream_event_len_adjust(%struct.iw_request_info* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ult i8* %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %29 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %32 = bitcast %struct.iw_event* %31 to i8*
  %33 = load i32, i32* @IW_EV_LCP_PK_LEN, align 4
  %34 = call i32 @memcpy(i8* %30, i8* %32, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load %struct.iw_event*, %struct.iw_event** %9, align 8
  %40 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %39, i32 0, i32 1
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @memcpy(i8* %38, i8* %40, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %26, %5
  %50 = load i8*, i8** %7, align 8
  ret i8* %50
}

declare dso_local i32 @iwe_stream_lcp_len(%struct.iw_request_info*) #1

declare dso_local i32 @iwe_stream_event_len_adjust(%struct.iw_request_info*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
