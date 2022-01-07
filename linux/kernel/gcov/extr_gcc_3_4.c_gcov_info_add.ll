; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_3_4.c_gcov_info_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_3_4.c_gcov_info_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_info_add(%struct.gcov_info* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %10 = call i32 @num_counter_active(%struct.gcov_info* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %50, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %16 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %14, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %13
  %25 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %26 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %38 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %36
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %13

53:                                               ; preds = %13
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %7

57:                                               ; preds = %7
  ret void
}

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
