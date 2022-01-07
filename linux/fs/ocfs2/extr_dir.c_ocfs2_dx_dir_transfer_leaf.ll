; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_transfer_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_transfer_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_dx_leaf = type { %struct.ocfs2_dx_entry_list }
%struct.ocfs2_dx_entry_list = type { %struct.ocfs2_dx_entry*, i32 }
%struct.ocfs2_dx_entry = type { i32 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i32*, %struct.ocfs2_dx_leaf*, %struct.buffer_head**, %struct.buffer_head**, i32)* @ocfs2_dx_dir_transfer_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_dir_transfer_leaf(%struct.inode* %0, i64 %1, i32* %2, %struct.ocfs2_dx_leaf* %3, %struct.buffer_head** %4, %struct.buffer_head** %5, i32 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_dx_leaf*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca %struct.buffer_head**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.ocfs2_dx_leaf*, align 8
  %20 = alloca %struct.ocfs2_dx_leaf*, align 8
  %21 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %22 = alloca %struct.ocfs2_dx_entry_list*, align 8
  %23 = alloca %struct.ocfs2_dx_entry*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.ocfs2_dx_leaf* %3, %struct.ocfs2_dx_leaf** %11, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %25 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %24, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %25, %struct.ocfs2_dx_entry_list** %22, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %124, %7
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %127

30:                                               ; preds = %26
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %31, i64 %33
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %38, %struct.ocfs2_dx_leaf** %19, align 8
  %39 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %39, i32 0, i32 0
  store %struct.ocfs2_dx_entry_list* %40, %struct.ocfs2_dx_entry_list** %21, align 8
  %41 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %41, i64 %43
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %48, %struct.ocfs2_dx_leaf** %20, align 8
  %49 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %21, align 8
  %50 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %54 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(%struct.ocfs2_dx_leaf* %53, %struct.ocfs2_dx_leaf* %54, i32 %59)
  %61 = call i32 @cpu_to_le16(i32 0)
  %62 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %22, align 8
  %63 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %22, align 8
  %65 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %64, i32 0, i32 0
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(%struct.ocfs2_dx_entry** %65, i32 0, i32 %69)
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %98, %30
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.ocfs2_dx_entry_list*, %struct.ocfs2_dx_entry_list** %21, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dx_entry_list, %struct.ocfs2_dx_entry_list* %76, i32 0, i32 0
  %78 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %78, i64 %80
  store %struct.ocfs2_dx_entry* %81, %struct.ocfs2_dx_entry** %23, align 8
  %82 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %23, align 8
  %83 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32_to_cpu(i32 %84)
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %20, align 8
  %91 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %23, align 8
  %92 = call i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf* %90, %struct.ocfs2_dx_entry* %91)
  br label %97

93:                                               ; preds = %75
  %94 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %95 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %23, align 8
  %96 = call i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf* %94, %struct.ocfs2_dx_entry* %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %103 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %11, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(%struct.ocfs2_dx_leaf* %102, %struct.ocfs2_dx_leaf* %103, i32 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %111, i64 %113
  %115 = load %struct.buffer_head*, %struct.buffer_head** %114, align 8
  %116 = call i32 @ocfs2_journal_dirty(i32* %110, %struct.buffer_head* %115)
  %117 = load i32*, i32** %10, align 8
  %118 = load %struct.buffer_head**, %struct.buffer_head*** %13, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %118, i64 %120
  %122 = load %struct.buffer_head*, %struct.buffer_head** %121, align 8
  %123 = call i32 @ocfs2_journal_dirty(i32* %117, %struct.buffer_head* %122)
  br label %124

124:                                              ; preds = %101
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %26

127:                                              ; preds = %26
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_dx_entry**, i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_entry*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
