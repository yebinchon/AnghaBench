; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_delete.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_page_cache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32, i32, i32 }
%struct.page = type { i32*, i32 }

@xas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.address_space*, %struct.page*, i8*)* @page_cache_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_cache_delete(%struct.address_space* %0, %struct.page* %1, i8* %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @xas, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 2
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @XA_STATE(i32 %8, i32* %10, i32 %13)
  store i32 1, i32* %7, align 4
  %15 = load %struct.address_space*, %struct.address_space** %4, align 8
  %16 = call i32 @mapping_set_update(i32* @xas, %struct.address_space* %15)
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @PageHuge(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = call i32 @compound_order(%struct.page* %24)
  %26 = call i32 @xas_set_order(i32* @xas, i32 %23, i32 %25)
  %27 = load %struct.page*, %struct.page** %5, align 8
  %28 = call i32 @compound_nr(%struct.page* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %20, %3
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @PageLocked(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @VM_BUG_ON_PAGE(i32 %34, %struct.page* %35)
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @PageTail(%struct.page* %37)
  %39 = load %struct.page*, %struct.page** %5, align 8
  %40 = call i32 @VM_BUG_ON_PAGE(i32 %38, %struct.page* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br label %46

46:                                               ; preds = %43, %29
  %47 = phi i1 [ false, %29 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @VM_BUG_ON_PAGE(i32 %48, %struct.page* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @xas_store(i32* @xas, i8* %51)
  %53 = call i32 @xas_init_marks(i32* @xas)
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.address_space*, %struct.address_space** %4, align 8
  %61 = getelementptr inbounds %struct.address_space, %struct.address_space* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = call i32 (...) @smp_wmb()
  br label %65

65:                                               ; preds = %58, %46
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.address_space*, %struct.address_space** %4, align 8
  %68 = getelementptr inbounds %struct.address_space, %struct.address_space* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %69, %66
  store i32 %70, i32* %68, align 4
  ret void
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @mapping_set_update(i32*, %struct.address_space*) #1

declare dso_local i32 @PageHuge(%struct.page*) #1

declare dso_local i32 @xas_set_order(i32*, i32, i32) #1

declare dso_local i32 @compound_order(%struct.page*) #1

declare dso_local i32 @compound_nr(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageTail(%struct.page*) #1

declare dso_local i32 @xas_store(i32*, i8*) #1

declare dso_local i32 @xas_init_marks(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
