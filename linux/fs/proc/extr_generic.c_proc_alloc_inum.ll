; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_alloc_inum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_alloc_inum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_inum_ida = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@PROC_DYNAMIC_FIRST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_alloc_inum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i64, i64* @UINT_MAX, align 8
  %6 = load i32, i32* @PROC_DYNAMIC_FIRST, align 4
  %7 = zext i32 %6 to i64
  %8 = sub nsw i64 %5, %7
  %9 = add nsw i64 %8, 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32 @ida_simple_get(i32* @proc_inum_ida, i32 0, i64 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @PROC_DYNAMIC_FIRST, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %17, %18
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ida_simple_get(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
