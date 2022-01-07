; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_page_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_page_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.iomap_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_vec*, i32)* @iomap_read_page_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_read_page_end_io(%struct.bio_vec* %0, i32 %1) #0 {
  %3 = alloca %struct.bio_vec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.iomap_page*, align 8
  store %struct.bio_vec* %0, %struct.bio_vec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %8 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 2
  %9 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call %struct.iomap_page* @to_iomap_page(%struct.page* %10)
  store %struct.iomap_page* %11, %struct.iomap_page** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @ClearPageUptodate(%struct.page* %16)
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = call i32 @SetPageError(%struct.page* %18)
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @iomap_set_range_uptodate(%struct.page* %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @iomap_read_finish(%struct.iomap_page* %30, %struct.page* %31)
  ret void
}

declare dso_local %struct.iomap_page* @to_iomap_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @iomap_set_range_uptodate(%struct.page*, i32, i32) #1

declare dso_local i32 @iomap_read_finish(%struct.iomap_page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
