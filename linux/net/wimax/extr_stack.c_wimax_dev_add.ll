; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_stack.c_wimax_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"(wimax_dev %p net_dev %p)\0A\00", align 1
@WIMAX_ST_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WiMAX interface %s (%s) ready\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"(wimax_dev %p net_dev %p) = 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"(wimax_dev %p net_dev %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_dev_add(%struct.wimax_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wimax_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca [32 x i8], align 16
  store %struct.wimax_dev* %0, %struct.wimax_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @d_fnstart(i32 3, %struct.device* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %14, %struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %19 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %18, i32 0, i32 1
  store %struct.net_device* %17, %struct.net_device** %19, align 8
  %20 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %21 = call i32 @wimax_rfkill_add(%struct.wimax_dev* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %27 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %30 = call i32 @wimax_id_table_add(%struct.wimax_dev* %29)
  %31 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %32 = call i32 @wimax_debugfs_add(%struct.wimax_dev* %31)
  %33 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %34 = load i32, i32* @WIMAX_ST_DOWN, align 4
  %35 = call i32 @__wimax_state_set(%struct.wimax_dev* %33, i32 %34)
  %36 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %37 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wimax_addr_scnprint(i8* %39, i32 32, i32 %42, i32 %45)
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %52 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) @d_fnend(i32 3, %struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.wimax_dev* %54, %struct.net_device* %55)
  store i32 0, i32* %3, align 4
  br label %64

57:                                               ; preds = %24
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = load %struct.wimax_dev*, %struct.wimax_dev** %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) @d_fnend(i32 3, %struct.device* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.wimax_dev* %59, %struct.net_device* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*) #1

declare dso_local i32 @wimax_rfkill_add(%struct.wimax_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_id_table_add(%struct.wimax_dev*) #1

declare dso_local i32 @wimax_debugfs_add(%struct.wimax_dev*) #1

declare dso_local i32 @__wimax_state_set(%struct.wimax_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wimax_addr_scnprint(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, %struct.net_device*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
