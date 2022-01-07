; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_proc_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_proc_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_stat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"cpu %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: failed to parse format\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"cpu%u %*d %*d %*d %*d %*d %*d %*d %*d %*d %*d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_all_proc_cpus(i32 (i32)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32 (i32)*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 (i32)* %0, i32 (i32)** %3, align 8
  %7 = load i32, i32* @proc_stat, align 4
  %8 = call i32* @fopen_or_die(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 (i32*, i8*, ...) @fscanf(i32* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @proc_stat, align 4
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  br label %17

17:                                               ; preds = %16, %33
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @fscanf(i32* %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %34

23:                                               ; preds = %17
  %24 = load i32 (i32)*, i32 (i32)** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %24(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %23
  br label %17

34:                                               ; preds = %22
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fclose(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @fopen_or_die(i32, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, ...) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
