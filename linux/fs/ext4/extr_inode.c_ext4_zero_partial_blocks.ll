; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_zero_partial_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_zero_partial_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space*, %struct.super_block* }
%struct.address_space = type { i32 }
%struct.super_block = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_zero_partial_blocks(i32* %0, %struct.inode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.super_block*, %struct.super_block** %10, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %28, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.super_block*, %struct.super_block** %10, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %34, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.super_block*, %struct.super_block** %10, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %40, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.super_block*, %struct.super_block** %10, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.super_block*, %struct.super_block** %10, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp ne i32 %57, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56, %53
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.address_space*, %struct.address_space** %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ext4_block_zero_page_range(i32* %64, %struct.address_space* %65, i32 %66, i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %5, align 4
  br label %104

70:                                               ; preds = %56, %4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.address_space*, %struct.address_space** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.super_block*, %struct.super_block** %10, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ext4_block_zero_page_range(i32* %74, %struct.address_space* %75, i32 %76, i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %5, align 4
  br label %104

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.super_block*, %struct.super_block** %10, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp ne i32 %87, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.address_space*, %struct.address_space** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %99, 1
  %101 = call i32 @ext4_block_zero_page_range(i32* %94, %struct.address_space* %95, i32 %98, i32 %100)
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %93, %86
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %83, %63
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @ext4_block_zero_page_range(i32*, %struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
