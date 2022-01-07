; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_test_udelay.c_udelay_test_single.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_test_udelay.c_udelay_test_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%d usecs x %d: exp=%d allowed=%d min=%d avg=%lld max=%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" FAIL=%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i32, i32)* @udelay_test_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udelay_test_single(%struct.seq_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 5
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %66, %3
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  %24 = call i32 (...) @ktime_get_ns()
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @udelay(i32 %25)
  %27 = call i32 (...) @ktime_get_ns()
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %14, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %23
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %51, 1000
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @do_div(i32 %71, i32 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = mul nsw i32 %77, 1000
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 1000
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %78, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %69
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = call i32 @seq_puts(%struct.seq_file* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
