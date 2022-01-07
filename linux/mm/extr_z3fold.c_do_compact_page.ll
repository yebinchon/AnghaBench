; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_do_compact_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_do_compact_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i32, i32 }
%struct.z3fold_pool = type { i32, i32 }
%struct.page = type { i32 }

@NEEDS_COMPACTING = common dso_local global i32 0, align 4
@release_z3fold_page_locked = common dso_local global i32 0, align 4
@PAGE_CLAIMED = common dso_local global i32 0, align 4
@PAGE_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z3fold_header*, i32)* @do_compact_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compact_page(%struct.z3fold_header* %0, i32 %1) #0 {
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.z3fold_pool*, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.z3fold_header* %0, %struct.z3fold_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %8 = call %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header* %7)
  store %struct.z3fold_pool* %8, %struct.z3fold_pool** %5, align 8
  %9 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %10 = call %struct.page* @virt_to_page(%struct.z3fold_header* %9)
  store %struct.page* %10, %struct.page** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %15 = call i32 @z3fold_page_trylock(%struct.z3fold_header* %14)
  %16 = call i64 @WARN_ON(i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %19 = call i32 @z3fold_page_lock(%struct.z3fold_header* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32, i32* @NEEDS_COMPACTING, align 4
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i32 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %32 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %31)
  br label %84

33:                                               ; preds = %20
  %34 = load %struct.z3fold_pool*, %struct.z3fold_pool** %5, align 8
  %35 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %38 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %37, i32 0, i32 1
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.z3fold_pool*, %struct.z3fold_pool** %5, align 8
  %41 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %44 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %43, i32 0, i32 0
  %45 = load i32, i32* @release_z3fold_page_locked, align 4
  %46 = call i64 @kref_put(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.z3fold_pool*, %struct.z3fold_pool** %5, align 8
  %50 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %49, i32 0, i32 0
  %51 = call i32 @atomic64_dec(i32* %50)
  br label %84

52:                                               ; preds = %33
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i64 @PageIsolated(%struct.page* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @PAGE_CLAIMED, align 4
  %58 = load %struct.page*, %struct.page** %6, align 8
  %59 = getelementptr inbounds %struct.page, %struct.page* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @PAGE_STALE, align 4
  %64 = load %struct.page*, %struct.page** %6, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 0
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %56, %52
  %69 = phi i1 [ true, %56 ], [ true, %52 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %75 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %74)
  br label %84

76:                                               ; preds = %68
  %77 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %78 = call i32 @z3fold_compact_page(%struct.z3fold_header* %77)
  %79 = load %struct.z3fold_pool*, %struct.z3fold_pool** %5, align 8
  %80 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %81 = call i32 @add_to_unbuddied(%struct.z3fold_pool* %79, %struct.z3fold_header* %80)
  %82 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %83 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %82)
  br label %84

84:                                               ; preds = %76, %73, %48, %30
  ret void
}

declare dso_local %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header*) #1

declare dso_local %struct.page* @virt_to_page(%struct.z3fold_header*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @z3fold_page_trylock(%struct.z3fold_header*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @kref_put(i32*, i32) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @PageIsolated(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @z3fold_compact_page(%struct.z3fold_header*) #1

declare dso_local i32 @add_to_unbuddied(%struct.z3fold_pool*, %struct.z3fold_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
