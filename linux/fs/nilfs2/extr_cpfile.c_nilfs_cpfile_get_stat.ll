; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_cpfile.c_nilfs_cpfile_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_cpstat = type { i8*, i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_cpfile_header = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_cpfile_get_stat(%struct.inode* %0, %struct.nilfs_cpstat* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nilfs_cpstat*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_cpfile_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nilfs_cpstat* %1, %struct.nilfs_cpstat** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call i32 @nilfs_cpfile_get_header_block(%struct.inode* %13, %struct.buffer_head** %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @kmap_atomic(i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode* %23, %struct.buffer_head* %24, i8* %25)
  store %struct.nilfs_cpfile_header* %26, %struct.nilfs_cpfile_header** %6, align 8
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @nilfs_mdt_cno(%struct.inode* %27)
  %29 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %30 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %6, align 8
  %32 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le64_to_cpu(i32 %33)
  %35 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %36 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.nilfs_cpfile_header*, %struct.nilfs_cpfile_header** %6, align 8
  %38 = getelementptr inbounds %struct.nilfs_cpfile_header, %struct.nilfs_cpfile_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le64_to_cpu(i32 %39)
  %41 = load %struct.nilfs_cpstat*, %struct.nilfs_cpstat** %4, align 8
  %42 = getelementptr inbounds %struct.nilfs_cpstat, %struct.nilfs_cpstat* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @kunmap_atomic(i8* %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %46 = call i32 @brelse(%struct.buffer_head* %45)
  br label %47

47:                                               ; preds = %18, %17
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = call %struct.TYPE_2__* @NILFS_MDT(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_cpfile_get_header_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local %struct.nilfs_cpfile_header* @nilfs_cpfile_block_get_header(%struct.inode*, %struct.buffer_head*, i8*) #1

declare dso_local i32 @nilfs_mdt_cno(%struct.inode*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
