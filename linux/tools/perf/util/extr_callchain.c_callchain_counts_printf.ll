; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_counts_printf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_callchain_counts_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_type_stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.branch_type_stat*)* @callchain_counts_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callchain_counts_printf(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.branch_type_stat* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.branch_type_stat*, align 8
  %24 = alloca [256 x i8], align 16
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store %struct.branch_type_stat* %10, %struct.branch_type_stat** %23, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %22, align 4
  %33 = load %struct.branch_type_stat*, %struct.branch_type_stat** %23, align 8
  %34 = call i32 @counts_str_build(i8* %25, i32 256, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, %struct.branch_type_stat* %33)
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %11
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %40 = call i32 @fprintf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %12, align 4
  br label %46

41:                                               ; preds = %11
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %15, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %45 = call i32 @scnprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @counts_str_build(i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.branch_type_stat*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
