; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_xilinx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_xilinx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ePLX_CHIPSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"->lx_init_xilinx_reset\0A\00", align 1
@CHIPSC_RESET_XILINX = common dso_local global i64 0, align 8
@ePLX_MBOX3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"xilinx reset done\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"xilinx took %d loops\0A\00", align 1
@eReg_CSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_init_xilinx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_init_xilinx_reset(%struct.lx6464es* %0) #0 {
  %2 = alloca %struct.lx6464es*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %2, align 8
  %6 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %7 = load i32, i32* @ePLX_CHIPSC, align 4
  %8 = call i64 @lx_plx_reg_read(%struct.lx6464es* %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %10 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @CHIPSC_RESET_XILINX, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %20 = load i32, i32* @ePLX_CHIPSC, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @lx_plx_reg_write(%struct.lx6464es* %19, i32 %20, i64 %21)
  %23 = call i32 @msleep(i32 1)
  %24 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %25 = load i32, i32* @ePLX_MBOX3, align 4
  %26 = call i32 @lx_plx_reg_write(%struct.lx6464es* %24, i32 %25, i64 0)
  %27 = call i32 @msleep(i32 1)
  %28 = load i64, i64* @CHIPSC_RESET_XILINX, align 8
  %29 = load i64, i64* %4, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %32 = load i32, i32* @ePLX_CHIPSC, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @lx_plx_reg_write(%struct.lx6464es* %31, i32 %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %60, %1
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 100
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = call i32 @msleep(i32 10)
  %40 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %41 = load i32, i32* @ePLX_MBOX3, align 4
  %42 = call i64 @lx_plx_reg_read(%struct.lx6464es* %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %47 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %53 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %35

63:                                               ; preds = %45, %35
  %64 = load %struct.lx6464es*, %struct.lx6464es** %2, align 8
  %65 = load i32, i32* @eReg_CSM, align 4
  %66 = call i32 @lx_dsp_reg_write(%struct.lx6464es* %64, i32 %65, i32 0)
  %67 = call i32 @msleep(i32 600)
  ret i32 0
}

declare dso_local i64 @lx_plx_reg_read(%struct.lx6464es*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lx_plx_reg_write(%struct.lx6464es*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lx_dsp_reg_write(%struct.lx6464es*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
