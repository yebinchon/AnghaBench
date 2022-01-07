; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.inode*, i32)* @__iomap_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__iomap_read_page(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.address_space*, %struct.address_space** %9, align 8
  store %struct.address_space* %10, %struct.address_space** %6, align 8
  %11 = load %struct.address_space*, %struct.address_space** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = call %struct.page* @read_mapping_page(%struct.address_space* %11, i32 %14, i32* null)
  store %struct.page* %15, %struct.page** %7, align 8
  %16 = load %struct.page*, %struct.page** %7, align 8
  %17 = call i64 @IS_ERR(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %20, %struct.page** %3, align 8
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i32 @PageUptodate(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @put_page(%struct.page* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.page* @ERR_PTR(i32 %29)
  store %struct.page* %30, %struct.page** %3, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %32, %struct.page** %3, align 8
  br label %33

33:                                               ; preds = %31, %25, %19
  %34 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %34
}

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
