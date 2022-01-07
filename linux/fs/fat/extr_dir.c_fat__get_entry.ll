; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat__get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat__get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.msdos_dir_entry = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Directory bread(block %llu) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head**, %struct.msdos_dir_entry**)* @fat__get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat__get_entry(%struct.inode* %0, i32* %1, %struct.buffer_head** %2, %struct.msdos_dir_entry** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.msdos_dir_entry**, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store %struct.msdos_dir_entry** %3, %struct.msdos_dir_entry*** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %10, align 8
  br label %19

19:                                               ; preds = %51, %4
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = call i32 @brelse(%struct.buffer_head* %21)
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.super_block*, %struct.super_block** %10, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @fat_bmap(%struct.inode* %30, i32 %31, i32* %11, i64* %13, i32 0, i32 0)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %19
  store i32 -1, i32* %5, align 4
  br label %85

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @fat_dir_readahead(%struct.inode* %40, i32 %41, i32 %42)
  %44 = load %struct.super_block*, %struct.super_block** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.buffer_head* @sb_bread(%struct.super_block* %44, i32 %45)
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %46, %struct.buffer_head** %47, align 8
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = icmp eq %struct.buffer_head* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load %struct.super_block*, %struct.super_block** %10, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @fat_msg_ratelimit(%struct.super_block* %52, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.super_block*, %struct.super_block** %10, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %57, %60
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %19

63:                                               ; preds = %39
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.super_block*, %struct.super_block** %10, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %65, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  %78 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = inttoptr i64 %82 to %struct.msdos_dir_entry*
  %84 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %9, align 8
  store %struct.msdos_dir_entry* %83, %struct.msdos_dir_entry** %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %63, %38
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fat_bmap(%struct.inode*, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @fat_dir_readahead(%struct.inode*, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @fat_msg_ratelimit(%struct.super_block*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
