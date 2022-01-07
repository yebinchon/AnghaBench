; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_parse_monitor_param.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_parse_monitor_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_monitor = type { i32 }

@MONITORS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MONITOR_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: max monitor name length (%d) exceeded\0A\00", align 1
@avail_monitors = common dso_local global i32 0, align 4
@monitors = common dso_local global %struct.cpuidle_monitor** null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Found requested monitor: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"No matching monitor found in %s, try -l option\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_monitor_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_monitor_param(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i32, i32* @MONITORS_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca %struct.cpuidle_monitor*, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %69, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MONITORS_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strtok(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %72

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i64, i64* @MONITOR_NAME_LEN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* @MONITOR_NAME_LEN, align 8
  %34 = call i32 (i8*, i8*, ...) @printf(i8* %31, i8* %32, i64 %33)
  br label %69

35:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @avail_monitors, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.cpuidle_monitor**, %struct.cpuidle_monitor*** @monitors, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %41, i64 %43
  %45 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %44, align 8
  %46 = getelementptr inbounds %struct.cpuidle_monitor, %struct.cpuidle_monitor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @strcmp(i32 %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @dprint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load %struct.cpuidle_monitor**, %struct.cpuidle_monitor*** @monitors, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %54, i64 %56
  %58 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %14, i64 %60
  store %struct.cpuidle_monitor* %58, %struct.cpuidle_monitor** %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %51, %40
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %36

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  store i8* null, i8** %6, align 8
  br label %15

72:                                               ; preds = %24, %15
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 (i8*, i8*, ...) @printf(i8* %76, i8* %77)
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #4
  unreachable

81:                                               ; preds = %72
  %82 = load %struct.cpuidle_monitor**, %struct.cpuidle_monitor*** @monitors, align 8
  %83 = load i32, i32* @MONITORS_MAX, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 8, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(%struct.cpuidle_monitor** %82, %struct.cpuidle_monitor** %14, i32 %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* @avail_monitors, align 4
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @dprint(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memcpy(%struct.cpuidle_monitor**, %struct.cpuidle_monitor**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
