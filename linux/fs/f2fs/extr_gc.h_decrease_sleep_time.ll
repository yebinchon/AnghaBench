; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_decrease_sleep_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.h_decrease_sleep_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_gc_kthread = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_gc_kthread*, i32*)* @decrease_sleep_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decrease_sleep_time(%struct.f2fs_gc_kthread* %0, i32* %1) #0 {
  %3 = alloca %struct.f2fs_gc_kthread*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.f2fs_gc_kthread* %0, %struct.f2fs_gc_kthread** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %7 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.f2fs_gc_kthread*, %struct.f2fs_gc_kthread** %3, align 8
  %17 = getelementptr inbounds %struct.f2fs_gc_kthread, %struct.f2fs_gc_kthread* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
