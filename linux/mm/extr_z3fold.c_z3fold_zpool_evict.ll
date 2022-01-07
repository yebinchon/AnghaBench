; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_zpool_evict.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_zpool_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_pool = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, i64)* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z3fold_pool*, i64)* @z3fold_zpool_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z3fold_zpool_evict(%struct.z3fold_pool* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z3fold_pool*, align 8
  %5 = alloca i64, align 8
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %7 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %12 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %17 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i64, i64)*, i32 (i64, i64)** %19, align 8
  %21 = icmp ne i32 (i64, i64)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %24 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i64, i64)*, i32 (i64, i64)** %26, align 8
  %28 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %29 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 %27(i64 %30, i64 %31)
  store i32 %32, i32* %3, align 4
  br label %36

33:                                               ; preds = %15, %10, %2
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
