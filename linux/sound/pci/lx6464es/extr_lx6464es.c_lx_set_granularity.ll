; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_set_granularity.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_set_granularity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MICROBLAZE_IBL_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"->lx_set_granularity\0A\00", align 1
@MICROBLAZE_IBL_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not set granularity\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"snapped blocksize to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"set blocksize on board %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, i32)* @lx_set_granularity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_set_granularity(%struct.lx6464es* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lx6464es*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @MICROBLAZE_IBL_MIN, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %10 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MICROBLAZE_IBL_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %15

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %31 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %74

35:                                               ; preds = %28
  %36 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lx_dsp_set_granularity(%struct.lx6464es* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %43 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %56 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %64 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %72 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @lx_dsp_set_granularity(%struct.lx6464es*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
