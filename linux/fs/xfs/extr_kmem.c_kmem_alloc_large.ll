; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_kmem.c_kmem_alloc_large.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_kmem.c_kmem_alloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RET_IP_ = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmem_alloc_large(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @_RET_IP_, align 4
  %10 = call i32 @trace_kmem_alloc_large(i64 %7, i32 %8, i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @KM_MAYFAIL, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @kmem_alloc(i64 %11, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @__kmem_vmalloc(i64 %21, i32 %22)
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local i32 @trace_kmem_alloc_large(i64, i32, i32) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i8* @__kmem_vmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
