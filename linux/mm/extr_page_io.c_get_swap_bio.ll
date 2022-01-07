; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_get_swap_bio.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_get_swap_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.block_device = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (i32, %struct.page*, i32)* @get_swap_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @get_swap_bio(i32 %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.block_device*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bio* @bio_alloc(i32 %9, i32 1)
  store %struct.bio* %10, %struct.bio** %7, align 8
  %11 = load %struct.bio*, %struct.bio** %7, align 8
  %12 = icmp ne %struct.bio* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %3
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i32 @map_swap_page(%struct.page* %14, %struct.block_device** %8)
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.bio*, %struct.bio** %7, align 8
  %20 = load %struct.block_device*, %struct.block_device** %8, align 8
  %21 = call i32 @bio_set_dev(%struct.bio* %19, %struct.block_device* %20)
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = sub nsw i32 %22, 9
  %24 = load %struct.bio*, %struct.bio** %7, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bio*, %struct.bio** %7, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @hpage_nr_pages(%struct.page* %35)
  %37 = mul nsw i32 %34, %36
  %38 = call i32 @bio_add_page(%struct.bio* %32, %struct.page* %33, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %13, %3
  %40 = load %struct.bio*, %struct.bio** %7, align 8
  ret %struct.bio* %40
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @map_swap_page(%struct.page*, %struct.block_device**) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
