; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-bench.c_run_bench.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-bench.c_run_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@PR_SET_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32 (i32, i8**)*, i32, i8**)* @run_bench to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bench(i8* %0, i8* %1, i32 (i32, i8**)* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32, i8**)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i32, i8**)* %2, i32 (i32, i8**)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 1
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %16, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i8* @zalloc(i32 %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @scnprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load i32, i32* @PR_SET_NAME, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @prctl(i32 %33, i8* %34)
  %36 = load i8*, i8** %12, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %36, i8** %38, align 8
  %39 = load i32 (i32, i8**)*, i32 (i32, i8**)** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8**, i8*** %10, align 8
  %42 = call i32 %39(i32 %40, i8** %41)
  store i32 %42, i32* %13, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %13, align 4
  ret i32 %45
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zalloc(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @prctl(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
