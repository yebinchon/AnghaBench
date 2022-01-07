; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_ctdp_levels.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_ctdp_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp = type { i32, i32, i32, i32, i32 }

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_GET_LEVELS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cpu:%d CONFIG_TDP_GET_LEVELS_INFO resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_ctdp_levels(i32 %0, %struct.isst_pkg_ctdp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.isst_pkg_ctdp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.isst_pkg_ctdp* %1, %struct.isst_pkg_ctdp** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CONFIG_TDP, align 4
  %10 = load i32, i32* @CONFIG_TDP_GET_LEVELS_INFO, align 4
  %11 = call i32 @isst_send_mbox_command(i32 %8, i32 %9, i32 %10, i32 0, i32 0, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @debug_printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %5, align 8
  %23 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %5, align 8
  %28 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %5, align 8
  %33 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BIT(i32 24)
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %5, align 8
  %42 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @BIT(i32 31)
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.isst_pkg_ctdp*, %struct.isst_pkg_ctdp** %5, align 8
  %51 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %16, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
