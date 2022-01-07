; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, %struct.page*, %struct.iomap*)* @__iomap_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iomap_write_end(%struct.inode* %0, i32 %1, i32 %2, i32 %3, %struct.page* %4, %struct.iomap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.iomap*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page* %4, %struct.page** %12, align 8
  store %struct.iomap* %5, %struct.iomap** %13, align 8
  %14 = load %struct.page*, %struct.page** %12, align 8
  %15 = call i32 @flush_dcache_page(%struct.page* %14)
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load %struct.page*, %struct.page** %12, align 8
  %21 = call i32 @PageUptodate(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %6
  %25 = phi i1 [ false, %6 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load %struct.page*, %struct.page** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @offset_in_page(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @iomap_set_range_uptodate(%struct.page* %31, i32 %33, i32 %34)
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = call i32 @iomap_set_page_dirty(%struct.page* %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %29
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @iomap_set_range_uptodate(%struct.page*, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @iomap_set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
