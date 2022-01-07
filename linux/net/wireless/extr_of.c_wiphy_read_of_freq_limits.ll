; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_read_of_freq_limits.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_of.c_wiphy_read_of_freq_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }
%struct.ieee80211_freq_range = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ieee80211-freq-limit\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ieee80211-freq-limit wrong format\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get limits: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_read_of_freq_limits(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.ieee80211_freq_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_freq_range*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %14 = call %struct.device* @wiphy_dev(%struct.wiphy* %13)
  store %struct.device* %14, %struct.device** %3, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = icmp ne %struct.device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %131

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call %struct.device_node* @dev_of_node(%struct.device* %19)
  store %struct.device_node* %20, %struct.device_node** %4, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %131

24:                                               ; preds = %18
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call %struct.property* @of_find_property(%struct.device_node* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %9)
  store %struct.property* %26, %struct.property** %5, align 8
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = icmp ne %struct.property* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %131

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %35, 4
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = urem i64 %41, 2
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %33, %30
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %131

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = udiv i64 %50, 2
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.ieee80211_freq_range* @kcalloc(i32 %53, i32 16, i32 %54)
  store %struct.ieee80211_freq_range* %55, %struct.ieee80211_freq_range** %6, align 8
  %56 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %57 = icmp ne %struct.ieee80211_freq_range* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %122

61:                                               ; preds = %47
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %114, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %117

66:                                               ; preds = %62
  %67 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %67, i64 %69
  store %struct.ieee80211_freq_range* %70, %struct.ieee80211_freq_range** %12, align 8
  %71 = load %struct.property*, %struct.property** %5, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %74 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %73, i32 0, i32 0
  %75 = call i32* @of_prop_next_u32(%struct.property* %71, i32* %72, i64* %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %122

81:                                               ; preds = %66
  %82 = load %struct.property*, %struct.property** %5, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %84, i32 0, i32 1
  %86 = call i32* @of_prop_next_u32(%struct.property* %82, i32* %83, i64* %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %122

92:                                               ; preds = %81
  %93 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %94 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %99 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %104 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %107 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %102, %97, %92
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %122

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %62

117:                                              ; preds = %62
  %118 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %119 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @wiphy_freq_limits_apply(%struct.wiphy* %118, %struct.ieee80211_freq_range* %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %110, %89, %78, %58
  %123 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %6, align 8
  %124 = call i32 @kfree(%struct.ieee80211_freq_range* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.device*, %struct.device** %3, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %17, %23, %29, %44, %127, %122
  ret void
}

declare dso_local %struct.device* @wiphy_dev(%struct.wiphy*) #1

declare dso_local %struct.device_node* @dev_of_node(%struct.device*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.ieee80211_freq_range* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @of_prop_next_u32(%struct.property*, i32*, i64*) #1

declare dso_local i32 @wiphy_freq_limits_apply(%struct.wiphy*, %struct.ieee80211_freq_range*, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_freq_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
