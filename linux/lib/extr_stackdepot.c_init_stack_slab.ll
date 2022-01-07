; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_init_stack_slab.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_stackdepot.c_init_stack_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_slab_inited = common dso_local global i32 0, align 4
@stack_slabs = common dso_local global i32** null, align 8
@depot_index = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @init_stack_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stack_slab(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = call i64 @smp_load_acquire(i32* @next_slab_inited)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %36

12:                                               ; preds = %8
  %13 = load i32**, i32*** @stack_slabs, align 8
  %14 = load i64, i64* @depot_index, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32**, i32*** @stack_slabs, align 8
  %23 = load i64, i64* @depot_index, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* %21, i32** %24, align 8
  br label %34

25:                                               ; preds = %12
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32**, i32*** @stack_slabs, align 8
  %30 = load i64, i64* @depot_index, align 8
  %31 = add i64 %30, 1
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %28, i32** %32, align 8
  %33 = call i32 @smp_store_release(i32* @next_slab_inited, i32 1)
  br label %34

34:                                               ; preds = %25, %18
  %35 = load i8**, i8*** %3, align 8
  store i8* null, i8** %35, align 8
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %11, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @smp_load_acquire(i32*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
