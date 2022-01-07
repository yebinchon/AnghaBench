; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_rfkill_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { %struct.rfkill*, i32, i32*, i32 }
%struct.rfkill = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(wimax_dev %p)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RFKILL_TYPE_WIMAX = common dso_local global i32 0, align 4
@wimax_rfkill_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rfkill %p\0A\00", align 1
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"(wimax_dev %p) = 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"(wimax_dev %p) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wimax_rfkill_add(%struct.wimax_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfkill*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  %7 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %8 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %7)
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load %struct.device*, %struct.device** %6, align 8
  %10 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %11 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %10)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %15 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* @RFKILL_TYPE_WIMAX, align 4
  %19 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %20 = call %struct.rfkill* @rfkill_alloc(i32 %16, %struct.device* %17, i32 %18, i32* @wimax_rfkill_ops, %struct.wimax_dev* %19)
  store %struct.rfkill* %20, %struct.rfkill** %5, align 8
  %21 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %22 = icmp eq %struct.rfkill* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %27 = call i32 @d_printf(i32 1, %struct.device* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.rfkill* %26)
  %28 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %29 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %30 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %29, i32 0, i32 0
  store %struct.rfkill* %28, %struct.rfkill** %30, align 8
  %31 = load %struct.rfkill*, %struct.rfkill** %5, align 8
  %32 = call i32 @rfkill_init_sw_state(%struct.rfkill* %31, i32 1)
  %33 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %34 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %33, i32 0, i32 0
  %35 = load %struct.rfkill*, %struct.rfkill** %34, align 8
  %36 = call i32 @rfkill_register(%struct.rfkill* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %53

40:                                               ; preds = %24
  %41 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %42 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @WIMAX_RF_ON, align 4
  %47 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %48 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %52 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, ...) @d_fnend(i32 3, %struct.device* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.wimax_dev* %51)
  store i32 0, i32* %2, align 4
  br label %64

53:                                               ; preds = %39
  %54 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %55 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %54, i32 0, i32 0
  %56 = load %struct.rfkill*, %struct.rfkill** %55, align 8
  %57 = call i32 @rfkill_destroy(%struct.rfkill* %56)
  br label %58

58:                                               ; preds = %53, %23
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, %struct.device*, i8*, %struct.wimax_dev*, ...) @d_fnend(i32 3, %struct.device* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.wimax_dev* %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %58, %49
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i32, %struct.device*, i32, i32*, %struct.wimax_dev*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, %struct.rfkill*) #1

declare dso_local i32 @rfkill_init_sw_state(%struct.rfkill*, i32) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, ...) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
