; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_index_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_index_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i8*, i32 }
%struct.ocfs2_dir_entry = type { i32, i32, i32, i32 }
%struct.ocfs2_dx_hinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.buffer_head**, i32, i64*, %struct.buffer_head*)* @ocfs2_dx_dir_index_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dx_dir_index_block(%struct.inode* %0, i32* %1, %struct.buffer_head** %2, i32 %3, i64* %4, %struct.buffer_head* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ocfs2_dir_entry*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_dx_hinfo, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store %struct.buffer_head* %5, %struct.buffer_head** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %28, i64 %34
  store i8* %35, i8** %17, align 8
  br label %36

36:                                               ; preds = %86, %6
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %36
  %41 = load i8*, i8** %16, align 8
  %42 = bitcast i8* %41 to %struct.ocfs2_dir_entry*
  store %struct.ocfs2_dir_entry* %42, %struct.ocfs2_dir_entry** %18, align 8
  %43 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %44 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %40
  br label %86

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %57 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @ocfs2_dx_dir_name_hash(%struct.inode* %55, i32 %58, i32 %59, %struct.ocfs2_dx_hinfo* %20)
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = call i32 @OCFS2_SB(%struct.TYPE_2__* %63)
  %65 = call i32 @ocfs2_dx_dir_hash_idx(i32 %64, %struct.ocfs2_dx_hinfo* %20)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %66, i64 %68
  %70 = load %struct.buffer_head*, %struct.buffer_head** %69, align 8
  store %struct.buffer_head* %70, %struct.buffer_head** %19, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %21, align 4
  %74 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %75 = call i32 @__ocfs2_dx_dir_leaf_insert(%struct.inode* %71, i32* %72, %struct.ocfs2_dx_hinfo* %20, i32 %73, %struct.buffer_head* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %54
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %95

81:                                               ; preds = %54
  %82 = load i64*, i64** %11, align 8
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  %85 = load i64*, i64** %11, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %53
  %87 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %18, align 8
  %88 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = load i8*, i8** %16, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %16, align 8
  br label %36

94:                                               ; preds = %36
  br label %95

95:                                               ; preds = %94, %78
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local i32 @ocfs2_dx_dir_name_hash(%struct.inode*, i32, i32, %struct.ocfs2_dx_hinfo*) #1

declare dso_local i32 @ocfs2_dx_dir_hash_idx(i32, %struct.ocfs2_dx_hinfo*) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @__ocfs2_dx_dir_leaf_insert(%struct.inode*, i32*, %struct.ocfs2_dx_hinfo*, i32, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
