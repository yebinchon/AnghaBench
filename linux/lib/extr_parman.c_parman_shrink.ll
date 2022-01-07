; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parman*)* @parman_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parman_shrink(%struct.parman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parman*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.parman* %0, %struct.parman** %3, align 8
  %6 = load %struct.parman*, %struct.parman** %3, align 8
  %7 = getelementptr inbounds %struct.parman, %struct.parman* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.parman*, %struct.parman** %3, align 8
  %10 = getelementptr inbounds %struct.parman, %struct.parman* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %8, %13
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.parman*, %struct.parman** %3, align 8
  %17 = getelementptr inbounds %struct.parman, %struct.parman* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.parman*, %struct.parman** %3, align 8
  %25 = getelementptr inbounds %struct.parman, %struct.parman* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32 (i32, i64)*, i32 (i32, i64)** %27, align 8
  %29 = load %struct.parman*, %struct.parman** %3, align 8
  %30 = getelementptr inbounds %struct.parman, %struct.parman* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 %28(i32 %31, i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.parman*, %struct.parman** %3, align 8
  %41 = getelementptr inbounds %struct.parman, %struct.parman* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %36, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
