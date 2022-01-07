; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_rmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_remove_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@NR_ANON_MAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_remove_rmap(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = call i32 @PageAnon(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = load i32, i32* %4, align 4
  call void @page_remove_file_rmap(%struct.page* %9, i32 %10)
  br label %41

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load %struct.page*, %struct.page** %3, align 8
  call void @page_remove_anon_compound_rmap(%struct.page* %15)
  br label %41

16:                                               ; preds = %11
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = call i32 @atomic_add_negative(i32 -1, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %41

22:                                               ; preds = %16
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = load i32, i32* @NR_ANON_MAPPED, align 4
  %25 = call i32 @__dec_node_page_state(%struct.page* %23, i32 %24)
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = call i32 @PageMlocked(%struct.page* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @clear_page_mlock(%struct.page* %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i64 @PageTransCompound(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.page*, %struct.page** %3, align 8
  %39 = call i32 @compound_head(%struct.page* %38)
  %40 = call i32 @deferred_split_huge_page(i32 %39)
  br label %41

41:                                               ; preds = %8, %14, %21, %37, %33
  ret void
}

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local void @page_remove_file_rmap(%struct.page*, i32) #1

declare dso_local void @page_remove_anon_compound_rmap(%struct.page*) #1

declare dso_local i32 @atomic_add_negative(i32, i32*) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @clear_page_mlock(%struct.page*) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i32 @deferred_split_huge_page(i32) #1

declare dso_local i32 @compound_head(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
