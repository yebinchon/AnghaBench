; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_find_freeblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_find_freeblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.xfs_trans*, %struct.xfs_inode* }
%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_free*)* }
%struct.xfs_dir3_icfree_hdr = type { i32, i64 }
%struct.xfs_dir2_free = type { i32 }
%struct.xfs_da_state_blk = type { i32, i64, %struct.xfs_buf* }
%struct.xfs_buf = type { %struct.xfs_dir2_free* }

@NULLDATAOFF = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_FREE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_da_args*, %struct.xfs_da_state_blk*, i64*, %struct.xfs_buf**, i32*, i32)* @xfs_dir2_node_find_freeblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_node_find_freeblk(%struct.xfs_da_args* %0, %struct.xfs_da_state_blk* %1, i64* %2, %struct.xfs_buf** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_da_args*, align 8
  %9 = alloca %struct.xfs_da_state_blk*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.xfs_buf**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_dir3_icfree_hdr, align 8
  %15 = alloca %struct.xfs_dir2_free*, align 8
  %16 = alloca %struct.xfs_inode*, align 8
  %17 = alloca %struct.xfs_trans*, align 8
  %18 = alloca %struct.xfs_buf*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %8, align 8
  store %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk** %9, align 8
  store i64* %2, i64** %10, align 8
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.xfs_dir2_free* null, %struct.xfs_dir2_free** %15, align 8
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %8, align 8
  %29 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %28, i32 0, i32 2
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %29, align 8
  store %struct.xfs_inode* %30, %struct.xfs_inode** %16, align 8
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %8, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 1
  %33 = load %struct.xfs_trans*, %struct.xfs_trans** %32, align 8
  store %struct.xfs_trans* %33, %struct.xfs_trans** %17, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %18, align 8
  store i64 -1, i64* %21, align 8
  store i64 -1, i64* %22, align 8
  store i32* null, i32** %25, align 8
  store i32 0, i32* %26, align 4
  %34 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %9, align 8
  %35 = icmp ne %struct.xfs_da_state_blk* %34, null
  br i1 %35, label %36, label %103

36:                                               ; preds = %6
  %37 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %9, align 8
  %38 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %37, i32 0, i32 2
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %38, align 8
  store %struct.xfs_buf* %39, %struct.xfs_buf** %18, align 8
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 0
  %42 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %41, align 8
  store %struct.xfs_dir2_free* %42, %struct.xfs_dir2_free** %15, align 8
  %43 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %9, align 8
  %44 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %26, align 4
  %46 = load i32, i32* %26, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %36
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %50 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32* (%struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_free*)** %52, align 8
  %54 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %15, align 8
  %55 = call i32* %53(%struct.xfs_dir2_free* %54)
  store i32* %55, i32** %25, align 8
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %57 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)** %59, align 8
  %61 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %15, align 8
  %62 = call i32 %60(%struct.xfs_dir3_icfree_hdr* %14, %struct.xfs_dir2_free* %61)
  %63 = load i32, i32* %26, align 4
  %64 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32*, i32** %25, align 8
  %70 = load i32, i32* %26, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be16_to_cpu(i32 %73)
  %75 = load i32, i32* @NULLDATAOFF, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i32*, i32** %25, align 8
  %80 = load i32, i32* %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be16_to_cpu(i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp sge i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %14, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %26, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  store i64 %93, i64* %22, align 8
  br label %211

94:                                               ; preds = %36
  %95 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %9, align 8
  %96 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %21, align 8
  %98 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %99 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %100 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %98, %struct.xfs_buf* %99)
  store %struct.xfs_buf* null, %struct.xfs_buf** %18, align 8
  %101 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %9, align 8
  %102 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %101, i32 0, i32 2
  store %struct.xfs_buf* null, %struct.xfs_buf** %102, align 8
  br label %103

103:                                              ; preds = %94, %6
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %105 = load i32, i32* @XFS_DATA_FORK, align 4
  %106 = call i32 @xfs_bmap_last_offset(%struct.xfs_inode* %104, i64* %24, i32 %105)
  store i32 %106, i32* %27, align 4
  %107 = load i32, i32* %27, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %27, align 4
  store i32 %110, i32* %7, align 4
  br label %218

