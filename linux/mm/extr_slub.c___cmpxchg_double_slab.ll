; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c___cmpxchg_double_slab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c___cmpxchg_double_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.page = type { i8*, i64 }

@CMPXCHG_DOUBLE_FAIL = common dso_local global i32 0, align 4
@__CMPXCHG_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, %struct.page*, i8*, i64, i8*, i64, i8*)* @__cmpxchg_double_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmpxchg_double_slab(%struct.kmem_cache* %0, %struct.page* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kmem_cache*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %9, align 8
  store %struct.page* %1, %struct.page** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = call i32 (...) @irqs_disabled()
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @VM_BUG_ON(i32 %19)
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = call i32 @slab_lock(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %10, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %7
  %29 = load %struct.page*, %struct.page** %10, align 8
  %30 = getelementptr inbounds %struct.page, %struct.page* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load i8*, i8** %13, align 8
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.page*, %struct.page** %10, align 8
  %40 = getelementptr inbounds %struct.page, %struct.page* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = call i32 @slab_unlock(%struct.page* %41)
  store i32 1, i32* %8, align 4
  br label %50

43:                                               ; preds = %28, %7
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = call i32 @slab_unlock(%struct.page* %44)
  %46 = call i32 (...) @cpu_relax()
  %47 = load %struct.kmem_cache*, %struct.kmem_cache** %9, align 8
  %48 = load i32, i32* @CMPXCHG_DOUBLE_FAIL, align 4
  %49 = call i32 @stat(%struct.kmem_cache* %47, i32 %48)
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %43, %34
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @slab_lock(%struct.page*) #1

declare dso_local i32 @slab_unlock(%struct.page*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @stat(%struct.kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
