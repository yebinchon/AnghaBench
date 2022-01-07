; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_truncate.c_truncate_inode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { %struct.address_space* }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @truncate_inode_page(%struct.address_space* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %6 = load %struct.page*, %struct.page** %5, align 8
  %7 = call i32 @PageTail(%struct.page* %6)
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = call i32 @VM_BUG_ON_PAGE(i32 %7, %struct.page* %8)
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.address_space*, %struct.address_space** %11, align 8
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = icmp ne %struct.address_space* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.address_space*, %struct.address_space** %4, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @truncate_cleanup_page(%struct.address_space* %19, %struct.page* %20)
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @delete_from_page_cache(%struct.page* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @truncate_cleanup_page(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @delete_from_page_cache(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
