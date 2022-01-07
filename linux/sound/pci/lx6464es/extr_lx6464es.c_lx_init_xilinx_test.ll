; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_xilinx_test.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_init_xilinx_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"->lx_init_xilinx_test\0A\00", align 1
@eReg_CSM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Problem: Reg_CSM %x.\0A\00", align 1
@ePLX_PCICR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error: Reg_CSM %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Xilinx/MicroBlaze access test successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_init_xilinx_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_init_xilinx_test(%struct.lx6464es* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i64, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  %5 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %6 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %12 = load i32, i32* @eReg_CSM, align 4
  %13 = call i32 @lx_dsp_reg_write(%struct.lx6464es* %11, i32 %12, i32 0)
  %14 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %15 = load i32, i32* @eReg_CSM, align 4
  %16 = call i64 @lx_dsp_reg_read(%struct.lx6464es* %14, i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %21 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %28 = load i32, i32* @ePLX_PCICR, align 4
  %29 = call i32 @lx_plx_reg_write(%struct.lx6464es* %27, i32 %28, i32 1)
  %30 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %31 = load i32, i32* @eReg_CSM, align 4
  %32 = call i64 @lx_dsp_reg_read(%struct.lx6464es* %30, i32 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %19
  %36 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %37 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %48 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %35
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lx_dsp_reg_write(%struct.lx6464es*, i32, i32) #1

declare dso_local i64 @lx_dsp_reg_read(%struct.lx6464es*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @lx_plx_reg_write(%struct.lx6464es*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
