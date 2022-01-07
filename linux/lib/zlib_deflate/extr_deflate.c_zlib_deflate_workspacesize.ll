; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_zlib_deflate_workspacesize.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_zlib_deflate_workspacesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MEM_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_deflate_workspacesize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 15
  br label %23

23:                                               ; preds = %20, %17, %13, %10
  %24 = phi i1 [ true, %17 ], [ true, %13 ], [ true, %10 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @zlib_deflate_window_memsize(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @zlib_deflate_prev_memsize(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 %30, %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @zlib_deflate_head_memsize(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = add i64 %34, %37
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @zlib_deflate_overlay_memsize(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @zlib_deflate_window_memsize(i32) #1

declare dso_local i32 @zlib_deflate_prev_memsize(i32) #1

declare dso_local i32 @zlib_deflate_head_memsize(i32) #1

declare dso_local i32 @zlib_deflate_overlay_memsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
