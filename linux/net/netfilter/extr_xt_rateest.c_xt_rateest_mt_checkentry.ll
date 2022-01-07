; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_rateest.c_xt_rateest_mt_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.xt_rateest_match_info* }
%struct.xt_rateest_match_info = type { i32, i32, %struct.xt_rateest*, %struct.xt_rateest*, i32, i32 }
%struct.xt_rateest = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_ABS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_REL = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_BPS = common dso_local global i32 0, align 4
@XT_RATEEST_MATCH_PPS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @xt_rateest_mt_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_rateest_mt_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.xt_rateest_match_info*, align 8
  %5 = alloca %struct.xt_rateest*, align 8
  %6 = alloca %struct.xt_rateest*, align 8
  %7 = alloca i32, align 4
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 1
  %10 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %9, align 8
  store %struct.xt_rateest_match_info* %10, %struct.xt_rateest_match_info** %4, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %14 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XT_RATEEST_MATCH_ABS, align 4
  %17 = load i32, i32* @XT_RATEEST_MATCH_REL, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = call i32 @hweight32(i32 %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %84

23:                                               ; preds = %1
  %24 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %25 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XT_RATEEST_MATCH_BPS, align 4
  %28 = load i32, i32* @XT_RATEEST_MATCH_PPS, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %84

33:                                               ; preds = %23
  %34 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %35 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %38 [
    i32 130, label %37
    i32 128, label %37
    i32 129, label %37
  ]

37:                                               ; preds = %33, %33, %33
  br label %39

38:                                               ; preds = %33
  br label %84

39:                                               ; preds = %37
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %43 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %46 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.xt_rateest* @xt_rateest_lookup(i32 %44, i32 %47)
  store %struct.xt_rateest* %48, %struct.xt_rateest** %5, align 8
  %49 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %50 = icmp ne %struct.xt_rateest* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %84

52:                                               ; preds = %39
  store %struct.xt_rateest* null, %struct.xt_rateest** %6, align 8
  %53 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %54 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XT_RATEEST_MATCH_REL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %61 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %64 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.xt_rateest* @xt_rateest_lookup(i32 %62, i32 %65)
  store %struct.xt_rateest* %66, %struct.xt_rateest** %6, align 8
  %67 = load %struct.xt_rateest*, %struct.xt_rateest** %6, align 8
  %68 = icmp ne %struct.xt_rateest* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %78

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %52
  %72 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %73 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %74 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %73, i32 0, i32 3
  store %struct.xt_rateest* %72, %struct.xt_rateest** %74, align 8
  %75 = load %struct.xt_rateest*, %struct.xt_rateest** %6, align 8
  %76 = load %struct.xt_rateest_match_info*, %struct.xt_rateest_match_info** %4, align 8
  %77 = getelementptr inbounds %struct.xt_rateest_match_info, %struct.xt_rateest_match_info* %76, i32 0, i32 2
  store %struct.xt_rateest* %75, %struct.xt_rateest** %77, align 8
  store i32 0, i32* %2, align 4
  br label %86

78:                                               ; preds = %69
  %79 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %80 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.xt_rateest*, %struct.xt_rateest** %5, align 8
  %83 = call i32 @xt_rateest_put(i32 %81, %struct.xt_rateest* %82)
  br label %84

84:                                               ; preds = %78, %51, %38, %32, %22
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %71
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.xt_rateest* @xt_rateest_lookup(i32, i32) #1

declare dso_local i32 @xt_rateest_put(i32, %struct.xt_rateest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
