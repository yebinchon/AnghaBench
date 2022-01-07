; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_lookup_contig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_lookup_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32* }
%struct.nilfs_btree_node = type { i32 }
%struct.inode = type { i32 }
%struct.nilfs_btree_readahead_info = type { i32, i32, i32, %struct.nilfs_btree_node* }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64, i64*, i32)* @nilfs_btree_lookup_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_lookup_contig(%struct.nilfs_bmap* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_btree_path*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nilfs_btree_readahead_info, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %12, align 8
  %23 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %23, i32* %16, align 4
  %24 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %24, %struct.nilfs_btree_path** %10, align 8
  %25 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %26 = icmp eq %struct.nilfs_btree_path* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %225

30:                                               ; preds = %4
  %31 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %32 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %31, %struct.nilfs_btree_path* %32, i64 %33, i64* %13, i32 %34, i32 1)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %221

39:                                               ; preds = %30
  %40 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %41 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %45 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %44)
  store %struct.inode* %45, %struct.inode** %12, align 8
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @nilfs_dat_translate(%struct.inode* %46, i64 %47, i64* %15)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %221

52:                                               ; preds = %43
  %53 = load i64, i64* %15, align 8
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %52, %39
  store i32 1, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %217

59:                                               ; preds = %54
  %60 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %61 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  %63 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i8* @nilfs_btree_get_node(%struct.nilfs_bmap* %63, %struct.nilfs_btree_path* %64, i32 %65, i32* %21)
  %67 = bitcast i8* %66 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %67, %struct.nilfs_btree_node** %11, align 8
  %68 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %68, i64 %70
  %72 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %204, %59
  br label %76

76:                                               ; preds = %120, %75
  %77 = load i32, i32* %19, align 4
  %78 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %79 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %76
  %82 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %82, i32 %83)
  %85 = load i64, i64* %7, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %217

91:                                               ; preds = %81
  %92 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %21, align 4
  %95 = call i64 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %92, i32 %93, i32 %94)
  store i64 %95, i64* %14, align 8
  %96 = load %struct.inode*, %struct.inode** %12, align 8
  %97 = icmp ne %struct.inode* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.inode*, %struct.inode** %12, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @nilfs_dat_translate(%struct.inode* %99, i64 %100, i64* %15)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %221

105:                                              ; preds = %98
  %106 = load i64, i64* %15, align 8
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %105, %91
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %107
  br label %217

120:                                              ; preds = %114
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %19, align 4
  br label %76

123:                                              ; preds = %76
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %216

128:                                              ; preds = %123
  %129 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %130 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  %133 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 0
  %134 = call i8* @nilfs_btree_get_node(%struct.nilfs_bmap* %129, %struct.nilfs_btree_path* %130, i32 %132, i32* %133)
  %135 = bitcast i8* %134 to %struct.nilfs_btree_node*
  %136 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 3
  store %struct.nilfs_btree_node* %135, %struct.nilfs_btree_node** %136, align 8
  %137 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %137, i64 %140
  %142 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  %145 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 2
  store i32 7, i32* %146, align 8
  %147 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 3
  %150 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %149, align 8
  %151 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %150)
  %152 = icmp sge i32 %148, %151
  br i1 %152, label %164, label %153

153:                                              ; preds = %128
  %154 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 3
  %155 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %154, align 8
  %156 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %155, i32 %157)
  %159 = load i64, i64* %7, align 8
  %160 = load i32, i32* %18, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = icmp ne i64 %158, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %153, %128
  br label %216

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 3
  %167 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %166, align 8
  %168 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %167, i32 %169, i32 %171)
  store i64 %172, i64* %14, align 8
  %173 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %22, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %175, i64 %178
  %180 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %179, i32 0, i32 0
  store i32 %174, i32* %180, align 8
  %181 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %181, i64 %183
  %185 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @brelse(i32* %186)
  %188 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %188, i64 %190
  %192 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %191, i32 0, i32 1
  store i32* null, i32** %192, align 8
  %193 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %195, i64 %197
  %199 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %198, i32 0, i32 1
  %200 = call i32 @__nilfs_btree_get_block(%struct.nilfs_bmap* %193, i64 %194, i32** %199, %struct.nilfs_btree_readahead_info* %22)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %165
  br label %221

204:                                              ; preds = %165
  %205 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %206 = load i32, i32* %16, align 4
  %207 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %205, i32 %206)
  store %struct.nilfs_btree_node* %207, %struct.nilfs_btree_node** %11, align 8
  %208 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %209 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %208)
  store i32 %209, i32* %21, align 4
  store i32 0, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %211, i64 %213
  %215 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %214, i32 0, i32 0
  store i32 %210, i32* %215, align 8
  br label %75

216:                                              ; preds = %164, %127
  br label %217

217:                                              ; preds = %216, %119, %90, %58
  %218 = load i64, i64* %13, align 8
  %219 = load i64*, i64** %8, align 8
  store i64 %218, i64* %219, align 8
  %220 = load i32, i32* %18, align 4
  store i32 %220, i32* %17, align 4
  br label %221

221:                                              ; preds = %217, %203, %104, %51, %38
  %222 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %10, align 8
  %223 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %222)
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %221, %27
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i64, i64*, i32, i32) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_dat_translate(%struct.inode*, i64, i64*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local i8* @nilfs_btree_get_node(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i64 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @__nilfs_btree_get_block(%struct.nilfs_bmap*, i64, i32**, %struct.nilfs_btree_readahead_info*) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
