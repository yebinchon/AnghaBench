; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_list_sort.c_merge.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_list_sort.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i8*, i64 (i8*, %struct.list_head*, %struct.list_head*)*, %struct.list_head*, %struct.list_head*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @merge(i8* %0, i64 (i8*, %struct.list_head*, %struct.list_head*)* nonnull %1, %struct.list_head* nonnull %2, %struct.list_head* nonnull %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64 (i8*, %struct.list_head*, %struct.list_head*)*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.list_head**, align 8
  store i8* %0, i8** %5, align 8
  store i64 (i8*, %struct.list_head*, %struct.list_head*)* %1, i64 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  store %struct.list_head** %9, %struct.list_head*** %10, align 8
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i64 (i8*, %struct.list_head*, %struct.list_head*)*, i64 (i8*, %struct.list_head*, %struct.list_head*)** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.list_head*, %struct.list_head** %7, align 8
  %15 = load %struct.list_head*, %struct.list_head** %8, align 8
  %16 = call i64 %12(i8* %13, %struct.list_head* %14, %struct.list_head* %15)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.list_head*, %struct.list_head** %7, align 8
  %20 = load %struct.list_head**, %struct.list_head*** %10, align 8
  store %struct.list_head* %19, %struct.list_head** %20, align 8
  %21 = load %struct.list_head*, %struct.list_head** %7, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  store %struct.list_head** %22, %struct.list_head*** %10, align 8
  %23 = load %struct.list_head*, %struct.list_head** %7, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  store %struct.list_head* %25, %struct.list_head** %7, align 8
  %26 = load %struct.list_head*, %struct.list_head** %7, align 8
  %27 = icmp ne %struct.list_head* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct.list_head*, %struct.list_head** %8, align 8
  %30 = load %struct.list_head**, %struct.list_head*** %10, align 8
  store %struct.list_head* %29, %struct.list_head** %30, align 8
  br label %47

31:                                               ; preds = %18
  br label %46

32:                                               ; preds = %11
  %33 = load %struct.list_head*, %struct.list_head** %8, align 8
  %34 = load %struct.list_head**, %struct.list_head*** %10, align 8
  store %struct.list_head* %33, %struct.list_head** %34, align 8
  %35 = load %struct.list_head*, %struct.list_head** %8, align 8
  %36 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i32 0, i32 0
  store %struct.list_head** %36, %struct.list_head*** %10, align 8
  %37 = load %struct.list_head*, %struct.list_head** %8, align 8
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 0
  %39 = load %struct.list_head*, %struct.list_head** %38, align 8
  store %struct.list_head* %39, %struct.list_head** %8, align 8
  %40 = load %struct.list_head*, %struct.list_head** %8, align 8
  %41 = icmp ne %struct.list_head* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load %struct.list_head*, %struct.list_head** %7, align 8
  %44 = load %struct.list_head**, %struct.list_head*** %10, align 8
  store %struct.list_head* %43, %struct.list_head** %44, align 8
  br label %47

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %31
  br label %11

47:                                               ; preds = %42, %28
  %48 = load %struct.list_head*, %struct.list_head** %9, align 8
  ret %struct.list_head* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
