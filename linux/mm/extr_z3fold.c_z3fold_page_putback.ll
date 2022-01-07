; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_putback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_page_putback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.z3fold_header = type { i32, i32 }
%struct.z3fold_pool = type { i32, i32, i32 }

@release_z3fold_page_locked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*)* @z3fold_page_putback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z3fold_page_putback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca %struct.z3fold_pool*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.z3fold_header* @page_address(%struct.page* %5)
  store %struct.z3fold_header* %6, %struct.z3fold_header** %3, align 8
  %7 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %8 = call %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header* %7)
  store %struct.z3fold_pool* %8, %struct.z3fold_pool** %4, align 8
  %9 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %10 = call i32 @z3fold_page_lock(%struct.z3fold_header* %9)
  %11 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %12 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %11, i32 0, i32 1
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %17 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %16, i32 0, i32 1
  %18 = call i32 @list_del_init(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %24 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %23, i32 0, i32 0
  %25 = load i32, i32* @release_z3fold_page_locked, align 4
  %26 = call i64 @kref_put(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %30 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %29, i32 0, i32 2
  %31 = call i32 @atomic64_dec(i32* %30)
  br label %46

32:                                               ; preds = %19
  %33 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %34 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.page*, %struct.page** %2, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %39 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = load %struct.z3fold_pool*, %struct.z3fold_pool** %4, align 8
  %42 = getelementptr inbounds %struct.z3fold_pool, %struct.z3fold_pool* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %45 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %44)
  br label %46

46:                                               ; preds = %32, %28
  ret void
}

declare dso_local %struct.z3fold_header* @page_address(%struct.page*) #1

declare dso_local %struct.z3fold_pool* @zhdr_to_pool(%struct.z3fold_header*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @kref_put(i32*, i32) #1

declare dso_local i32 @atomic64_dec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
