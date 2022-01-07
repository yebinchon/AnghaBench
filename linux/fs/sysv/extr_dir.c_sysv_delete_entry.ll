; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i64 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }

@SYSV_DIRSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysv_delete_entry(%struct.sysv_dir_entry* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.sysv_dir_entry*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sysv_dir_entry* %0, %struct.sysv_dir_entry** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %5, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i64 @page_address(%struct.page* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %6, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @page_offset(%struct.page* %17)
  %19 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  %20 = bitcast %struct.sysv_dir_entry* %19 to i8*
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @lock_page(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SYSV_DIRSIZE, align 4
  %33 = call i32 @sysv_prepare_chunk(%struct.page* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %3, align 8
  %37 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SYSV_DIRSIZE, align 4
  %41 = call i32 @dir_commit_chunk(%struct.page* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @dir_put_page(%struct.page* %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = call i32 @current_time(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @mark_inode_dirty(%struct.inode* %50)
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @sysv_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dir_commit_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
