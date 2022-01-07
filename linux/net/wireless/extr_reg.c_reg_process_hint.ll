; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_process_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i32, i64 }
%struct.wiphy = type { i32 }

@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid initiator %d\0A\00", align 1
@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@REG_REQ_OK = common dso_local global i32 0, align 4
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unexpected treatment value %d\0A\00", align 1
@REGULATORY_STRICT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulatory_request*)* @reg_process_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_process_hint(%struct.regulatory_request* %0) #0 {
  %2 = alloca %struct.regulatory_request*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulatory_request* %0, %struct.regulatory_request** %2, align 8
  store %struct.wiphy* null, %struct.wiphy** %3, align 8
  %6 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %7 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %10 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %16 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.wiphy* @wiphy_idx_to_wiphy(i64 %17)
  store %struct.wiphy* %18, %struct.wiphy** %3, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %43 [
    i32 131, label %21
    i32 128, label %24
    i32 129, label %27
    i32 130, label %35
  ]

21:                                               ; preds = %19
  %22 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %23 = call i32 @reg_process_hint_core(%struct.regulatory_request* %22)
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %19
  %25 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %26 = call i32 @reg_process_hint_user(%struct.regulatory_request* %25)
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %19
  %28 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %29 = icmp ne %struct.wiphy* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %85

31:                                               ; preds = %27
  %32 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %33 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %34 = call i32 @reg_process_hint_driver(%struct.wiphy* %32, %struct.regulatory_request* %33)
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %19
  %36 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %37 = icmp ne %struct.wiphy* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %85

39:                                               ; preds = %35
  %40 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %41 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %42 = call i32 @reg_process_hint_country_ie(%struct.wiphy* %40, %struct.regulatory_request* %41)
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %19
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %85

46:                                               ; preds = %39, %31, %24, %21
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @REG_REQ_IGNORE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %85

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @REG_REQ_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  %58 = icmp ne i32 %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @WARN(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %69 = icmp ne %struct.wiphy* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %72 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @wiphy_update_regulatory(%struct.wiphy* %78, i32 %79)
  %81 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %82 = call i32 @wiphy_all_share_dfs_chan_state(%struct.wiphy* %81)
  %83 = call i32 (...) @reg_check_channels()
  br label %84

84:                                               ; preds = %77, %70, %67, %59
  br label %88

85:                                               ; preds = %50, %43, %38, %30
  %86 = load %struct.regulatory_request*, %struct.regulatory_request** %2, align 8
  %87 = call i32 @reg_free_request(%struct.regulatory_request* %86)
  br label %88

88:                                               ; preds = %85, %84
  ret void
}

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i64) #1

declare dso_local i32 @reg_process_hint_core(%struct.regulatory_request*) #1

declare dso_local i32 @reg_process_hint_user(%struct.regulatory_request*) #1

declare dso_local i32 @reg_process_hint_driver(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @reg_process_hint_country_ie(%struct.wiphy*, %struct.regulatory_request*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @wiphy_update_regulatory(%struct.wiphy*, i32) #1

declare dso_local i32 @wiphy_all_share_dfs_chan_state(%struct.wiphy*) #1

declare dso_local i32 @reg_check_channels(...) #1

declare dso_local i32 @reg_free_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
