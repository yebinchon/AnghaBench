; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_migrate_type_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_migrate_type_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @migrate_type_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_type_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page_stat*, align 8
  %7 = alloca %struct.page_stat*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.page_stat*
  store %struct.page_stat* %9, %struct.page_stat** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.page_stat*
  store %struct.page_stat* %11, %struct.page_stat** %7, align 8
  %12 = load %struct.page_stat*, %struct.page_stat** %6, align 8
  %13 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.page_stat*, %struct.page_stat** %6, align 8
  %19 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.page_stat*, %struct.page_stat** %7, align 8
  %22 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %37

26:                                               ; preds = %17
  %27 = load %struct.page_stat*, %struct.page_stat** %6, align 8
  %28 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.page_stat*, %struct.page_stat** %7, align 8
  %31 = getelementptr inbounds %struct.page_stat, %struct.page_stat* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %37

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %25, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
