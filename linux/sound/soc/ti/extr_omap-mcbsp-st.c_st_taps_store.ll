; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_st_taps_store.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp-st.c_st_taps_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.omap_mcbsp = type { i32, %struct.omap_mcbsp_st_data* }
%struct.omap_mcbsp_st_data = type { i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @st_taps_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @st_taps_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.omap_mcbsp*, align 8
  %10 = alloca %struct.omap_mcbsp_st_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.omap_mcbsp* @dev_get_drvdata(%struct.device* %15)
  store %struct.omap_mcbsp* %16, %struct.omap_mcbsp** %9, align 8
  %17 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %9, align 8
  %18 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %17, i32 0, i32 1
  %19 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %18, align 8
  store %struct.omap_mcbsp_st_data* %19, %struct.omap_mcbsp_st_data** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %9, align 8
  %21 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %10, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 8)
  %27 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %10, align 8
  %28 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %70, %4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @sscanf(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %29
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %8, align 8
  br label %75

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, -32768
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 32767
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %8, align 8
  br label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %10, align 8
  %52 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 44
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %71

67:                                               ; preds = %49
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  br label %70

70:                                               ; preds = %67
  br i1 true, label %29, label %71

71:                                               ; preds = %70, %66
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.omap_mcbsp_st_data*, %struct.omap_mcbsp_st_data** %10, align 8
  %74 = getelementptr inbounds %struct.omap_mcbsp_st_data, %struct.omap_mcbsp_st_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %46, %37
  %76 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %9, align 8
  %77 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load i64, i64* %8, align 8
  ret i64 %79
}

declare dso_local %struct.omap_mcbsp* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
