; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c_unregister_chrdev_region.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c_unregister_chrdev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_chrdev_region(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %36, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @MAJOR(i32 %17)
  %19 = add nsw i64 %18, 1
  %20 = call i32 @MKDEV(i64 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @MAJOR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @MINOR(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub i32 %31, %32
  %34 = call i32 @__unregister_chrdev_region(i64 %28, i32 %30, i32 %33)
  %35 = call i32 @kfree(i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  ret void
}

declare dso_local i32 @MKDEV(i64, i32) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @__unregister_chrdev_region(i64, i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
