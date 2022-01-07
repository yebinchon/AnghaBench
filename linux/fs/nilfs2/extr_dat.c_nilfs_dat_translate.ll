; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_translate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_dat.c_nilfs_dat_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_dat_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_dat_translate(%struct.inode* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_dat_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %14, i32 %15, i32 0, %struct.buffer_head** %8)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  %22 = call i32 (...) @nilfs_doing_gc()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = call i64 @buffer_nilfs_redirected(%struct.buffer_head* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = call %struct.buffer_head* @nilfs_mdt_get_frozen_buffer(%struct.inode* %29, %struct.buffer_head* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %9, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %36 = call i32 @buffer_uptodate(%struct.buffer_head* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i32 @brelse(%struct.buffer_head* %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %43, %struct.buffer_head** %8, align 8
  br label %44

44:                                               ; preds = %34, %28
  br label %45

45:                                               ; preds = %44, %24, %21
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @kmap_atomic(i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode* %50, i32 %51, %struct.buffer_head* %52, i8* %53)
  store %struct.nilfs_dat_entry* %54, %struct.nilfs_dat_entry** %10, align 8
  %55 = load %struct.nilfs_dat_entry*, %struct.nilfs_dat_entry** %10, align 8
  %56 = getelementptr inbounds %struct.nilfs_dat_entry, %struct.nilfs_dat_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @le64_to_cpu(i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %13, align 4
  br label %67

64:                                               ; preds = %45
  %65 = load i64, i64* %11, align 8
  %66 = load i64*, i64** %7, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @kunmap_atomic(i8* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = call i32 @brelse(%struct.buffer_head* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_doing_gc(...) #1

declare dso_local i64 @buffer_nilfs_redirected(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @nilfs_mdt_get_frozen_buffer(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_dat_entry* @nilfs_palloc_block_get_entry(%struct.inode*, i32, %struct.buffer_head*, i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
