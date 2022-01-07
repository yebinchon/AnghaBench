; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_parent_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_parent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_sai_sub_data = type { i32, %struct.TYPE_2__*, %struct.platform_device* }
%struct.TYPE_2__ = type { %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }
%struct.platform_device = type { i32 }

@SAI_RATE_11K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c" Error %d setting sai_ck parent clock. %s\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Active stream rates conflict\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_sai_sub_data*, i32)* @stm32_sai_set_parent_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_parent_clock(%struct.stm32_sai_sub_data* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_sai_sub_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.stm32_sai_sub_data* %0, %struct.stm32_sai_sub_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %8, i32 0, i32 2
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %15, %struct.clk** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SAI_RATE_11K, align 4
  %18 = urem i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  store %struct.clk* %25, %struct.clk** %6, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %28 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.clk*, %struct.clk** %6, align 8
  %31 = call i32 @clk_set_parent(i32 %29, %struct.clk* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %43)
  br label %45

45:                                               ; preds = %34, %26
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
