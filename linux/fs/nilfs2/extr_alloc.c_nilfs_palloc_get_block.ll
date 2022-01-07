; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_bh_assoc = type { i64, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32, void (%struct.inode*, %struct.buffer_head*, i8*)*, %struct.buffer_head**, %struct.nilfs_bh_assoc*, i32*)* @nilfs_palloc_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_palloc_get_block(%struct.inode* %0, i64 %1, i32 %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3, %struct.buffer_head** %4, %struct.nilfs_bh_assoc* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca %struct.nilfs_bh_assoc*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %12, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %13, align 8
  store %struct.nilfs_bh_assoc* %5, %struct.nilfs_bh_assoc** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = load i32*, i32** %15, align 8
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %20 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %19, i32 0, i32 1
  %21 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %7
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %26 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %31 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %30, i32 0, i32 1
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = call i32 @get_bh(%struct.buffer_head* %32)
  %34 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %35 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %34, i32 0, i32 1
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %37, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @spin_unlock(i32* %38)
  store i32 0, i32* %8, align 4
  br label %72

40:                                               ; preds = %23, %7
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %12, align 8
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %48 = call i32 @nilfs_mdt_get_block(%struct.inode* %43, i64 %44, i32 %45, void (%struct.inode*, %struct.buffer_head*, i8*)* %46, %struct.buffer_head** %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %40
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %55 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %54, i32 0, i32 1
  %56 = load %struct.buffer_head*, %struct.buffer_head** %55, align 8
  %57 = call i32 @brelse(%struct.buffer_head* %56)
  %58 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %58, align 8
  %60 = call i32 @get_bh(%struct.buffer_head* %59)
  %61 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %61, align 8
  %63 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %64 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %63, i32 0, i32 1
  store %struct.buffer_head* %62, %struct.buffer_head** %64, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.nilfs_bh_assoc*, %struct.nilfs_bh_assoc** %14, align 8
  %67 = getelementptr inbounds %struct.nilfs_bh_assoc, %struct.nilfs_bh_assoc* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %51, %40
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %29
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_mdt_get_block(%struct.inode*, i64, i32, void (%struct.inode*, %struct.buffer_head*, i8*)*, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
