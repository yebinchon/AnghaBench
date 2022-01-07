; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpuidle_sysfs.c_cpuidle_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_monitor = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@cpuidle_sysfs_monitor = common dso_local global %struct.cpuidle_monitor zeroinitializer, align 4
@cpuidle_cstates = common dso_local global %struct.TYPE_2__* null, align 8
@CSTATE_NAME_LEN = common dso_local global i64 0, align 8
@CSTATE_DESC_LEN = common dso_local global i64 0, align 8
@RANGE_THREAD = common dso_local global i32 0, align 4
@cpuidle_get_count_percent = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@previous_count = common dso_local global i8** null, align 8
@current_count = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuidle_monitor* ()* @cpuidle_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuidle_monitor* @cpuidle_register() #0 {
  %1 = alloca %struct.cpuidle_monitor*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 (...) @sched_getcpu()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @cpuidle_state_count(i32 %6)
  store i32 %7, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %123

11:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %78, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i8* @cpuidle_state_name(i32 %17, i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %78

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @map_power_idle_state_name(i8* %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @fix_up_intel_idle_driver_name(i8* %26, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i64, i64* @CSTATE_NAME_LEN, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @strncpy(i32 %34, i8* %35, i64 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i8* @cpuidle_state_desc(i32 %41, i32 %42)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %78

47:                                               ; preds = %23
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* @CSTATE_DESC_LEN, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @strncpy(i32 %53, i8* %54, i64 %56)
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* @RANGE_THREAD, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* @cpuidle_get_count_percent, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuidle_cstates, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %47, %46, %22
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %12

81:                                               ; preds = %12
  %82 = load i32, i32* @cpu_count, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @malloc(i32 %85)
  %87 = bitcast i8* %86 to i8**
  store i8** %87, i8*** @previous_count, align 8
  %88 = load i32, i32* @cpu_count, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call i8* @malloc(i32 %91)
  %93 = bitcast i8* %92 to i8**
  store i8** %93, i8*** @current_count, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %117, %81
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @cpu_count, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @malloc(i32 %102)
  %104 = load i8**, i8*** @previous_count, align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %103, i8** %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 0), align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 8, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @malloc(i32 %111)
  %113 = load i8**, i8*** @current_count, align 8
  %114 = load i32, i32* %2, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %112, i8** %116, align 8
  br label %117

117:                                              ; preds = %98
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %94

120:                                              ; preds = %94
  %121 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 1), align 4
  %122 = call i32 @strlen(i32 %121)
  store i32 %122, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, i32 0, i32 2), align 4
  store %struct.cpuidle_monitor* @cpuidle_sysfs_monitor, %struct.cpuidle_monitor** %1, align 8
  br label %123

123:                                              ; preds = %120, %10
  %124 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %1, align 8
  ret %struct.cpuidle_monitor* %124
}

declare dso_local i32 @sched_getcpu(...) #1

declare dso_local i32 @cpuidle_state_count(i32) #1

declare dso_local i8* @cpuidle_state_name(i32, i32) #1

declare dso_local i32 @map_power_idle_state_name(i8*) #1

declare dso_local i32 @fix_up_intel_idle_driver_name(i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @cpuidle_state_desc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
