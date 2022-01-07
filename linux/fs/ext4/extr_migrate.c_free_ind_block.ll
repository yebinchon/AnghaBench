; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_ind_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_migrate.c_free_ind_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64*)* @free_ind_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_ind_block(i32* %0, %struct.inode* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call i32 @extend_credit_for_blkdel(i32* %14, %struct.inode* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @le32_to_cpu(i64 %21)
  %23 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %24 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ext4_free_blocks(i32* %17, %struct.inode* %18, i32* null, i32 %22, i32 1, i32 %25)
  br label %27

27:                                               ; preds = %13, %3
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @free_dind_blocks(i32* %33, %struct.inode* %34, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @free_tind_blocks(i32* %50, %struct.inode* %51, i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %44
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58, %41
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @extend_credit_for_blkdel(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @free_dind_blocks(i32*, %struct.inode*, i64) #1

declare dso_local i32 @free_tind_blocks(i32*, %struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
