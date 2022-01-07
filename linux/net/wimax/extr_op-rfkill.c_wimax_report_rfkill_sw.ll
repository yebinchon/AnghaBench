; ModuleID = '/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_report_rfkill_sw.c'
source_filename = "/home/carl/AnghaBench/linux/net/wimax/extr_op-rfkill.c_wimax_report_rfkill_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, i32, i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"(wimax_dev %p state %u)\0A\00", align 1
@WIMAX_RF_QUERY = common dso_local global i32 0, align 4
@WIMAX_RF_ON = common dso_local global i32 0, align 4
@WIMAX_RF_OFF = common dso_local global i32 0, align 4
@WIMAX_ST_READY = common dso_local global i32 0, align 4
@WIMAX_ST_RADIO_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"(wimax_dev %p state %u) = void [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wimax_report_rfkill_sw(%struct.wimax_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %9 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %8)
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @d_fnstart(i32 3, %struct.device* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WIMAX_RF_QUERY, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @WIMAX_RF_ON, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @WIMAX_RF_OFF, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ false, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %31 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %34 = call i32 @wimax_dev_is_ready(%struct.wimax_dev* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %76

38:                                               ; preds = %26
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %41 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %47 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %49 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WIMAX_RF_ON, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %55 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @WIMAX_RF_ON, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @WIMAX_ST_READY, align 4
  store i32 %60, i32* %7, align 4
  br label %63

61:                                               ; preds = %53, %44
  %62 = load i32, i32* @WIMAX_ST_RADIO_OFF, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @__wimax_state_change(%struct.wimax_dev* %64, i32 %65)
  %67 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %68 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @WIMAX_RF_OFF, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @rfkill_set_sw_state(i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %63, %38
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %78 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @d_fnend(i32 3, %struct.device* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.wimax_dev* %81, i32 %82, i32 %83)
  ret void
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wimax_dev_is_ready(%struct.wimax_dev*) #1

declare dso_local i32 @__wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
