; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_check_ep_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_check_ep_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nhlt_endpoint = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [46 x i8] c"vbus_id=%d link_type=%d dir=%d dev_type = %d\0A\00", align 1
@NHLT_LINK_DMIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.nhlt_endpoint*, i64, i64, i64, i64)* @skl_check_ep_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_check_ep_match(%struct.device* %0, %struct.nhlt_endpoint* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nhlt_endpoint*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.nhlt_endpoint* %1, %struct.nhlt_endpoint** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.device*, %struct.device** %8, align 8
  %15 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %16 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %19 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %22 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %25 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20, i64 %23, i64 %26)
  %28 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %29 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %6
  %34 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %35 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %41 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %47 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NHLT_LINK_DMIC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %61

52:                                               ; preds = %45
  %53 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %9, align 8
  %54 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  br label %61

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %39, %33, %6
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %58, %51
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
