; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_probe_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_probe_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIC_sysfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"/sys/devices/system/cpu/cpu%d/cpuidle/state%d/name\00", align 1
@base_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: failed to read file\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cpuidle/state%d/time\00", align 1
@SCOPE_CPU = common dso_local global i32 0, align 4
@COUNTER_USEC = common dso_local global i32 0, align 4
@FORMAT_PERCENT = common dso_local global i32 0, align 4
@SYSFS_PERCPU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"cpuidle/state%d/usage\00", align 1
@COUNTER_ITEMS = common dso_local global i32 0, align 4
@FORMAT_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @probe_sysfs() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @BIC_sysfs, align 4
  %7 = call i32 @DO_BIC(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %116

10:                                               ; preds = %0
  store i32 10, i32* %4, align 4
  br label %11

11:                                               ; preds = %61, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %11
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %16 = load i32, i32* @base_cpu, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %61

24:                                               ; preds = %14
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @fgets(i8* %25, i32 16, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %34 = call i8* @strchr(i8* %33, i8 signext 45)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %39 = call i8* @strchrnul(i8* %38, i8 signext 10)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i8*, i8** %5, align 8
  store i8 37, i8* %41, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 0, i8* %43, align 1
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %50 = call i64 @is_deferred_skip(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %61

53:                                               ; preds = %40
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %56 = load i32, i32* @SCOPE_CPU, align 4
  %57 = load i32, i32* @COUNTER_USEC, align 4
  %58 = load i32, i32* @FORMAT_PERCENT, align 4
  %59 = load i32, i32* @SYSFS_PERCPU, align 4
  %60 = call i32 @add_counter(i32 0, i8* %54, i8* %55, i32 64, i32 %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %52, %23
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  br label %11

64:                                               ; preds = %11
  store i32 10, i32* %4, align 4
  br label %65

65:                                               ; preds = %113, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %116

68:                                               ; preds = %65
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %70 = load i32, i32* @base_cpu, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %74 = call i32* @fopen(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %74, i32** %3, align 8
  %75 = load i32*, i32** %3, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %113

78:                                               ; preds = %68
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @fgets(i8* %79, i32 16, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %85 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %88 = call i8* @strchr(i8* %87, i8 signext 45)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %93 = call i8* @strchrnul(i8* %92, i8 signext 10)
  store i8* %93, i8** %5, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i8*, i8** %5, align 8
  store i8 0, i8* %95, align 1
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @fclose(i32* %96)
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %102 = call i64 @is_deferred_skip(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %113

105:                                              ; preds = %94
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %108 = load i32, i32* @SCOPE_CPU, align 4
  %109 = load i32, i32* @COUNTER_ITEMS, align 4
  %110 = load i32, i32* @FORMAT_DELTA, align 4
  %111 = load i32, i32* @SYSFS_PERCPU, align 4
  %112 = call i32 @add_counter(i32 0, i8* %106, i8* %107, i32 64, i32 %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %104, %77
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %4, align 4
  br label %65

116:                                              ; preds = %9, %65
  ret void
}

declare dso_local i32 @DO_BIC(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @is_deferred_skip(i8*) #1

declare dso_local i32 @add_counter(i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
