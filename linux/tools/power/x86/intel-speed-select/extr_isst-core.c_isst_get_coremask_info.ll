; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_coremask_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_coremask_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp_level_info = type { i32, i32, i32 }

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_GET_CORE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cpu:%d ctdp:%d mask:%d CONFIG_TDP_GET_CORE_MASK resp:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cpu:%d ctdp:%d mask:%d cpu count:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_coremask_info(i32 %0, i32 %1, %struct.isst_pkg_ctdp_level_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_pkg_ctdp_level_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_pkg_ctdp_level_info* %2, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %13 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %14 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %64, %3
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %67

18:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CONFIG_TDP, align 4
  %21 = load i32, i32* @CONFIG_TDP_GET_CORE_MASK, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @isst_send_mbox_command(i32 %19, i32 %20, i32 %21, i32 0, i32 %25, i32* %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @debug_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 32, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %38, %41
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %46 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %49 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @set_cpu_mask_from_punit_coremask(i32 %43, i64 %44, i32 %47, i32 %50, i32* %12)
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %54 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.isst_pkg_ctdp_level_info*, %struct.isst_pkg_ctdp_level_info** %7, align 8
  %61 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @debug_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %31
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %15

67:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %29
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @set_cpu_mask_from_punit_coremask(i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
