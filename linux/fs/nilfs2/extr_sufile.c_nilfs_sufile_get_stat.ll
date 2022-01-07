; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sufile.c_nilfs_sufile_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, i32, i32 }
%struct.nilfs_sustat = type { i32, i32, i32, i8*, i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_sufile_header = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sufile_get_stat(%struct.inode* %0, %struct.nilfs_sustat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_sustat*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_sufile_header*, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_sustat* %1, %struct.nilfs_sustat** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %13, align 8
  store %struct.the_nilfs* %14, %struct.the_nilfs** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @nilfs_sufile_get_header_block(%struct.inode* %19, %struct.buffer_head** %5)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @kmap_atomic(i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %31 = call i32 @bh_offset(%struct.buffer_head* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = bitcast i8* %33 to %struct.nilfs_sufile_header*
  store %struct.nilfs_sufile_header* %34, %struct.nilfs_sufile_header** %6, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = call i32 @nilfs_sufile_get_nsegments(%struct.inode* %35)
  %37 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %38 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %6, align 8
  %40 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le64_to_cpu(i32 %41)
  %43 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %44 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.nilfs_sufile_header*, %struct.nilfs_sufile_header** %6, align 8
  %46 = getelementptr inbounds %struct.nilfs_sufile_header, %struct.nilfs_sufile_header* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le64_to_cpu(i32 %47)
  %49 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %50 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %52 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %55 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %57 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %60 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %62 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %65 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nilfs_sustat*, %struct.nilfs_sustat** %4, align 8
  %68 = getelementptr inbounds %struct.nilfs_sustat, %struct.nilfs_sustat* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %70 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @kunmap_atomic(i8* %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  br label %76

76:                                               ; preds = %24, %23
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @up_read(i32* %79)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_sufile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_sufile_get_nsegments(%struct.inode*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
