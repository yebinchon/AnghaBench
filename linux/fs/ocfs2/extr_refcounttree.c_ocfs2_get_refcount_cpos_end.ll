; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_cpos_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_get_refcount_cpos_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_block = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ocfs2_extent_list = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.ocfs2_extent_list* }
%struct.TYPE_8__ = type { i64 }
%struct.ocfs2_extent_tree = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_caching_info*, %struct.buffer_head*, %struct.ocfs2_extent_block*, %struct.ocfs2_extent_list*, i32, i32*)* @ocfs2_get_refcount_cpos_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_refcount_cpos_end(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1, %struct.ocfs2_extent_block* %2, %struct.ocfs2_extent_list* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_caching_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_extent_block*, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.super_block*, align 8
  %20 = alloca %struct.ocfs2_path*, align 8
  %21 = alloca %struct.ocfs2_path*, align 8
  %22 = alloca %struct.ocfs2_extent_tree, align 4
  %23 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_extent_block* %2, %struct.ocfs2_extent_block** %10, align 8
  store %struct.ocfs2_extent_list* %3, %struct.ocfs2_extent_list** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %25 = call %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info* %24)
  store %struct.super_block* %25, %struct.super_block** %19, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %20, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %21, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %6
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %193

45:                                               ; preds = %6
  %46 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %10, align 8
  %47 = icmp ne %struct.ocfs2_extent_block* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %10, align 8
  %50 = icmp ne %struct.ocfs2_extent_block* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %10, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %45
  %57 = load i32, i32* @UINT_MAX, align 4
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %7, align 4
  br label %193

59:                                               ; preds = %51, %48
  %60 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %22, %struct.ocfs2_caching_info* %60, %struct.buffer_head* %61)
  %63 = call %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree* %22)
  store %struct.ocfs2_path* %63, %struct.ocfs2_path** %20, align 8
  %64 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %65 = icmp ne %struct.ocfs2_path* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %187

71:                                               ; preds = %59
  %72 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %10, align 8
  %73 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %83 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @ocfs2_find_path(%struct.ocfs2_caching_info* %82, %struct.ocfs2_path* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %187

91:                                               ; preds = %71
  %92 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %93 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %92)
  store %struct.ocfs2_path* %93, %struct.ocfs2_path** %21, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %95 = icmp ne %struct.ocfs2_path* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %187

101:                                              ; preds = %91
  %102 = load %struct.super_block*, %struct.super_block** %19, align 8
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %104 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %102, %struct.ocfs2_path* %103, i32* %17)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %187

110:                                              ; preds = %101
  %111 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %8, align 8
  %112 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @ocfs2_find_path(%struct.ocfs2_caching_info* %111, %struct.ocfs2_path* %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %187

120:                                              ; preds = %110
  %121 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %122 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %123 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %22, %struct.ocfs2_path* %121, %struct.ocfs2_path* %122)
  store i32 %123, i32* %16, align 4
  %124 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %125 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %130, align 8
  store %struct.ocfs2_extent_list* %131, %struct.ocfs2_extent_list** %23, align 8
  %132 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %133 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %18, align 8
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %175, %120
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %146 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = icmp slt i32 %144, %148
  br i1 %149, label %150, label %178

150:                                              ; preds = %143
  %151 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %152 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %151, i32 0, i32 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le64_to_cpu(i32 %158)
  %160 = load i64, i64* %18, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %150
  %163 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %164 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @le32_to_cpu(i32 %171)
  %173 = load i32*, i32** %13, align 8
  store i32 %172, i32* %173, align 4
  br label %178

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %143

178:                                              ; preds = %162, %143
  %179 = load i32, i32* %15, align 4
  %180 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %23, align 8
  %181 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @le16_to_cpu(i32 %182)
  %184 = icmp eq i32 %179, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @BUG_ON(i32 %185)
  br label %187

187:                                              ; preds = %178, %117, %107, %96, %88, %66
  %188 = load %struct.ocfs2_path*, %struct.ocfs2_path** %20, align 8
  %189 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %188)
  %190 = load %struct.ocfs2_path*, %struct.ocfs2_path** %21, align 8
  %191 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %190)
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %187, %56, %33
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(%struct.ocfs2_caching_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_et(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_path(%struct.ocfs2_caching_info*, %struct.ocfs2_path*, i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block*, %struct.ocfs2_path*, i32*) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
