; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_dx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_fill_new_dir_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dx_hinfo = type { i32 }
%struct.ocfs2_dx_root_block = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*)* @ocfs2_fill_new_dir_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_fill_new_dir_dx(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.inode* %3, %struct.buffer_head* %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_alloc_context*, align 8
  %14 = alloca %struct.ocfs2_alloc_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_dx_hinfo, align 4
  %19 = alloca %struct.ocfs2_dx_root_block*, align 8
  %20 = alloca %struct.ocfs2_dx_entry_list*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %13, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %26 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %27 = call i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super* %21, i32* %22, %struct.inode* %23, %struct.inode* %24, %struct.buffer_head* %25, %struct.ocfs2_alloc_context* %26, %struct.buffer_head** %16)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %67

33:                                               ; preds = %7
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %39 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %40 = call i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super* %34, i32* %35, %struct.inode* %36, %struct.buffer_head* %37, %struct.buffer_head* %38, %struct.ocfs2_alloc_context* %39, i32 1, i32 2, %struct.buffer_head** %17)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %67

46:                                               ; preds = %33
  %47 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %50, %struct.ocfs2_dx_root_block** %19, align 8
  %51 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %19, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %51, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %52, %struct.ocfs2_dx_entry_list** %20, align 8
  %53 = load %struct.inode*, %struct.inode** %11, align 8
  %54 = call i32 @ocfs2_dx_dir_name_hash(%struct.inode* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, %struct.ocfs2_dx_hinfo* %18)
  %55 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %20, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ocfs2_dx_entry_list_insert(%struct.ocfs2_dx_entry_list* %55, %struct.ocfs2_dx_hinfo* %18, i32 %58)
  %60 = load %struct.inode*, %struct.inode** %11, align 8
  %61 = call i32 @ocfs2_dx_dir_name_hash(%struct.inode* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, %struct.ocfs2_dx_hinfo* %18)
  %62 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %20, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ocfs2_dx_entry_list_insert(%struct.ocfs2_dx_entry_list* %62, %struct.ocfs2_dx_hinfo* %18, i32 %65)
  br label %67

67:                                               ; preds = %46, %43, %30
  %68 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %71 = call i32 @brelse(%struct.buffer_head* %70)
  %72 = load i32, i32* %15, align 4
  ret i32 %72
}

declare dso_local i32 @ocfs2_fill_new_dir_el(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_dx_dir_attach_index(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_dx_dir_name_hash(%struct.inode*, i8*, i32, %struct.ocfs2_dx_hinfo*) #1

declare dso_local i32 @ocfs2_dx_entry_list_insert(%struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_hinfo*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
