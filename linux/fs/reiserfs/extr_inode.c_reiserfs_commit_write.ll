; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_reiserfs_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@i_pack_on_close_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_commit_write(%struct.file* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_transaction_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.reiserfs_transaction_handle, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.page*, %struct.page** %7, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %10, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %14, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @reiserfs_write_unlock_nested(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reiserfs_wait_on_write_block(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @reiserfs_write_lock_nested(i32 %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @reiserfs_transaction_running(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %50, align 8
  store %struct.reiserfs_transaction_handle* %51, %struct.reiserfs_transaction_handle** %14, align 8
  br label %52

52:                                               ; preds = %48, %4
  %53 = load %struct.inode*, %struct.inode** %10, align 8
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @reiserfs_commit_page(%struct.inode* %53, %struct.page* %54, i32 %55, i32 %56)
  %58 = load i64, i64* %11, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %123

63:                                               ; preds = %52
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @have_large_tails(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @i_block_size(%struct.inode* %73)
  %75 = mul nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = icmp sgt i64 %72, %76
  br i1 %77, label %92, label %78

78:                                               ; preds = %69, %63
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @have_small_tails(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @i_block_size(%struct.inode* %88)
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84, %69
  %93 = load i32, i32* @i_pack_on_close_mask, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call %struct.TYPE_6__* @REISERFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %84, %78
  %101 = load %struct.inode*, %struct.inode** %10, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %16, i32 %103, i32 1)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %142

108:                                              ; preds = %100
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %109)
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %16, %struct.inode* %116)
  store i32 1, i32* %13, align 4
  %118 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %16)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %142

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %52
  %124 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %125 = icmp ne %struct.reiserfs_transaction_handle* %124, null
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call i32 @mark_inode_dirty(%struct.inode* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %134 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %140

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %137
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %5, align 4
  br label %157

142:                                              ; preds = %121, %107
  %143 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %144 = icmp ne %struct.reiserfs_transaction_handle* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %150 = load %struct.inode*, %struct.inode** %10, align 8
  %151 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %149, %struct.inode* %150)
  br label %152

152:                                              ; preds = %148, %145
  %153 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %14, align 8
  %154 = call i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle* %153)
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %142
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %140
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @reiserfs_write_unlock_nested(i32) #1

declare dso_local i32 @reiserfs_wait_on_write_block(i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(i32, i32) #1

declare dso_local i64 @reiserfs_transaction_running(i32) #1

declare dso_local i32 @reiserfs_commit_page(%struct.inode*, %struct.page*, i32, i32) #1

declare dso_local i64 @have_large_tails(i32) #1

declare dso_local i32 @i_block_size(%struct.inode*) #1

declare dso_local i64 @have_small_tails(i32) #1

declare dso_local %struct.TYPE_6__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_end_persistent_transaction(%struct.reiserfs_transaction_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
