; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_dir_entry = type { i32, i32 }
%struct.page = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ufs_set_link(%struct.inode* %0, %struct.ufs_dir_entry* %1, %struct.page* %2, %struct.inode* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ufs_dir_entry*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ufs_dir_entry* %1, %struct.ufs_dir_entry** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = call i32 @page_offset(%struct.page* %14)
  %16 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %7, align 8
  %17 = bitcast %struct.ufs_dir_entry* %16 to i8*
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i64 @page_address(%struct.page* %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = ptrtoint i8* %19 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %7, align 8
  %31 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fs16_to_cpu(i32 %29, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i32 @lock_page(%struct.page* %34)
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ufs_prepare_chunk(%struct.page* %36, i32 %37, i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_fs32(i32 %44, i32 %47)
  %49 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %7, align 8
  %50 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %7, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ufs_set_de_type(i32 %53, %struct.ufs_dir_entry* %54, i32 %57)
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ufs_commit_chunk(%struct.page* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.page*, %struct.page** %8, align 8
  %64 = call i32 @ufs_put_page(%struct.page* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %5
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = call i32 @current_time(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %5
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i32 @mark_inode_dirty(%struct.inode* %75)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @fs16_to_cpu(i32, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ufs_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_fs32(i32, i32) #1

declare dso_local i32 @ufs_set_de_type(i32, %struct.ufs_dir_entry*, i32) #1

declare dso_local i32 @ufs_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @ufs_put_page(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
