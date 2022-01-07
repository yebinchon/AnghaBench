; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_block_zero_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_block_zero_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ext4_iomap_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.address_space*, i32, i32)* @ext4_block_zero_page_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_block_zero_page_range(i32* %0, %struct.address_space* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.address_space*, %struct.address_space** %7, align 8
  %15 = getelementptr inbounds %struct.address_space, %struct.address_space* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sub i32 %28, 1
  %30 = and i32 %27, %29
  %31 = sub i32 %26, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i64 @IS_DAX(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @iomap_zero_range(%struct.inode* %45, i32 %46, i32 %47, i32* null, i32* @ext4_iomap_ops)
  store i32 %48, i32* %5, align 4
  br label %55

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.address_space*, %struct.address_space** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @__ext4_block_zero_page_range(i32* %50, %struct.address_space* %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @iomap_zero_range(%struct.inode*, i32, i32, i32*, i32*) #1

declare dso_local i32 @__ext4_block_zero_page_range(i32*, %struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
