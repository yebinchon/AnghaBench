; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra_asoc_utils.c_tegra_asoc_utils_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_asoc_utils_data = type { i32, i32, i32, i32, i32, i32, i32 }

@TEGRA_ASOC_UTILS_SOC_TEGRA20 = common dso_local global i32 0, align 4
@TEGRA_ASOC_UTILS_SOC_TEGRA30 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't set pll_a rate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't set pll_a_out0 rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't enable pll_a: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't enable pll_a_out0: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Can't enable cdev1: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_asoc_utils_set_rate(%struct.tegra_asoc_utils_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_asoc_utils_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_asoc_utils_data* %0, %struct.tegra_asoc_utils_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %46 [
    i32 11025, label %12
    i32 22050, label %12
    i32 44100, label %12
    i32 88200, label %12
    i32 8000, label %29
    i32 16000, label %29
    i32 32000, label %29
    i32 48000, label %29
    i32 64000, label %29
    i32 96000, label %29
  ]

12:                                               ; preds = %3, %3, %3, %3
  %13 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA20, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 56448000, i32* %8, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA30, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 564480000, i32* %8, align 4
  br label %27

26:                                               ; preds = %19
  store i32 282240000, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %18
  br label %49

29:                                               ; preds = %3, %3, %3, %3, %3, %3
  %30 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA20, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 73728000, i32* %8, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TEGRA_ASOC_UTILS_SOC_TEGRA30, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 552960000, i32* %8, align 4
  br label %44

43:                                               ; preds = %36
  store i32 368640000, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %35
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %162

49:                                               ; preds = %45, %28
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br label %61

61:                                               ; preds = %55, %49
  %62 = phi i1 [ true, %49 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %162

67:                                               ; preds = %61
  %68 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %69 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  %70 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %73 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_disable_unprepare(i32 %74)
  %76 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @clk_disable_unprepare(i32 %78)
  %80 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %81 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @clk_disable_unprepare(i32 %82)
  %84 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %85 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @clk_set_rate(i32 %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %67
  %92 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %93 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %4, align 4
  br label %162

98:                                               ; preds = %67
  %99 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %100 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @clk_set_rate(i32 %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %98
  %107 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %108 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %162

113:                                              ; preds = %98
  %114 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %115 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_prepare_enable(i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %122 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %162

127:                                              ; preds = %113
  %128 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %129 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clk_prepare_enable(i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %136 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @dev_err(i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %162

141:                                              ; preds = %127
  %142 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %143 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_prepare_enable(i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %150 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %4, align 4
  br label %162

155:                                              ; preds = %141
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %158 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.tegra_asoc_utils_data*, %struct.tegra_asoc_utils_data** %5, align 8
  %161 = getelementptr inbounds %struct.tegra_asoc_utils_data, %struct.tegra_asoc_utils_data* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %155, %148, %134, %120, %106, %91, %66, %46
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
