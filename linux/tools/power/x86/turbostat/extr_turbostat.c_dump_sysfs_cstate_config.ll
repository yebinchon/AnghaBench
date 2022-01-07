; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_sysfs_cstate_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_sysfs_cstate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIC_sysfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"/sys/devices/system/cpu/cpu%d/cpuidle/state%d/name\00", align 1
@base_cpu = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: failed to read file\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"/sys/devices/system/cpu/cpu%d/cpuidle/state%d/desc\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"cpu%d: %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_sysfs_cstate_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sysfs_cstate_config() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [16 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @BIC_sysfs, align 4
  %8 = call i32 @DO_BIC(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %73

11:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %70, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %73

15:                                               ; preds = %12
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %17 = load i32, i32* @base_cpu, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %70

25:                                               ; preds = %15
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fgets(i8* %26, i32 16, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %35 = call i8* @strchr(i8* %34, i8 signext 45)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %40 = call i8* @strchrnul(i8* %39, i8 signext 10)
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i8*, i8** %6, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %46 = load i32, i32* @base_cpu, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %70

54:                                               ; preds = %41
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fgets(i8* %55, i32 64, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @outf, align 4
  %64 = load i32, i32* @base_cpu, align 4
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %67 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* %65, i8* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fclose(i32* %68)
  br label %70

70:                                               ; preds = %62, %53, %24
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %12

73:                                               ; preds = %10, %12
  ret void
}

declare dso_local i32 @DO_BIC(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
