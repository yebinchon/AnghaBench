; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_dir.c_minix_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minix_dir_entry = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }
%struct.minix_sb_info = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minix_set_link(%struct.minix_dir_entry* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.minix_dir_entry*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.minix_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.minix_dir_entry* %0, %struct.minix_dir_entry** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.minix_sb_info* @minix_sb(i32 %18)
  store %struct.minix_sb_info* %19, %struct.minix_sb_info** %8, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i32 @page_offset(%struct.page* %20)
  %22 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %23 = bitcast %struct.minix_dir_entry* %22 to i8*
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i64 @page_address(%struct.page* %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = ptrtoint i8* %25 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = call i32 @lock_page(%struct.page* %33)
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %38 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @minix_prepare_chunk(%struct.page* %35, i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %3
  %44 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %45 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MINIX_V3, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %54 = bitcast %struct.minix_dir_entry* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %62

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %61 = getelementptr inbounds %struct.minix_dir_entry, %struct.minix_dir_entry* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.page*, %struct.page** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %66 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dir_commit_chunk(%struct.page* %63, i32 %64, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %72

69:                                               ; preds = %3
  %70 = load %struct.page*, %struct.page** %5, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %69, %62
  %73 = load %struct.page*, %struct.page** %5, align 8
  %74 = call i32 @dir_put_page(%struct.page* %73)
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @current_time(%struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.inode*, %struct.inode** %7, align 8
  %82 = call i32 @mark_inode_dirty(%struct.inode* %81)
  ret void
}

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

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
