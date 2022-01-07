; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_fclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-dmic.c_omap_dmic_select_fclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dmic = type { i32, i32, i32, i32, i64, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid input frequency: %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"can't re-parent when DMIC active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"pad_clks_ck\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"slimbus_clk\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dmic_sync_mux_ck\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"fclk clk_id (%d) not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"can't get %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"can't get fck mux parent\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"re-parent failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dmic*, i32, i32)* @omap_dmic_select_fclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dmic_select_fclk(%struct.omap_dmic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dmic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.omap_dmic* %0, %struct.omap_dmic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %14 [
    i32 12000000, label %13
    i32 19200000, label %13
    i32 24000000, label %13
    i32 24576000, label %13
  ]

13:                                               ; preds = %3, %3, %3, %3
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %16 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %21 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %145

24:                                               ; preds = %13
  %25 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %26 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %33 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %145

34:                                               ; preds = %24
  %35 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %36 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %41 = call i64 @dmic_is_enabled(%struct.omap_dmic* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %45 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %145

50:                                               ; preds = %39, %34
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %55 [
    i32 130, label %52
    i32 129, label %53
    i32 128, label %54
  ]

52:                                               ; preds = %50
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %63

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %63

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %63

55:                                               ; preds = %50
  %56 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %57 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %145

63:                                               ; preds = %54, %53, %52
  %64 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %65 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call %struct.clk* @clk_get(i32 %66, i8* %67)
  store %struct.clk* %68, %struct.clk** %8, align 8
  %69 = load %struct.clk*, %struct.clk** %8, align 8
  %70 = call i64 @IS_ERR(%struct.clk* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %74 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %145

80:                                               ; preds = %63
  %81 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %82 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.clk* @clk_get_parent(i32 %83)
  store %struct.clk* %84, %struct.clk** %9, align 8
  %85 = load %struct.clk*, %struct.clk** %9, align 8
  %86 = call i64 @IS_ERR(%struct.clk* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %90 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %93 = load %struct.clk*, %struct.clk** %8, align 8
  %94 = call i32 @clk_put(%struct.clk* %93)
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %145

97:                                               ; preds = %80
  %98 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %99 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %98, i32 0, i32 3
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %102 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %107 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pm_runtime_put_sync(i32 %108)
  %110 = load %struct.clk*, %struct.clk** %9, align 8
  %111 = load %struct.clk*, %struct.clk** %8, align 8
  %112 = call i32 @clk_set_parent(%struct.clk* %110, %struct.clk* %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %114 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @pm_runtime_get_sync(i32 %115)
  br label %121

117:                                              ; preds = %97
  %118 = load %struct.clk*, %struct.clk** %9, align 8
  %119 = load %struct.clk*, %struct.clk** %8, align 8
  %120 = call i32 @clk_set_parent(%struct.clk* %118, %struct.clk* %119)
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %105
  %122 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %123 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %122, i32 0, i32 3
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %129 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %139

132:                                              ; preds = %121
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %135 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.omap_dmic*, %struct.omap_dmic** %5, align 8
  %138 = getelementptr inbounds %struct.omap_dmic, %struct.omap_dmic* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %132, %127
  %140 = load %struct.clk*, %struct.clk** %9, align 8
  %141 = call i32 @clk_put(%struct.clk* %140)
  %142 = load %struct.clk*, %struct.clk** %8, align 8
  %143 = call i32 @clk_put(%struct.clk* %142)
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %139, %88, %72, %55, %43, %30, %14
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @dmic_is_enabled(%struct.omap_dmic*) #1

declare dso_local %struct.clk* @clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
