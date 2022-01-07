; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_pool = type { i32 }
%struct.z3fold_header = type { i32 }
%struct.page = type { i32 }

@PAGE_HEADLESS = common dso_local global i32 0, align 4
@MIDDLE = common dso_local global i32 0, align 4
@MIDDLE_CHUNK_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z3fold_pool*, i64)* @z3fold_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z3fold_unmap(%struct.z3fold_pool* %0, i64 %1) #0 {
  %3 = alloca %struct.z3fold_pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.z3fold_header*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  store %struct.z3fold_pool* %0, %struct.z3fold_pool** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.z3fold_header* @handle_to_z3fold_header(i64 %8)
  store %struct.z3fold_header* %9, %struct.z3fold_header** %5, align 8
  %10 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %11 = call %struct.page* @virt_to_page(%struct.z3fold_header* %10)
  store %struct.page* %11, %struct.page** %6, align 8
  %12 = load i32, i32* @PAGE_HEADLESS, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %20 = call i32 @z3fold_page_lock(%struct.z3fold_header* %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @handle_to_buddy(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MIDDLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* @MIDDLE_CHUNK_MAPPED, align 4
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = getelementptr inbounds %struct.page, %struct.page* %28, i32 0, i32 0
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %33 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.z3fold_header*, %struct.z3fold_header** %5, align 8
  %37 = call i32 @z3fold_page_unlock(%struct.z3fold_header* %36)
  br label %38

38:                                               ; preds = %31, %17
  ret void
}

declare dso_local %struct.z3fold_header* @handle_to_z3fold_header(i64) #1

declare dso_local %struct.page* @virt_to_page(%struct.z3fold_header*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @z3fold_page_lock(%struct.z3fold_header*) #1

declare dso_local i32 @handle_to_buddy(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @z3fold_page_unlock(%struct.z3fold_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