111:                                              ; preds = %103
  %112 = load %struct.xfs_da_args*, %struct.xfs_da_args** %8, align 8
  %113 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* %24, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @xfs_dir2_da_to_db(i32 %114, i32 %116)
  store i64 %117, i64* %20, align 8
  %118 = load %struct.xfs_da_args*, %struct.xfs_da_args** %8, align 8
  %119 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @XFS_DIR2_FREE_OFFSET, align 4
  %122 = call i64 @xfs_dir2_byte_to_db(i32 %120, i32 %121)
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %20, align 8
  %124 = sub nsw i64 %123, 1
  store i64 %124, i64* %23, align 8
  br label %125

125:                                              ; preds = %207, %111
  %126 = load i64, i64* %23, align 8
  %127 = load i64, i64* %19, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %210

129:                                              ; preds = %125
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %21, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %207

134:                                              ; preds = %129
  %135 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %136 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %137 = load %struct.xfs_da_args*, %struct.xfs_da_args** %8, align 8
  %138 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i32 @xfs_dir2_db_to_da(i32 %139, i64 %140)
  %142 = call i32 @xfs_dir2_free_try_read(%struct.xfs_trans* %135, %struct.xfs_inode* %136, i32 %141, %struct.xfs_buf** %18)
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %27, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* %27, align 4
  store i32 %146, i32* %7, align 4
  br label %218

147:                                              ; preds = %134
  %148 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %149 = icmp ne %struct.xfs_buf* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %207

151:                                              ; preds = %147
  %152 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %153 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %152, i32 0, i32 0
  %154 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %153, align 8
  store %struct.xfs_dir2_free* %154, %struct.xfs_dir2_free** %15, align 8
  %155 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %156 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32* (%struct.xfs_dir2_free*)*, i32* (%struct.xfs_dir2_free*)** %158, align 8
  %160 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %15, align 8
  %161 = call i32* %159(%struct.xfs_dir2_free* %160)
  store i32* %161, i32** %25, align 8
  %162 = load %struct.xfs_inode*, %struct.xfs_inode** %16, align 8
  %163 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)*, i32 (%struct.xfs_dir3_icfree_hdr*, %struct.xfs_dir2_free*)** %165, align 8
  %167 = load %struct.xfs_dir2_free*, %struct.xfs_dir2_free** %15, align 8
  %168 = call i32 %166(%struct.xfs_dir3_icfree_hdr* %14, %struct.xfs_dir2_free* %167)
  %169 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %14, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %26, align 4
  br label %172

172:                                              ; preds = %200, %151
  %173 = load i32, i32* %26, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %203

175:                                              ; preds = %172
  %176 = load i32*, i32** %25, align 8
  %177 = load i32, i32* %26, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @be16_to_cpu(i32 %180)
  %182 = load i32, i32* @NULLDATAOFF, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %199

184:                                              ; preds = %175
  %185 = load i32*, i32** %25, align 8
  %186 = load i32, i32* %26, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @be16_to_cpu(i32 %189)
  %191 = load i32, i32* %13, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.xfs_dir3_icfree_hdr, %struct.xfs_dir3_icfree_hdr* %14, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %26, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  store i64 %198, i64* %22, align 8
  br label %211

199:                                              ; preds = %184, %175
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %26, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %26, align 4
  br label %172

203:                                              ; preds = %172
  %204 = load %struct.xfs_trans*, %struct.xfs_trans** %17, align 8
  %205 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %206 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %204, %struct.xfs_buf* %205)
  br label %207

207:                                              ; preds = %203, %150, %133
  %208 = load i64, i64* %23, align 8
  %209 = add nsw i64 %208, -1
  store i64 %209, i64* %23, align 8
  br label %125

210:                                              ; preds = %125
  br label %211

211:                                              ; preds = %210, %193, %48
  %212 = load i64, i64* %22, align 8
  %213 = load i64*, i64** %10, align 8
  store i64 %212, i64* %213, align 8
  %214 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %215 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  store %struct.xfs_buf* %214, %struct.xfs_buf** %215, align 8
  %216 = load i32, i32* %26, align 4
  %217 = load i32*, i32** %12, align 8
  store i32 %216, i32* %217, align 4
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %211, %145, %109
  %219 = load i32, i32* %7, align 4
  ret i32 %219
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_bmap_last_offset(%struct.xfs_inode*, i64*, i32) #1

declare dso_local i64 @xfs_dir2_da_to_db(i32, i32) #1

declare dso_local i64 @xfs_dir2_byte_to_db(i32, i32) #1

declare dso_local i32 @xfs_dir2_free_try_read(%struct.xfs_trans*, %struct.xfs_inode*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
