; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_huge_page_move_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_huge_page_move_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32, i32 }

@xas = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migrate_huge_page_move_mapping(%struct.address_space* %0, %struct.page* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %9 = load i32, i32* @xas, align 4
  %10 = load %struct.address_space*, %struct.address_space** %5, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load %struct.page*, %struct.page** %7, align 8
  %13 = call i32 @page_index(%struct.page* %12)
  %14 = call i32 @XA_STATE(i32 %9, i32* %11, i32 %13)
  %15 = call i32 @xas_lock_irq(i32* @xas)
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = call i32 @page_has_private(%struct.page* %16)
  %18 = add nsw i32 2, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.page*, %struct.page** %7, align 8
  %20 = call i32 @page_count(%struct.page* %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call %struct.page* @xas_load(i32* @xas)
  %25 = load %struct.page*, %struct.page** %7, align 8
  %26 = icmp ne %struct.page* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %3
  %28 = call i32 @xas_unlock_irq(i32* @xas)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %61

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @page_ref_freeze(%struct.page* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = call i32 @xas_unlock_irq(i32* @xas)
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %61

40:                                               ; preds = %31
  %41 = load %struct.page*, %struct.page** %7, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.page*, %struct.page** %6, align 8
  %45 = getelementptr inbounds %struct.page, %struct.page* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = call i32 @get_page(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @xas_store(i32* @xas, %struct.page* %53)
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @page_ref_unfreeze(%struct.page* %55, i32 %57)
  %59 = call i32 @xas_unlock_irq(i32* @xas)
  %60 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %40, %36, %27
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xas_lock_irq(i32*) #1

declare dso_local i32 @page_has_private(%struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local %struct.page* @xas_load(i32*) #1

declare dso_local i32 @xas_unlock_irq(i32*) #1

declare dso_local i32 @page_ref_freeze(%struct.page*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @xas_store(i32*, %struct.page*) #1

declare dso_local i32 @page_ref_unfreeze(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
