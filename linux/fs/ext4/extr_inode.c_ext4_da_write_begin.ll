; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.page = type { %struct.address_space* }

@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FALL_BACK_TO_NONDELALLOC = common dso_local global i64 0, align 8
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_HT_WRITE_PAGE = common dso_local global i32 0, align 4
@ext4_da_get_block_prep = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**)* @ext4_da_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_write_begin(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.inode*, align 8
  %21 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.address_space*, %struct.address_space** %10, align 8
  %23 = getelementptr inbounds %struct.address_space, %struct.address_space* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %20, align 8
  %25 = load %struct.inode*, %struct.inode** %20, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @EXT4_SB(i32 %27)
  %29 = call i32 @ext4_forced_shutdown(i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %185

35:                                               ; preds = %7
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %19, align 4
  %39 = load %struct.inode*, %struct.inode** %20, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ext4_nonda_switch(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %20, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISLNK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.inode*, %struct.inode** %20, align 8
  %52 = call i64 @ext4_verity_in_progress(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50, %44, %35
  %55 = load i64, i64* @FALL_BACK_TO_NONDELALLOC, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %15, align 8
  store i8* %56, i8** %57, align 8
  %58 = load %struct.file*, %struct.file** %9, align 8
  %59 = load %struct.address_space*, %struct.address_space** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.page**, %struct.page*** %14, align 8
  %64 = load i8**, i8*** %15, align 8
  %65 = call i32 @ext4_write_begin(%struct.file* %58, %struct.address_space* %59, i32 %60, i32 %61, i32 %62, %struct.page** %63, i8** %64)
  store i32 %65, i32* %8, align 4
  br label %185

66:                                               ; preds = %50
  %67 = load i8**, i8*** %15, align 8
  store i8* null, i8** %67, align 8
  %68 = load %struct.inode*, %struct.inode** %20, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @trace_ext4_da_write_begin(%struct.inode* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.inode*, %struct.inode** %20, align 8
  %74 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %75 = call i64 @ext4_test_inode_state(%struct.inode* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %66
  %78 = load %struct.address_space*, %struct.address_space** %10, align 8
  %79 = load %struct.inode*, %struct.inode** %20, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.page**, %struct.page*** %14, align 8
  %84 = load i8**, i8*** %15, align 8
  %85 = call i32 @ext4_da_write_inline_data_begin(%struct.address_space* %78, %struct.inode* %79, i32 %80, i32 %81, i32 %82, %struct.page** %83, i8** %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %8, align 4
  br label %185

90:                                               ; preds = %77
  %91 = load i32, i32* %16, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %8, align 4
  br label %185

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %66
  br label %96

96:                                               ; preds = %133, %95
  %97 = load %struct.address_space*, %struct.address_space** %10, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %97, i32 %98, i32 %99)
  store %struct.page* %100, %struct.page** %18, align 8
  %101 = load %struct.page*, %struct.page** %18, align 8
  %102 = icmp ne %struct.page* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  br label %185

106:                                              ; preds = %96
  %107 = load %struct.page*, %struct.page** %18, align 8
  %108 = call i32 @unlock_page(%struct.page* %107)
  br label %109

109:                                              ; preds = %176, %106
  %110 = load %struct.inode*, %struct.inode** %20, align 8
  %111 = load i32, i32* @EXT4_HT_WRITE_PAGE, align 4
  %112 = load %struct.inode*, %struct.inode** %20, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ext4_da_write_credits(%struct.inode* %112, i32 %113, i32 %114)
  %116 = call i32* @ext4_journal_start(%struct.inode* %110, i32 %111, i32 %115)
  store i32* %116, i32** %21, align 8
  %117 = load i32*, i32** %21, align 8
  %118 = call i64 @IS_ERR(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %109
  %121 = load %struct.page*, %struct.page** %18, align 8
  %122 = call i32 @put_page(%struct.page* %121)
  %123 = load i32*, i32** %21, align 8
  %124 = call i32 @PTR_ERR(i32* %123)
  store i32 %124, i32* %8, align 4
  br label %185

125:                                              ; preds = %109
  %126 = load %struct.page*, %struct.page** %18, align 8
  %127 = call i32 @lock_page(%struct.page* %126)
  %128 = load %struct.page*, %struct.page** %18, align 8
  %129 = getelementptr inbounds %struct.page, %struct.page* %128, i32 0, i32 0
  %130 = load %struct.address_space*, %struct.address_space** %129, align 8
  %131 = load %struct.address_space*, %struct.address_space** %10, align 8
  %132 = icmp ne %struct.address_space* %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.page*, %struct.page** %18, align 8
  %135 = call i32 @unlock_page(%struct.page* %134)
  %136 = load %struct.page*, %struct.page** %18, align 8
  %137 = call i32 @put_page(%struct.page* %136)
  %138 = load i32*, i32** %21, align 8
  %139 = call i32 @ext4_journal_stop(i32* %138)
  br label %96

140:                                              ; preds = %125
  %141 = load %struct.page*, %struct.page** %18, align 8
  %142 = call i32 @wait_for_stable_page(%struct.page* %141)
  %143 = load %struct.page*, %struct.page** %18, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @ext4_da_get_block_prep, align 4
  %147 = call i32 @__block_write_begin(%struct.page* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %140
  %151 = load %struct.page*, %struct.page** %18, align 8
  %152 = call i32 @unlock_page(%struct.page* %151)
  %153 = load i32*, i32** %21, align 8
  %154 = call i32 @ext4_journal_stop(i32* %153)
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add i32 %155, %156
  %158 = load %struct.inode*, %struct.inode** %20, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ugt i32 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = load %struct.inode*, %struct.inode** %20, align 8
  %164 = call i32 @ext4_truncate_failed_write(%struct.inode* %163)
  br label %165

165:                                              ; preds = %162, %150
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* @ENOSPC, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.inode*, %struct.inode** %20, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @ext4_should_retry_alloc(i32 %173, i32* %17)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %109

177:                                              ; preds = %170, %165
  %178 = load %struct.page*, %struct.page** %18, align 8
  %179 = call i32 @put_page(%struct.page* %178)
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %8, align 4
  br label %185

181:                                              ; preds = %140
  %182 = load %struct.page*, %struct.page** %18, align 8
  %183 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %182, %struct.page** %183, align 8
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %181, %177, %120, %103, %93, %88, %54, %32
  %186 = load i32, i32* %8, align 4
  ret i32 %186
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i64 @ext4_nonda_switch(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @ext4_write_begin(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local i32 @trace_ext4_da_write_begin(%struct.inode*, i32, i32, i32) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_da_write_inline_data_begin(%struct.address_space*, %struct.inode*, i32, i32, i32, %struct.page**, i8**) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_da_write_credits(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @__block_write_begin(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
