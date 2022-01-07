; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.h_tomoyo_same_number_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.h_tomoyo_same_number_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_number_union = type { i64*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_number_union*, %struct.tomoyo_number_union*)* @tomoyo_same_number_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_same_number_union(%struct.tomoyo_number_union* %0, %struct.tomoyo_number_union* %1) #0 {
  %3 = alloca %struct.tomoyo_number_union*, align 8
  %4 = alloca %struct.tomoyo_number_union*, align 8
  store %struct.tomoyo_number_union* %0, %struct.tomoyo_number_union** %3, align 8
  store %struct.tomoyo_number_union* %1, %struct.tomoyo_number_union** %4, align 8
  %5 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %3, align 8
  %6 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %11 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %9, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %2
  %17 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %3, align 8
  %18 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %23 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %21, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %16
  %29 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %3, align 8
  %30 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %33 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %28
  %37 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %3, align 8
  %38 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %43 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %41, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %36
  %49 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %3, align 8
  %50 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %55 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %53, %58
  br label %60

60:                                               ; preds = %48, %36, %28, %16, %2
  %61 = phi i1 [ false, %36 ], [ false, %28 ], [ false, %16 ], [ false, %2 ], [ %59, %48 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
