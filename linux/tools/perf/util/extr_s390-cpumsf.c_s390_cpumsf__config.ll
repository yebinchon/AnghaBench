; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf__config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf__config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { i32* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"auxtrace.dumpdir\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"Failed to find auxtrace log directory %s, continue with current directory...\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Missing auxtrace log directory %s, continue with current directory...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @s390_cpumsf__config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf__config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.s390_cpumsf*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.s390_cpumsf*
  store %struct.s390_cpumsf* %12, %struct.s390_cpumsf** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @strdup(i8* %18)
  %20 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %8, align 8
  %21 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %8, align 8
  %23 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %4, align 4
  br label %48

29:                                               ; preds = %17
  %30 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %8, align 8
  %31 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @stat(i32* %32, %struct.stat* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISDIR(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36, %29
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %8, align 8
  %45 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %44, i32 0, i32 0
  %46 = call i32 @zfree(i32** %45)
  br label %47

47:                                               ; preds = %41, %36
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %26, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @stat(i32*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
