; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_journalled_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c___ext4_journalled_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@bget_one = common dso_local global i32 0, align 4
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4
@do_journal_get_write_access = common dso_local global i32 0, align 4
@write_end_fn = common dso_local global i32 0, align 4
@bput_one = common dso_local global i32 0, align 4
@EXT4_STATE_JDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__ext4_journalled_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_journalled_writepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 1
  %15 = load %struct.address_space*, %struct.address_space** %14, align 8
  store %struct.address_space* %15, %struct.address_space** %5, align 8
  %16 = load %struct.address_space*, %struct.address_space** %5, align 8
  %17 = getelementptr inbounds %struct.address_space, %struct.address_space* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @ext4_has_inline_data(%struct.inode* %19)
  store i32 %20, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @ClearPageChecked(%struct.page* %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %2
  %26 = load %struct.page*, %struct.page** %3, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @ext4_get_max_inline_size(%struct.inode* %33)
  %35 = icmp ugt i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.page*, %struct.page** %3, align 8
  %41 = call %struct.buffer_head* @ext4_journalled_write_inline_data(%struct.inode* %38, i32 %39, %struct.page* %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %12, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %43 = icmp eq %struct.buffer_head* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %147

45:                                               ; preds = %25
  br label %59

46:                                               ; preds = %2
  %47 = load %struct.page*, %struct.page** %3, align 8
  %48 = call %struct.buffer_head* @page_buffers(%struct.page* %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %7, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call i32 (...) @BUG()
  br label %147

53:                                               ; preds = %46
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @bget_one, align 4
  %58 = call i32 @ext4_walk_page_buffers(%struct.TYPE_13__* %54, %struct.buffer_head* %55, i32 0, i32 %56, i32* null, i32 %57)
  br label %59

59:                                               ; preds = %53, %45
  %60 = load %struct.page*, %struct.page** %3, align 8
  %61 = call i32 @get_page(%struct.page* %60)
  %62 = load %struct.page*, %struct.page** %3, align 8
  %63 = call i32 @unlock_page(%struct.page* %62)
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %66)
  %68 = call %struct.TYPE_13__* @ext4_journal_start(%struct.inode* %64, i32 %65, i32 %67)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %8, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = call i64 @IS_ERR(%struct.TYPE_13__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = call i32 @PTR_ERR(%struct.TYPE_13__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.page*, %struct.page** %3, align 8
  %76 = call i32 @put_page(%struct.page* %75)
  br label %150

77:                                               ; preds = %59
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = call i32 @ext4_handle_valid(%struct.TYPE_13__* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load %struct.page*, %struct.page** %3, align 8
  %85 = call i32 @lock_page(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %3, align 8
  %87 = call i32 @put_page(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %3, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 1
  %90 = load %struct.address_space*, %struct.address_space** %89, align 8
  %91 = load %struct.address_space*, %struct.address_space** %5, align 8
  %92 = icmp ne %struct.address_space* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = call i32 @ext4_journal_stop(%struct.TYPE_13__* %94)
  store i32 0, i32* %9, align 4
  br label %147

96:                                               ; preds = %77
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call i32 @ext4_mark_inode_dirty(%struct.TYPE_13__* %100, %struct.inode* %101)
  store i32 %102, i32* %9, align 4
  br label %114

103:                                              ; preds = %96
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @do_journal_get_write_access, align 4
  %108 = call i32 @ext4_walk_page_buffers(%struct.TYPE_13__* %104, %struct.buffer_head* %105, i32 0, i32 %106, i32* null, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @write_end_fn, align 4
  %113 = call i32 @ext4_walk_page_buffers(%struct.TYPE_13__* %109, %struct.buffer_head* %110, i32 0, i32 %111, i32* null, i32 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %103, %99
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = call %struct.TYPE_11__* @EXT4_I(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %129 = call i32 @ext4_journal_stop(%struct.TYPE_13__* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %132, %119
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = call i32 @ext4_has_inline_data(%struct.inode* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %134
  %139 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @bput_one, align 4
  %142 = call i32 @ext4_walk_page_buffers(%struct.TYPE_13__* null, %struct.buffer_head* %139, i32 0, i32 %140, i32* null, i32 %141)
  br label %143

143:                                              ; preds = %138, %134
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = load i32, i32* @EXT4_STATE_JDATA, align 4
  %146 = call i32 @ext4_set_inode_state(%struct.inode* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %93, %51, %44
  %148 = load %struct.page*, %struct.page** %3, align 8
  %149 = call i32 @unlock_page(%struct.page* %148)
  br label %150

150:                                              ; preds = %147, %72
  %151 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %152 = call i32 @brelse(%struct.buffer_head* %151)
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_get_max_inline_size(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_journalled_write_inline_data(%struct.inode*, i32, %struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ext4_walk_page_buffers(%struct.TYPE_13__*, %struct.buffer_head*, i32, i32, i32*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local %struct.TYPE_13__* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ext4_handle_valid(%struct.TYPE_13__*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.TYPE_13__*, %struct.inode*) #1

declare dso_local %struct.TYPE_11__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
