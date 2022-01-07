; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu_assign_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_perf_pmu_assign_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"alias %s differs in field '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**, i8**)* @perf_pmu_assign_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_pmu_assign_str(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %33

13:                                               ; preds = %4
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcasecmp(i8* %19, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i8**, i8*** %7, align 8
  %30 = call i32 @zfree(i8** %29)
  br label %32

31:                                               ; preds = %13
  br label %38

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %12
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %8, align 8
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %33, %31
  ret void
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local i32 @zfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
