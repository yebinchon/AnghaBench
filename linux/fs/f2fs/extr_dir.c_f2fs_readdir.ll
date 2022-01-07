; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_ra_state }
%struct.file_ra_state = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i32 }
%struct.f2fs_dentry_block = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_dentry_ptr = type { i32 }
%struct.fscrypt_str = type { i32 }

@NR_DENTRY_IN_BLOCK = common dso_local global i64 0, align 8
@ENOKEY = common dso_local global i32 0, align 4
@F2FS_NAME_LEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@MAX_DIR_RA_PAGES = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @f2fs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.f2fs_dentry_block*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.file_ra_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.f2fs_dentry_ptr, align 4
  %13 = alloca %struct.fscrypt_str, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i64 @dir_blocks(%struct.inode* %17)
  store i64 %18, i64* %6, align 8
  store %struct.f2fs_dentry_block* null, %struct.f2fs_dentry_block** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  store %struct.file_ra_state* %20, %struct.file_ra_state** %9, align 8
  %21 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %22 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %25 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @NR_DENTRY_IN_BLOCK, align 8
  %29 = udiv i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = call i32 @FSTR_INIT(i32* null, i32 0)
  %32 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %14, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i64 @IS_ENCRYPTED(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %2
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @fscrypt_get_encryption_info(%struct.inode* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ENOKEY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %153

47:                                               ; preds = %41, %36
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load i32, i32* @F2FS_NAME_LEN, align 4
  %50 = call i32 @fscrypt_fname_alloc_buffer(%struct.inode* %48, i32 %49, %struct.fscrypt_str* %13)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %153

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = call i64 @f2fs_has_inline_dentry(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.file*, %struct.file** %3, align 8
  %61 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %62 = call i32 @f2fs_read_inline_dir(%struct.file* %60, %struct.dir_context* %61, %struct.fscrypt_str* %13)
  store i32 %62, i32* %14, align 4
  br label %151

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %140, %63
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %6, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %150

69:                                               ; preds = %64
  %70 = load i32, i32* @current, align 4
  %71 = call i64 @fatal_signal_pending(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @ERESTARTSYS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %151

76:                                               ; preds = %69
  %77 = call i32 (...) @cond_resched()
  %78 = load i64, i64* %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %83, label %103

83:                                               ; preds = %76
  %84 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ra_has_index(%struct.file_ra_state* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.file_ra_state*, %struct.file_ra_state** %9, align 8
  %93 = load %struct.file*, %struct.file** %3, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = sub i64 %95, %97
  %99 = load i64, i64* @MAX_DIR_RA_PAGES, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @min(i64 %98, i32 %100)
  %102 = call i32 @page_cache_sync_readahead(i32 %91, %struct.file_ra_state* %92, %struct.file* %93, i32 %94, i32 %101)
  br label %103

103:                                              ; preds = %88, %83, %76
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call %struct.page* @f2fs_find_data_page(%struct.inode* %104, i32 %105)
  store %struct.page* %106, %struct.page** %8, align 8
  %107 = load %struct.page*, %struct.page** %8, align 8
  %108 = call i64 @IS_ERR(%struct.page* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load %struct.page*, %struct.page** %8, align 8
  %112 = call i32 @PTR_ERR(%struct.page* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %140

118:                                              ; preds = %110
  br label %151

119:                                              ; preds = %103
  %120 = load %struct.page*, %struct.page** %8, align 8
  %121 = call %struct.f2fs_dentry_block* @page_address(%struct.page* %120)
  store %struct.f2fs_dentry_block* %121, %struct.f2fs_dentry_block** %7, align 8
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.f2fs_dentry_block*, %struct.f2fs_dentry_block** %7, align 8
  %124 = call i32 @make_dentry_ptr_block(%struct.inode* %122, %struct.f2fs_dentry_ptr* %12, %struct.f2fs_dentry_block* %123)
  %125 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* @NR_DENTRY_IN_BLOCK, align 8
  %129 = mul i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @f2fs_fill_dentries(%struct.dir_context* %125, %struct.f2fs_dentry_ptr* %12, i32 %130, %struct.fscrypt_str* %13)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load %struct.page*, %struct.page** %8, align 8
  %136 = call i32 @f2fs_put_page(%struct.page* %135, i32 0)
  br label %150

137:                                              ; preds = %119
  %138 = load %struct.page*, %struct.page** %8, align 8
  %139 = call i32 @f2fs_put_page(%struct.page* %138, i32 0)
  br label %140

140:                                              ; preds = %137, %117
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @NR_DENTRY_IN_BLOCK, align 8
  %146 = mul i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %149 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %64

150:                                              ; preds = %134, %64
  br label %151

151:                                              ; preds = %150, %118, %73, %59
  %152 = call i32 @fscrypt_fname_free_buffer(%struct.fscrypt_str* %13)
  br label %153

153:                                              ; preds = %151, %53, %46
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %157 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @trace_f2fs_readdir(%struct.inode* %154, i32 %155, i32 %158, i32 %159)
  %161 = load i32, i32* %14, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* %14, align 4
  br label %166

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %163
  %167 = phi i32 [ %164, %163 ], [ 0, %165 ]
  ret i32 %167
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @dir_blocks(%struct.inode*) #1

declare dso_local i32 @FSTR_INIT(i32*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i32 @fscrypt_fname_alloc_buffer(%struct.inode*, i32, %struct.fscrypt_str*) #1

declare dso_local i64 @f2fs_has_inline_dentry(%struct.inode*) #1

declare dso_local i32 @f2fs_read_inline_dir(%struct.file*, %struct.dir_context*, %struct.fscrypt_str*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ra_has_index(%struct.file_ra_state*, i32) #1

declare dso_local i32 @page_cache_sync_readahead(i32, %struct.file_ra_state*, %struct.file*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.page* @f2fs_find_data_page(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local %struct.f2fs_dentry_block* @page_address(%struct.page*) #1

declare dso_local i32 @make_dentry_ptr_block(%struct.inode*, %struct.f2fs_dentry_ptr*, %struct.f2fs_dentry_block*) #1

declare dso_local i32 @f2fs_fill_dentries(%struct.dir_context*, %struct.f2fs_dentry_ptr*, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @fscrypt_fname_free_buffer(%struct.fscrypt_str*) #1

declare dso_local i32 @trace_f2fs_readdir(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
