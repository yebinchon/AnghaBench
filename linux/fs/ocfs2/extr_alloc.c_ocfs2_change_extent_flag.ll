; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_change_extent_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_change_extent_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32, i32 }
%struct.ocfs2_path = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Owner %llu has an extent at cpos %u which can no longer be found\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Owner %llu tried to set %d flags on an extent that already had them\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Owner %llu tried to clear %d flags on an extent that didn't have them\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_change_extent_flag(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_cached_dealloc_ctxt* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_extent_tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_alloc_context*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.super_block*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ocfs2_extent_rec, align 4
  %24 = alloca %struct.ocfs2_path*, align 8
  %25 = alloca %struct.ocfs2_extent_list*, align 8
  %26 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %15, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %6, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %29)
  store %struct.super_block* %30, %struct.super_block** %21, align 8
  %31 = load %struct.super_block*, %struct.super_block** %21, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @ocfs2_clusters_to_blocks(%struct.super_block* %31, i32 %32)
  store i32 %33, i32* %22, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %24, align 8
  %34 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %35 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %34)
  store %struct.ocfs2_path* %35, %struct.ocfs2_path** %24, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %37 = icmp ne %struct.ocfs2_path* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %9
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %162

43:                                               ; preds = %9
  %44 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %45 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @ocfs2_find_path(i32 %46, %struct.ocfs2_path* %47, i32 %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %19, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %162

55:                                               ; preds = %43
  %56 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %57 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %56)
  store %struct.ocfs2_extent_list* %57, %struct.ocfs2_extent_list** %25, align 8
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %58, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load %struct.super_block*, %struct.super_block** %21, align 8
  %65 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ocfs2_metadata_cache_owner(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ocfs2_error(%struct.super_block* %64, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %68, i32 %69)
  %71 = load i32, i32* @EROFS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %19, align 4
  br label %162

73:                                               ; preds = %55
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %19, align 4
  %76 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %25, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %76, i32 0, i32 0
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %78, i64 %80
  store %struct.ocfs2_extent_rec* %81, %struct.ocfs2_extent_rec** %26, align 8
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %73
  %85 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %86 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load i32, i32* @ML_ERROR, align 4
  %93 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %94 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ocfs2_metadata_cache_owner(i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @mlog(i32 %92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32 %97)
  br label %162

99:                                               ; preds = %84, %73
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %104 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %18, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* @ML_ERROR, align 4
  %111 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %112 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @ocfs2_metadata_cache_owner(i32 %113)
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @mlog(i32 %110, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %114, i32 %115)
  br label %162

117:                                              ; preds = %102, %99
  %118 = call i32 @memset(%struct.ocfs2_extent_rec* %23, i32 0, i32 16)
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @cpu_to_le32(i32 %119)
  %121 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @cpu_to_le16(i32 %122)
  %124 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %22, align 4
  %126 = call i32 @cpu_to_le64(i32 %125)
  %127 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %26, align 8
  %129 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %117
  %135 = load i32, i32* %17, align 4
  %136 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %117
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %18, align 4
  %144 = xor i32 %143, -1
  %145 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %23, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %139
  %149 = load i32*, i32** %10, align 8
  %150 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %11, align 8
  %151 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %152 = load i32, i32* %20, align 4
  %153 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %15, align 8
  %154 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %16, align 8
  %155 = call i32 @ocfs2_split_extent(i32* %149, %struct.ocfs2_extent_tree* %150, %struct.ocfs2_path* %151, i32 %152, %struct.ocfs2_extent_rec* %23, %struct.ocfs2_alloc_context* %153, %struct.ocfs2_cached_dealloc_ctxt* %154)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @mlog_errno(i32 %159)
  br label %161

161:                                              ; preds = %158, %148
  br label %162

162:                                              ; preds = %161, %109, %91, %63, %52, %38
  %163 = load %struct.ocfs2_path*, %struct.ocfs2_path** %24, align 8
  %164 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %163)
  %165 = load i32, i32* %19, align 4
  ret i32 %165
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i32) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ocfs2_split_extent(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, i32, %struct.ocfs2_extent_rec*, %struct.ocfs2_alloc_context*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
