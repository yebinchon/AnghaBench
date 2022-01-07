; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_remove_value_outside.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_remove_value_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.ocfs2_xattr_value_root* }
%struct.ocfs2_xattr_value_root = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i32, i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32, i32*, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_header*, %struct.ocfs2_caching_info*, %struct.buffer_head*)* @ocfs2_remove_value_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_remove_value_outside(%struct.inode* %0, %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_header* %2, %struct.ocfs2_caching_info* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %8 = alloca %struct.ocfs2_xattr_header*, align 8
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %7, align 8
  store %struct.ocfs2_xattr_header* %2, %struct.ocfs2_xattr_header** %8, align 8
  store %struct.ocfs2_caching_info* %3, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %14, align 8
  %22 = bitcast %struct.ocfs2_xattr_set_ctxt* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 0
  %24 = call i32 @ocfs2_init_dealloc_ctxt(i32* %23)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %113, %5
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %116

32:                                               ; preds = %25
  %33 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %33, i32 0, i32 0
  %35 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %35, i64 %37
  store %struct.ocfs2_xattr_entry* %38, %struct.ocfs2_xattr_entry** %17, align 8
  %39 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %17, align 8
  %40 = call i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %113

43:                                               ; preds = %32
  %44 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %45 = bitcast %struct.ocfs2_xattr_header* %44 to i8*
  %46 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %17, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %45, i64 %50
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %17, align 8
  %54 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @OCFS2_XATTR_SIZE(i32 %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %52, i64 %57
  %59 = bitcast i8* %58 to %struct.ocfs2_xattr_value_root*
  %60 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %60, i32 0, i32 0
  store %struct.ocfs2_xattr_value_root* %59, %struct.ocfs2_xattr_value_root** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %64 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %63, i32 0, i32 0
  %65 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %64, align 8
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  %69 = call i32 @ocfs2_lock_xattr_remove_allocators(%struct.inode* %62, %struct.ocfs2_xattr_value_root* %65, %struct.ocfs2_caching_info* %66, %struct.buffer_head* %67, i32** %68, i32* %13)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %74 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ocfs2_remove_extent_credits(i32 %75)
  %77 = add nsw i64 %72, %76
  %78 = call i32 @ocfs2_start_trans(%struct.ocfs2_super* %70, i64 %77)
  %79 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %43
  %85 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %116

90:                                               ; preds = %43
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %7, align 8
  %93 = call i32 @ocfs2_xattr_value_truncate(%struct.inode* %91, %struct.ocfs2_xattr_value_buf* %92, i32 0, %struct.ocfs2_xattr_set_ctxt* %15)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %95 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %94, i32 %96)
  %98 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ocfs2_free_alloc_context(i32* %103)
  %105 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %101, %90
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %116

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %42
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %25

116:                                              ; preds = %109, %84, %25
  %117 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ocfs2_free_alloc_context(i32* %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %126 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %125, i32 1)
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %128 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %15, i32 0, i32 0
  %129 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %127, i32* %128)
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @ocfs2_lock_xattr_remove_allocators(%struct.inode*, %struct.ocfs2_xattr_value_root*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32**, i32*) #1

declare dso_local i32 @ocfs2_start_trans(%struct.ocfs2_super*, i64) #1

declare dso_local i64 @ocfs2_remove_extent_credits(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xattr_value_truncate(%struct.inode*, %struct.ocfs2_xattr_value_buf*, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
