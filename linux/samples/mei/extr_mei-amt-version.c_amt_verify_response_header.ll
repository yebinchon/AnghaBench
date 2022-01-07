; ModuleID = '/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_amt_verify_response_header.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mei/extr_mei-amt-version.c_amt_verify_response_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amt_host_if_msg_header = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AMT_STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@AMT_MAJOR_VERSION = common dso_local global i64 0, align 8
@AMT_MINOR_VERSION = common dso_local global i64 0, align 8
@AMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.amt_host_if_msg_header*, i32)* @amt_verify_response_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amt_verify_response_header(i32 %0, %struct.amt_host_if_msg_header* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amt_host_if_msg_header*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.amt_host_if_msg_header* %1, %struct.amt_host_if_msg_header** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %12, i32* %4, align 4
  br label %61

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.amt_host_if_msg_header*, %struct.amt_host_if_msg_header** %6, align 8
  %17 = getelementptr inbounds %struct.amt_host_if_msg_header, %struct.amt_host_if_msg_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 32
  %21 = icmp ne i64 %15, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %13
  %25 = load %struct.amt_host_if_msg_header*, %struct.amt_host_if_msg_header** %6, align 8
  %26 = getelementptr inbounds %struct.amt_host_if_msg_header, %struct.amt_host_if_msg_header* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.amt_host_if_msg_header*, %struct.amt_host_if_msg_header** %6, align 8
  %34 = getelementptr inbounds %struct.amt_host_if_msg_header, %struct.amt_host_if_msg_header* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %32
  %40 = load %struct.amt_host_if_msg_header*, %struct.amt_host_if_msg_header** %6, align 8
  %41 = getelementptr inbounds %struct.amt_host_if_msg_header, %struct.amt_host_if_msg_header* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AMT_MAJOR_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.amt_host_if_msg_header*, %struct.amt_host_if_msg_header** %6, align 8
  %48 = getelementptr inbounds %struct.amt_host_if_msg_header, %struct.amt_host_if_msg_header* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AMT_MINOR_VERSION, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @AMT_STATUS_INTERNAL_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* @AMT_STATUS_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %53, %37, %30, %22, %11
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
