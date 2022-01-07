; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_util.c_page_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_util.c_page_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_mapped(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageCompound(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call %struct.page* @compound_head(%struct.page* %19)
  store %struct.page* %20, %struct.page** %3, align 8
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32* @compound_mapcount_ptr(%struct.page* %21)
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = call i64 @PageHuge(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %51

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @compound_nr(%struct.page* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.page, %struct.page* %38, i64 %40
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %51

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %32

50:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %30, %25, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local i32* @compound_mapcount_ptr(%struct.page*) #1

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
