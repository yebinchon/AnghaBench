; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_dir_entry = type { i64 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.minix_sb_info = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_delete_entry(%struct.minix_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.minix_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.minix_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.minix_dir_entry* %0, %struct.minix_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %5, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i8* @page_address(%struct.page* %16)
  store i8* %17, i8** %6, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @page_offset(%struct.page* %18)
  %20 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %21 = bitcast %struct.minix_dir_entry* %20 to i8*
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8*, i8** %6, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.minix_sb_info* @minix_sb(i32 %31)
  store %struct.minix_sb_info* %32, %struct.minix_sb_info** %8, align 8
  %33 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %34 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i32 @lock_page(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @minix_prepare_chunk(%struct.page* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %2
  %45 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %46 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MINIX_V3, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %52 = bitcast %struct.minix_dir_entry* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %3, align 8
  %56 = getelementptr inbounds %struct.minix_dir_entry, %struct.minix_dir_entry* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.page*, %struct.page** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dir_commit_chunk(%struct.page* %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %65

62:                                               ; preds = %2
  %63 = load %struct.page*, %struct.page** %4, align 8
  %64 = call i32 @unlock_page(%struct.page* %63)
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @dir_put_page(%struct.page* %66)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @current_time(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call i32 @mark_inode_dirty(%struct.inode* %74)
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @minix_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
