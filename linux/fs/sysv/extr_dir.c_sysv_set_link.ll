; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_dir.c_sysv_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_dir_entry = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, i32 }

@SYSV_DIRSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_set_link(%struct.sysv_dir_entry* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.sysv_dir_entry*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sysv_dir_entry* %0, %struct.sysv_dir_entry** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i32 @page_offset(%struct.page* %15)
  %17 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %4, align 8
  %18 = bitcast %struct.sysv_dir_entry* %17 to i8*
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i64 @page_address(%struct.page* %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @lock_page(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SYSV_DIRSIZE, align 4
  %33 = call i32 @sysv_prepare_chunk(%struct.page* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SYSV_SB(i32 %38)
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_fs16(i32 %39, i32 %42)
  %44 = load %struct.sysv_dir_entry*, %struct.sysv_dir_entry** %4, align 8
  %45 = getelementptr inbounds %struct.sysv_dir_entry, %struct.sysv_dir_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.page*, %struct.page** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SYSV_DIRSIZE, align 4
  %49 = call i32 @dir_commit_chunk(%struct.page* %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.page*, %struct.page** %5, align 8
  %51 = call i32 @dir_put_page(%struct.page* %50)
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @current_time(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = call i32 @mark_inode_dirty(%struct.inode* %58)
  ret void
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @sysv_prepare_chunk(%struct.page*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_fs16(i32, i32) #1

declare dso_local i32 @SYSV_SB(i32) #1

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
