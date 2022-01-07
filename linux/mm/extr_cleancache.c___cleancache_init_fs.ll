; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_init_fs.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_cleancache.c___cleancache_init_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.super_block = type { i32 }

@CLEANCACHE_NO_BACKEND = common dso_local global i32 0, align 4
@cleancache_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@CLEANCACHE_NO_POOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cleancache_init_fs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load i32, i32* @CLEANCACHE_NO_BACKEND, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleancache_ops, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cleancache_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 %10(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i32, i32* @CLEANCACHE_NO_POOL, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %7
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
