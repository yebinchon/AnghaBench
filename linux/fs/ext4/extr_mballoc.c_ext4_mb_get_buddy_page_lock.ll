; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_get_buddy_page_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_get_buddy_page_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_buddy = type { %struct.page*, i64, %struct.page* }
%struct.page = type { i64 }
%struct.inode = type { i64 }
%struct.TYPE_2__ = type { %struct.inode* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_buddy*, i32)* @ext4_mb_get_buddy_page_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_get_buddy_page_lock(%struct.super_block* %0, i32 %1, %struct.ext4_buddy* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_buddy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_buddy* %2, %struct.ext4_buddy** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.ext4_buddy*, %struct.ext4_buddy** %8, align 8
  %21 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %20, i32 0, i32 0
  store %struct.page* null, %struct.page** %21, align 8
  %22 = load %struct.ext4_buddy*, %struct.ext4_buddy** %8, align 8
  %23 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %22, i32 0, i32 2
  store %struct.page* null, %struct.page** %23, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %14, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %14, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.page* @find_or_create_page(i64 %39, i32 %40, i32 %41)
  store %struct.page* %42, %struct.page** %15, align 8
  %43 = load %struct.page*, %struct.page** %15, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %105

48:                                               ; preds = %4
  %49 = load %struct.page*, %struct.page** %15, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.page*, %struct.page** %15, align 8
  %59 = load %struct.ext4_buddy*, %struct.ext4_buddy** %8, align 8
  %60 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %59, i32 0, i32 2
  store %struct.page* %58, %struct.page** %60, align 8
  %61 = load %struct.page*, %struct.page** %15, align 8
  %62 = call i64 @page_address(%struct.page* %61)
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = load %struct.ext4_buddy*, %struct.ext4_buddy** %8, align 8
  %71 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %105

75:                                               ; preds = %48
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call %struct.page* @find_or_create_page(i64 %83, i32 %84, i32 %85)
  store %struct.page* %86, %struct.page** %15, align 8
  %87 = load %struct.page*, %struct.page** %15, align 8
  %88 = icmp ne %struct.page* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %105

92:                                               ; preds = %75
  %93 = load %struct.page*, %struct.page** %15, align 8
  %94 = getelementptr inbounds %struct.page, %struct.page* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load %struct.page*, %struct.page** %15, align 8
  %103 = load %struct.ext4_buddy*, %struct.ext4_buddy** %8, align 8
  %104 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %103, i32 0, i32 0
  store %struct.page* %102, %struct.page** %104, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %92, %89, %74, %45
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.page* @find_or_create_page(i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
