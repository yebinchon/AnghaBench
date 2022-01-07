; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_skipn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_skipn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @skipn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipn(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i64, i64* %5, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @min(i64 %14, i64 4096)
  %16 = call i64 @read(i32 %12, i8* %13, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %11
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %5, align 8
  br label %8

26:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
