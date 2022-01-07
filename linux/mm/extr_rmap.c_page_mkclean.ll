; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_mkclean.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_page_mkclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.rmap_walk_control = type { i8*, i32, i32 }

@invalid_mkclean_vma = common dso_local global i32 0, align 4
@page_mkclean_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_mkclean(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.rmap_walk_control, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %6, i32 0, i32 0
  %8 = bitcast i32* %4 to i8*
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %6, i32 0, i32 1
  %10 = load i32, i32* @invalid_mkclean_vma, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %6, i32 0, i32 2
  %12 = load i32, i32* @page_mkclean_one, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @PageLocked(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @page_mapped(%struct.page* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call %struct.address_space* @page_mapping(%struct.page* %24)
  store %struct.address_space* %25, %struct.address_space** %5, align 8
  %26 = load %struct.address_space*, %struct.address_space** %5, align 8
  %27 = icmp ne %struct.address_space* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @rmap_walk(%struct.page* %30, %struct.rmap_walk_control* %6)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %28, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @rmap_walk(%struct.page*, %struct.rmap_walk_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
