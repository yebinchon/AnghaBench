; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_printcpulist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-display.c_printcpulist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i32*)* @printcpulist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printcpulist(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @CPU_COUNT_S(i32 %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %64

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %61, %21
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (...) @get_topo_max_cpus()
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @CPU_ISSET_S(i32 %27, i32 %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %61

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %40, i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %36, %33
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %52, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %48, %32
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %22

64:                                               ; preds = %17, %22
  ret void
}

declare dso_local i32 @CPU_COUNT_S(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @get_topo_max_cpus(...) #1

declare dso_local i32 @CPU_ISSET_S(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
