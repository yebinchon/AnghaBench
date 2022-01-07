; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_file.c_reiserfs_commit_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_file.c_reiserfs_commit_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i64 }
%struct.buffer_head = type { %struct.buffer_head* }
%struct.reiserfs_transaction_handle = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_commit_page(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.super_block*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.reiserfs_transaction_handle, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = lshr i64 %24, %25
  store i64 %26, i64* %15, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @reiserfs_file_data_log(%struct.inode* %27)
  store i32 %28, i32* %17, align 4
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %18, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load %struct.super_block*, %struct.super_block** %18, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %37 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %20, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = call i32 @i_blocksize(%struct.inode* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load %struct.super_block*, %struct.super_block** %18, align 8
  %44 = call i32 @reiserfs_write_lock(%struct.super_block* %43)
  %45 = load %struct.super_block*, %struct.super_block** %18, align 8
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %20, %struct.super_block* %45, i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %139

52:                                               ; preds = %42
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %53)
  br label %55

55:                                               ; preds = %52, %4
  %56 = load %struct.page*, %struct.page** %6, align 8
  %57 = call %struct.buffer_head* @page_buffers(%struct.page* %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %57, %struct.buffer_head** %13, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %129, %55
  %59 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %61 = icmp ne %struct.buffer_head* %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %134

68:                                               ; preds = %66
  %69 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %70 = call i32 @buffer_new(%struct.buffer_head* %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %72 = call i32 @clear_buffer_new(%struct.buffer_head* %71)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ule i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %68
  %84 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %85 = call i32 @buffer_uptodate(%struct.buffer_head* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %83
  br label %128

89:                                               ; preds = %79
  %90 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %91 = call i32 @set_buffer_uptodate(%struct.buffer_head* %90)
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.super_block*, %struct.super_block** %18, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %97 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %95, %struct.buffer_head* %96, i32 1)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %99 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %20, %struct.buffer_head* %98)
  br label %127

100:                                              ; preds = %89
  %101 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %102 = call i32 @buffer_dirty(%struct.buffer_head* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %100
  %105 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %106 = call i32 @mark_buffer_dirty(%struct.buffer_head* %105)
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load %struct.super_block*, %struct.super_block** %108, align 8
  %110 = call i64 @reiserfs_data_ordered(%struct.super_block* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load %struct.page*, %struct.page** %6, align 8
  %117 = getelementptr inbounds %struct.page, %struct.page* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115, %112
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %124 = call i32 @reiserfs_add_ordered_list(%struct.inode* %122, %struct.buffer_head* %123)
  br label %125

125:                                              ; preds = %121, %115, %104
  br label %126

126:                                              ; preds = %125, %100
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %127, %88
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %9, align 4
  %131 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %132 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %131, i32 0, i32 0
  %133 = load %struct.buffer_head*, %struct.buffer_head** %132, align 8
  store %struct.buffer_head* %133, %struct.buffer_head** %13, align 8
  br label %58

134:                                              ; preds = %66
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %20)
  store i32 %138, i32* %21, align 4
  br label %139

139:                                              ; preds = %137, %51
  %140 = load %struct.super_block*, %struct.super_block** %18, align 8
  %141 = call i32 @reiserfs_write_unlock(%struct.super_block* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load %struct.page*, %struct.page** %6, align 8
  %147 = call i32 @SetPageUptodate(%struct.page* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %21, align 4
  ret i32 %149
}

declare dso_local i32 @reiserfs_file_data_log(%struct.inode*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @reiserfs_data_ordered(%struct.super_block*) #1

declare dso_local i32 @reiserfs_add_ordered_list(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
