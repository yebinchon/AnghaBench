; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_inode_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_inode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.list_head = type { i32 }
%struct.xfs_buf = type { i32, i32, i32* }
%struct.xfs_dinode = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@XBF_UNMAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xfs_inode_buf_ops = common dso_local global i32 0, align 4
@XFS_DINODE_MAGIC = common dso_local global i32 0, align 4
@NULLAGINO = common dso_local global i32 0, align 4
@XBF_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ialloc_inode_init(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.list_head* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xfs_buf*, align 8
  %19 = alloca %struct.xfs_dinode*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %10, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %11, align 8
  store %struct.list_head* %2, %struct.list_head** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %25, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %30 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %28, %32
  store i32 %33, i32* %20, align 4
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 1
  %36 = call i64 @xfs_sb_version_hascrc(%struct.TYPE_3__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %8
  store i32 3, i32* %21, align 4
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @XFS_AGB_TO_AGINO(%struct.xfs_mount* %41, i32 %42)
  %44 = call i64 @XFS_AGINO_TO_INO(%struct.xfs_mount* %39, i32 %40, i32 %43)
  store i64 %44, i64* %25, align 8
  %45 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %46 = icmp ne %struct.xfs_trans* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %53 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @xfs_icreate_log(%struct.xfs_trans* %48, i32 %49, i32 %50, i32 %51, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %38
  br label %61

60:                                               ; preds = %8
  store i32 2, i32* %21, align 4
  br label %61

61:                                               ; preds = %60, %59
  store i32 0, i32* %23, align 4
  br label %62

62:                                               ; preds = %204, %61
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %207

66:                                               ; preds = %62
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %72 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = add nsw i32 %69, %75
  %77 = call i32 @XFS_AGB_TO_DADDR(%struct.xfs_mount* %67, i32 %68, i32 %76)
  store i32 %77, i32* %24, align 4
  %78 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %80 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %84 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %87 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %85, %89
  %91 = load i32, i32* @XBF_UNMAPPED, align 4
  %92 = call %struct.xfs_buf* @xfs_trans_get_buf(%struct.xfs_trans* %78, i32 %81, i32 %82, i32 %90, i32 %91)
  store %struct.xfs_buf* %92, %struct.xfs_buf** %18, align 8
  %93 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %94 = icmp ne %struct.xfs_buf* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %66
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %208

98:                                               ; preds = %66
  %99 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %100 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %99, i32 0, i32 2
  store i32* @xfs_inode_buf_ops, i32** %100, align 8
  %101 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %102 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %103 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @BBTOB(i32 %104)
  %106 = call i32 @xfs_buf_zero(%struct.xfs_buf* %101, i32 0, i32 %105)
  store i32 0, i32* %22, align 4
  br label %107

107:                                              ; preds = %175, %98
  %108 = load i32, i32* %22, align 4
  %109 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %110 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %109)
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %107
  %115 = load i32, i32* %22, align 4
  %116 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %117 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %115, %119
  store i32 %120, i32* %26, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i64 @xfs_dinode_size(i32 %121)
  store i64 %122, i64* %27, align 8
  %123 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %124 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %125 = load i32, i32* %22, align 4
  %126 = call %struct.xfs_dinode* @xfs_make_iptr(%struct.xfs_mount* %123, %struct.xfs_buf* %124, i32 %125)
  store %struct.xfs_dinode* %126, %struct.xfs_dinode** %19, align 8
  %127 = load i32, i32* @XFS_DINODE_MAGIC, align 4
  %128 = call i32 @cpu_to_be16(i32 %127)
  %129 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %130 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %129, i32 0, i32 5
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %133 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %17, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %137 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @NULLAGINO, align 4
  %139 = call i8* @cpu_to_be32(i32 %138)
  %140 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %141 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %21, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %160

144:                                              ; preds = %114
  %145 = load i64, i64* %25, align 8
  %146 = call i32 @cpu_to_be64(i64 %145)
  %147 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %148 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i64, i64* %25, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %25, align 8
  %151 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %152 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %151, i32 0, i32 1
  %153 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %154 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = call i32 @uuid_copy(i32* %152, i32* %155)
  %157 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %158 = load %struct.xfs_dinode*, %struct.xfs_dinode** %19, align 8
  %159 = call i32 @xfs_dinode_calc_crc(%struct.xfs_mount* %157, %struct.xfs_dinode* %158)
  br label %174

160:                                              ; preds = %114
  %161 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %162 = icmp ne %struct.xfs_trans* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %165 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %166 = load i32, i32* %26, align 4
  %167 = load i32, i32* %26, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %27, align 8
  %170 = add nsw i64 %168, %169
  %171 = sub nsw i64 %170, 1
  %172 = call i32 @xfs_trans_log_buf(%struct.xfs_trans* %164, %struct.xfs_buf* %165, i32 %166, i64 %171)
  br label %173

173:                                              ; preds = %163, %160
  br label %174

174:                                              ; preds = %173, %144
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %22, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %22, align 4
  br label %107

178:                                              ; preds = %107
  %179 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %180 = icmp ne %struct.xfs_trans* %179, null
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %183 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %184 = call i32 @xfs_trans_inode_alloc_buf(%struct.xfs_trans* %182, %struct.xfs_buf* %183)
  %185 = load i32, i32* %21, align 4
  %186 = icmp eq i32 %185, 3
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %189 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %190 = call i32 @xfs_trans_ordered_buf(%struct.xfs_trans* %188, %struct.xfs_buf* %189)
  br label %191

191:                                              ; preds = %187, %181
  br label %203

192:                                              ; preds = %178
  %193 = load i32, i32* @XBF_DONE, align 4
  %194 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %195 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %199 = load %struct.list_head*, %struct.list_head** %12, align 8
  %200 = call i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %198, %struct.list_head* %199)
  %201 = load %struct.xfs_buf*, %struct.xfs_buf** %18, align 8
  %202 = call i32 @xfs_buf_relse(%struct.xfs_buf* %201)
  br label %203

203:                                              ; preds = %192, %191
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %23, align 4
  br label %62

207:                                              ; preds = %62
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %207, %95
  %209 = load i32, i32* %9, align 4
  ret i32 %209
}

declare dso_local %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.TYPE_3__*) #1

declare dso_local i64 @XFS_AGINO_TO_INO(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @XFS_AGB_TO_AGINO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_icreate_log(%struct.xfs_trans*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_AGB_TO_DADDR(%struct.xfs_mount*, i32, i32) #1

declare dso_local %struct.xfs_buf* @xfs_trans_get_buf(%struct.xfs_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_buf_zero(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i64 @xfs_dinode_size(i32) #1

declare dso_local %struct.xfs_dinode* @xfs_make_iptr(%struct.xfs_mount*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @xfs_dinode_calc_crc(%struct.xfs_mount*, %struct.xfs_dinode*) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.xfs_trans*, %struct.xfs_buf*, i32, i64) #1

declare dso_local i32 @xfs_trans_inode_alloc_buf(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_ordered_buf(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf*, %struct.list_head*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
