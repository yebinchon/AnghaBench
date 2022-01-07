; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_mem_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_mem_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%luGB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%luMB\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%luKB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64)* @mem_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mem_fmt(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp uge i64 %7, 1073741824
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i64, i64* %6, align 8
  %13 = lshr i64 %12, 30
  %14 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %31

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp uge i64 %16, 1048576
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 20
  %23 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %30

24:                                               ; preds = %15
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %6, align 8
  %28 = lshr i64 %27, 10
  %29 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
