; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_isolate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_isolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32 }
%struct.z3fold_header = type { i64, i32, i32 }
%struct.z3fold_pool = type { i32 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@PAGE_CLAIMED = common dso_local global i32 0, align 4
@NEEDS_COMPACTING = common dso_local global i32 0, align 4
@PAGE_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @z3fold_page_isolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z3fold_page_isolate(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.z3fold_header*, align 8
  %7 = alloca %struct.z3fold_pool*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i32 @PageMovable(%struct.page* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i32 @VM_BUG_ON_PAGE(i32 %12, %struct.page* %13)
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @PageIsolated(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @VM_BUG_ON_PAGE(i32 %16, %struct.page* %17)
  %19 = load i32, i32* @PAGE_HEADLESS, align 4
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @PAGE_CLAIMED, align 4
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %89

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call %struct.z3fold_header* @page_address(%struct.page* %32)
  store %struct.z3fold_header* %33, %struct.z3fold_header** %6, align 8
  %34 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %35 = call i32 @z3fold_page_lock(%struct.z3fold_header* %34)
  %36 = load i32, i32* @NEEDS_COMPACTING, align 4
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @PAGE_STALE, align 4
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = getelementptr inbounds %struct.page, %struct.page* %43, i32 0, i32 1
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %31
  br label %86

48:                                               ; preds = %41
  %49 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %50 = call %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header* %49)
  store %struct.z3fold_pool* %50, %struct.z3fold_pool** %7, align 8
  %51 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %52 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %48
  %56 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %57 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %56, i32 0, i32 2
  %58 = call i32 @kref_get(i32* %57)
  %59 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %60 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %59, i32 0, i32 1
  %61 = call i32 @list_empty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %65 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %64, i32 0, i32 1
  %66 = call i32 @list_del_init(i32* %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.z3fold_pool*, %struct.z3fold_pool** %7, align 8
  %69 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.page*, %struct.page** %4, align 8
  %72 = getelementptr inbounds %struct.page, %struct.page* %71, i32 0, i32 0
  %73 = call i32 @list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = call i32 @list_del(i32* %77)
  br label %79

79:                                               ; preds = %75, %67
  %80 = load %struct.z3fold_pool*, %struct.z3fold_pool** %7, align 8
  %81 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %84 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %83)
  store i32 1, i32* %3, align 4
  br label %89

85:                                               ; preds = %48
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.z3fold_header*, %struct.z3fold_header** %6, align 8
  %88 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %86, %79, %30
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageMovable(%struct.page*) #1

declare dso_local i32 @PageIsolated(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.z3fold_header* @page_address(%struct.page*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
