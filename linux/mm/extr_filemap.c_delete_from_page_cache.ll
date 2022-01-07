; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_delete_from_page_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_delete_from_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_from_page_cache(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.address_space* @page_mapping(%struct.page* %5)
  store %struct.address_space* %6, %struct.address_space** %3, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @xa_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @__delete_from_page_cache(%struct.page* %17, i32* null)
  %19 = load %struct.address_space*, %struct.address_space** %3, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @xa_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.address_space*, %struct.address_space** %3, align 8
  %24 = load %struct.page*, %struct.page** %2, align 8
  %25 = call i32 @page_cache_free_page(%struct.address_space* %23, %struct.page* %24)
  ret void
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__delete_from_page_cache(%struct.page*, i32*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @page_cache_free_page(%struct.address_space*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
