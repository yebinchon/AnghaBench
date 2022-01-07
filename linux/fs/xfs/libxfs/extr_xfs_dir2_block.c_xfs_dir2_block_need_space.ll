; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_need_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_need_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr*)* }
%struct.xfs_dir2_data_free = type { i32, i32 }
%struct.xfs_dir2_data_hdr = type { i32 }
%struct.xfs_dir2_block_tail = type { i64 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_data_unused = type { i32, i32 }

@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_leaf_entry*, i32**, %struct.xfs_dir2_data_unused**, %struct.xfs_dir2_data_unused**, i32*, i32)* @xfs_dir2_block_need_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_block_need_space(%struct.xfs_inode* %0, %struct.xfs_dir2_data_hdr* %1, %struct.xfs_dir2_block_tail* %2, %struct.xfs_dir2_leaf_entry* %3, i32** %4, %struct.xfs_dir2_data_unused** %5, %struct.xfs_dir2_data_unused** %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.xfs_inode*, align 8
  %11 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %12 = alloca %struct.xfs_dir2_block_tail*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca %struct.xfs_dir2_data_unused**, align 8
  %16 = alloca %struct.xfs_dir2_data_unused**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.xfs_dir2_data_free*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.xfs_dir2_data_unused*, align 8
  %22 = alloca %struct.xfs_dir2_data_unused*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %10, align 8
  store %struct.xfs_dir2_data_hdr* %1, %struct.xfs_dir2_data_hdr** %11, align 8
  store %struct.xfs_dir2_block_tail* %2, %struct.xfs_dir2_block_tail** %12, align 8
  store %struct.xfs_dir2_leaf_entry* %3, %struct.xfs_dir2_leaf_entry** %13, align 8
  store i32** %4, i32*** %14, align 8
  store %struct.xfs_dir2_data_unused** %5, %struct.xfs_dir2_data_unused*** %15, align 8
  store %struct.xfs_dir2_data_unused** %6, %struct.xfs_dir2_data_unused*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32* null, i32** %20, align 8
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %21, align 8
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %22, align 8
  %23 = load i32*, i32** %17, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %10, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr*)*, %struct.xfs_dir2_data_free* (%struct.xfs_dir2_data_hdr*)** %27, align 8
  %29 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %30 = call %struct.xfs_dir2_data_free* %28(%struct.xfs_dir2_data_hdr* %29)
  store %struct.xfs_dir2_data_free* %30, %struct.xfs_dir2_data_free** %19, align 8
  %31 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %32 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %104

35:                                               ; preds = %9
  %36 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %19, align 8
  %37 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %36, i64 0
  %38 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be16_to_cpu(i32 %39)
  %41 = load i32, i32* %18, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %45 = bitcast %struct.xfs_dir2_data_hdr* %44 to i8*
  %46 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %19, align 8
  %47 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %46, i64 0
  %48 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be16_to_cpu(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %45, i64 %51
  %53 = bitcast i8* %52 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %53, %struct.xfs_dir2_data_unused** %21, align 8
  br label %176

54:                                               ; preds = %35
  %55 = load i32*, i32** %17, align 8
  store i32 1, i32* %55, align 4
  %56 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %57 = bitcast %struct.xfs_dir2_leaf_entry* %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 -1
  store i32* %58, i32** %20, align 8
  %59 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %60 = bitcast %struct.xfs_dir2_data_hdr* %59 to i8*
  %61 = load i32*, i32** %20, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @be16_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = bitcast i8* %65 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %66, %struct.xfs_dir2_data_unused** %21, align 8
  %67 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %68 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %54
  %74 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %75 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be16_to_cpu(i32 %76)
  %78 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %79 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @be32_to_cpu(i64 %80)
  %82 = sub nsw i32 %81, 1
  %83 = mul nsw i32 %82, 4
  %84 = add nsw i32 %77, %83
  %85 = load i32, i32* %18, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %21, align 8
  br label %88

88:                                               ; preds = %87, %73
  br label %103

89:                                               ; preds = %54
  %90 = load %struct.xfs_dir2_block_tail*, %struct.xfs_dir2_block_tail** %12, align 8
  %91 = getelementptr inbounds %struct.xfs_dir2_block_tail, %struct.xfs_dir2_block_tail* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @be32_to_cpu(i64 %92)
  %94 = sub nsw i32 %93, 1
  %95 = mul nsw i32 %94, 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %21, align 8
  br label %102

99:                                               ; preds = %89
  %100 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %101 = bitcast %struct.xfs_dir2_leaf_entry* %100 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %101, %struct.xfs_dir2_data_unused** %21, align 8
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102, %88
  br label %176

104:                                              ; preds = %9
  %105 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %106 = bitcast %struct.xfs_dir2_leaf_entry* %105 to i32*
  %107 = getelementptr inbounds i32, i32* %106, i64 -1
  store i32* %107, i32** %20, align 8
  %108 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %109 = bitcast %struct.xfs_dir2_data_hdr* %108 to i8*
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @be16_to_cpu(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  %115 = bitcast i8* %114 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %115, %struct.xfs_dir2_data_unused** %22, align 8
  %116 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %22, align 8
  %117 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @be16_to_cpu(i32 %118)
  %120 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %175

122:                                              ; preds = %104
  %123 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %124 = bitcast %struct.xfs_dir2_data_hdr* %123 to i8*
  %125 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %19, align 8
  %126 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %125, i64 0
  %127 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @be16_to_cpu(i32 %128)
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %124, i64 %130
  %132 = bitcast i8* %131 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %132, %struct.xfs_dir2_data_unused** %21, align 8
  %133 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %134 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %22, align 8
  %135 = icmp ne %struct.xfs_dir2_data_unused* %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %122
  %137 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %138 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @be16_to_cpu(i32 %139)
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %21, align 8
  br label %144

144:                                              ; preds = %143, %136
  br label %176

145:                                              ; preds = %122
  %146 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %147 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be16_to_cpu(i32 %148)
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 4
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %145
  %154 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %19, align 8
  %155 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %154, i64 1
  %156 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @be16_to_cpu(i32 %157)
  %159 = load i32, i32* %18, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %11, align 8
  %163 = bitcast %struct.xfs_dir2_data_hdr* %162 to i8*
  %164 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %19, align 8
  %165 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %164, i64 1
  %166 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @be16_to_cpu(i32 %167)
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %163, i64 %169
  %171 = bitcast i8* %170 to %struct.xfs_dir2_data_unused*
  store %struct.xfs_dir2_data_unused* %171, %struct.xfs_dir2_data_unused** %21, align 8
  br label %173

172:                                              ; preds = %153
  store %struct.xfs_dir2_data_unused* null, %struct.xfs_dir2_data_unused** %21, align 8
  br label %173

173:                                              ; preds = %172, %161
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174, %104
  br label %176

176:                                              ; preds = %175, %144, %103, %43
  %177 = load i32*, i32** %20, align 8
  %178 = load i32**, i32*** %14, align 8
  store i32* %177, i32** %178, align 8
  %179 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %21, align 8
  %180 = load %struct.xfs_dir2_data_unused**, %struct.xfs_dir2_data_unused*** %15, align 8
  store %struct.xfs_dir2_data_unused* %179, %struct.xfs_dir2_data_unused** %180, align 8
  %181 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %22, align 8
  %182 = load %struct.xfs_dir2_data_unused**, %struct.xfs_dir2_data_unused*** %16, align 8
  store %struct.xfs_dir2_data_unused* %181, %struct.xfs_dir2_data_unused** %182, align 8
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
