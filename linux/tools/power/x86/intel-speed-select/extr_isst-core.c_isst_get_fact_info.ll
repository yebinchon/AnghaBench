; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_fact_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_fact_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_fact_info = type { i32, i32, i32, i32 }

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cpu:%d CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_fact_info(i32 %0, i32 %1, %struct.isst_fact_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_fact_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_fact_info* %2, %struct.isst_fact_info** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_TDP, align 4
  %12 = load i32, i32* @CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @isst_send_mbox_command(i32 %10, i32 %11, i32 %12, i32 0, i32 %13, i32* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @debug_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 255
  %25 = load %struct.isst_fact_info*, %struct.isst_fact_info** %7, align 8
  %26 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = lshr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load %struct.isst_fact_info*, %struct.isst_fact_info** %7, align 8
  %31 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  %35 = load %struct.isst_fact_info*, %struct.isst_fact_info** %7, align 8
  %36 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.isst_fact_info*, %struct.isst_fact_info** %7, align 8
  %40 = getelementptr inbounds %struct.isst_fact_info, %struct.isst_fact_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @isst_get_fact_bucket_info(i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %19, %17
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32) #1

declare dso_local i32 @isst_get_fact_bucket_info(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
