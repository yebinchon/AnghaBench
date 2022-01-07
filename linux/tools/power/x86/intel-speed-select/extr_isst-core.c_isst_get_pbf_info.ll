; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_pbf_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_pbf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pbf_info = type { i32, i32, i32, i32, i32, i32, i32 }

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_PBF_GET_CORE_MASK_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cpu:%d CONFIG_TDP_PBF_GET_CORE_MASK_INFO resp:%x\0A\00", align 1
@CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"cpu:%d CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO resp:%x\0A\00", align 1
@CONFIG_TDP_PBF_GET_TDP_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"cpu:%d CONFIG_TDP_PBF_GET_TDP_INFO resp:%x\0A\00", align 1
@CONFIG_TDP_PBF_GET_TJ_MAX_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"cpu:%d CONFIG_TDP_PBF_GET_TJ_MAX_INFO resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_pbf_info(i32 %0, i32 %1, %struct.isst_pbf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_pbf_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_pbf_info* %2, %struct.isst_pbf_info** %7, align 8
  %14 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %15 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %14, i32 0, i32 5
  %16 = call i32 @alloc_cpu_set(i32* %15)
  %17 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %18 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %54, %3
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @CONFIG_TDP, align 4
  %25 = load i32, i32* @CONFIG_TDP_PBF_GET_CORE_MASK_INFO, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @isst_send_mbox_command(i32 %23, i32 %24, i32 %25, i32 0, i32 %29, i32* %9)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %123

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @debug_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 32, %41
  %43 = zext i32 %42 to i64
  %44 = shl i64 %40, %43
  store i64 %44, i64* %12, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %48 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %51 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_cpu_mask_from_punit_coremask(i32 %45, i64 %46, i32 %49, i32 %52, i32* %13)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @CONFIG_TDP, align 4
  %61 = load i32, i32* @CONFIG_TDP_PBF_GET_P1HI_P1LO_INFO, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @isst_send_mbox_command(i32 %59, i32 %60, i32 %61, i32 0, i32 %62, i32* %9)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %123

68:                                               ; preds = %57
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @debug_printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 255
  %74 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %75 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @GENMASK(i32 15, i32 8)
  %78 = and i32 %76, %77
  %79 = lshr i32 %78, 8
  %80 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %81 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @CONFIG_TDP, align 4
  %85 = load i32, i32* @CONFIG_TDP_PBF_GET_TDP_INFO, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @isst_send_mbox_command(i32 %83, i32 %84, i32 %85, i32 0, i32 %86, i32* %9)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %68
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %123

92:                                               ; preds = %68
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @debug_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 65535
  %98 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %99 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @CONFIG_TDP, align 4
  %103 = load i32, i32* @CONFIG_TDP_PBF_GET_TJ_MAX_INFO, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @isst_send_mbox_command(i32 %101, i32 %102, i32 %103, i32 0, i32 %104, i32* %9)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %123

110:                                              ; preds = %92
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @debug_printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = lshr i32 %114, 8
  %116 = and i32 %115, 255
  %117 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %118 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = and i32 %119, 255
  %121 = load %struct.isst_pbf_info*, %struct.isst_pbf_info** %7, align 8
  %122 = getelementptr inbounds %struct.isst_pbf_info, %struct.isst_pbf_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %110, %108, %90, %66, %33
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @alloc_cpu_set(i32*) #1

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32) #1

declare dso_local i32 @set_cpu_mask_from_punit_coremask(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
