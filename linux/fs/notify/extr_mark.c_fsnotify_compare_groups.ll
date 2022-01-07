; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_compare_groups.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_compare_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsnotify_compare_groups(%struct.fsnotify_group* %0, %struct.fsnotify_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsnotify_group*, align 8
  %5 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %4, align 8
  store %struct.fsnotify_group* %1, %struct.fsnotify_group** %5, align 8
  %6 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %8 = icmp eq %struct.fsnotify_group* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %12 = icmp ne %struct.fsnotify_group* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %42

14:                                               ; preds = %10
  %15 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %16 = icmp ne %struct.fsnotify_group* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %42

18:                                               ; preds = %14
  %19 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %20 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %23 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %42

27:                                               ; preds = %18
  %28 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %29 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %32 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %42

36:                                               ; preds = %27
  %37 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %38 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  %39 = icmp ult %struct.fsnotify_group* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %35, %26, %17, %13, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
