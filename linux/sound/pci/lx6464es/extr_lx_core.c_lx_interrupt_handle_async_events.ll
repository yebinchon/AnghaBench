; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_handle_async_events.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_interrupt_handle_async_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MASK_SYS_STATUS_EOBO = common dso_local global i32 0, align 4
@MASK_SYS_STATUS_EOBI = common dso_local global i32 0, align 4
@MASK_SYS_STATUS_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"interrupt: EOBI pending %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"interrupt: EOBO pending %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, i32, i32*, i32*, i32*)* @lx_interrupt_handle_async_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_interrupt_handle_async_events(%struct.lx6464es* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lx6464es*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [9 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MASK_SYS_STATUS_EOBO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MASK_SYS_STATUS_EOBI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MASK_SYS_STATUS_FREQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %36 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 0
  %37 = call i32 @lx_dsp_read_async_events(%struct.lx6464es* %35, i32* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %82

42:                                               ; preds = %5
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 32
  %49 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 4
  %50 = load i32, i32* %49, align 16
  %51 = add nsw i32 %48, %50
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %54 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %45, %42
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 32
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %67, %69
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct.lx6464es*, %struct.lx6464es** %7, align 8
  %73 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %64, %61
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %40
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @lx_dsp_read_async_events(%struct.lx6464es*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
