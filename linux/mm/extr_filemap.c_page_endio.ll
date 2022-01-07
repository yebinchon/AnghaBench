; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_endio.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_endio(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @SetPageUptodate(%struct.page* %14)
  br label %21

16:                                               ; preds = %10
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @ClearPageUptodate(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @SetPageError(%struct.page* %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @unlock_page(%struct.page* %22)
  br label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @SetPageError(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call %struct.address_space* @page_mapping(%struct.page* %30)
  store %struct.address_space* %31, %struct.address_space** %7, align 8
  %32 = load %struct.address_space*, %struct.address_space** %7, align 8
  %33 = icmp ne %struct.address_space* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.address_space*, %struct.address_space** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mapping_set_error(%struct.address_space* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i32 @end_page_writeback(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %21
  ret void
}

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @mapping_set_error(%struct.address_space*, i32) #1

declare dso_local i32 @end_page_writeback(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
