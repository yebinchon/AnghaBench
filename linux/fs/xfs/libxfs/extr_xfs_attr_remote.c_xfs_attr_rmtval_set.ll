; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, %struct.xfs_inode*, i64, i32, i32, i32* }
%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }
%struct.xfs_buf = type { i32* }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_BMAPI_ATTRFORK = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@xfs_attr3_rmt_buf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_rmtval_set(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_bmbt_irec, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.xfs_buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %18 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %18, i32 0, i32 2
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %4, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %21, i32 0, i32 1
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %22, align 8
  store %struct.xfs_mount* %23, %struct.xfs_mount** %5, align 8
  store i64 0, i64* %8, align 8
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %28 = call i32 @trace_xfs_attr_rmtval_set(%struct.xfs_da_args* %27)
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %30 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xfs_attr3_rmt_blocks(%struct.xfs_mount* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %35 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %38 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %37, i32 0, i32 2
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @XFS_ATTR_FORK, align 4
  %42 = call i32 @xfs_bmap_first_unused(i32 %36, %struct.xfs_inode* %39, i32 %40, i64* %8, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %2, align 4
  br label %217

47:                                               ; preds = %1
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %53 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %117, %47
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  %58 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %59 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %65 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @xfs_bmapi_write(i32 %60, %struct.xfs_inode* %61, i64 %62, i32 %63, i32 %64, i32 %67, %struct.xfs_bmbt_irec* %6, i32* %12)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %2, align 4
  br label %217

73:                                               ; preds = %57
  %74 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %75 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %74, i32 0, i32 4
  %76 = call i32 @xfs_defer_finish(i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %2, align 4
  br label %217

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HOLESTARTBLOCK, align 8
  %94 = icmp ne i64 %92, %93
  br label %95

95:                                               ; preds = %90, %81
  %96 = phi i1 [ false, %81 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %110 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %109, i32 0, i32 4
  %111 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %112 = call i32 @xfs_trans_roll_inode(i32* %110, %struct.xfs_inode* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %95
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %2, align 4
  br label %217

117:                                              ; preds = %95
  br label %54

118:                                              ; preds = %54
  %119 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %7, align 8
  %122 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %123 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %126 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %201, %118
  %129 = load i32, i32* %11, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %212

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = icmp sgt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @ASSERT(i32 %134)
  store i32 1, i32* %12, align 4
  %136 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %140 = call i32 @xfs_bmapi_read(%struct.xfs_inode* %136, i64 %137, i32 %138, %struct.xfs_bmbt_irec* %6, i32* %12, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %2, align 4
  br label %217

145:                                              ; preds = %131
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 1
  %148 = zext i1 %147 to i32
  %149 = call i32 @ASSERT(i32 %148)
  %150 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @HOLESTARTBLOCK, align 8
  %158 = icmp ne i64 %156, %157
  br label %159

159:                                              ; preds = %154, %145
  %160 = phi i1 [ false, %145 ], [ %158, %154 ]
  %161 = zext i1 %160 to i32
  %162 = call i32 @ASSERT(i32 %161)
  %163 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %164 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %163, i64 %165)
  store i32 %166, i32* %16, align 4
  %167 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %168 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %167, i64 %169)
  store i32 %170, i32* %17, align 4
  %171 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %172 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call %struct.xfs_buf* @xfs_buf_get(i32 %173, i32 %174, i32 %175)
  store %struct.xfs_buf* %176, %struct.xfs_buf** %15, align 8
  %177 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %178 = icmp ne %struct.xfs_buf* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %159
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %217

182:                                              ; preds = %159
  %183 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %184 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %183, i32 0, i32 0
  store i32* @xfs_attr3_rmt_buf_ops, i32** %184, align 8
  %185 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %186 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %187 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %188 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %187, i32 0, i32 2
  %189 = load %struct.xfs_inode*, %struct.xfs_inode** %188, align 8
  %190 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @xfs_attr_rmtval_copyin(%struct.xfs_mount* %185, %struct.xfs_buf* %186, i32 %191, i32* %14, i32* %11, i32** %9)
  %193 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %194 = call i32 @xfs_bwrite(%struct.xfs_buf* %193)
  store i32 %194, i32* %13, align 4
  %195 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %196 = call i32 @xfs_buf_relse(%struct.xfs_buf* %195)
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %182
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %2, align 4
  br label %217

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %7, align 8
  %205 = add nsw i64 %204, %203
  store i64 %205, i64* %7, align 8
  %206 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %10, align 4
  br label %128

212:                                              ; preds = %128
  %213 = load i32, i32* %11, align 4
  %214 = icmp eq i32 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @ASSERT(i32 %215)
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %212, %199, %179, %143, %115, %79, %71, %45
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @trace_xfs_attr_rmtval_set(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_rmt_blocks(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_bmap_first_unused(i32, %struct.xfs_inode*, i32, i64*, i32) #1

declare dso_local i32 @xfs_bmapi_write(i32, %struct.xfs_inode*, i64, i32, i32, i32, %struct.xfs_bmbt_irec*, i32*) #1

declare dso_local i32 @xfs_defer_finish(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_roll_inode(i32*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_bmapi_read(%struct.xfs_inode*, i64, i32, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i64) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i64) #1

declare dso_local %struct.xfs_buf* @xfs_buf_get(i32, i32, i32) #1

declare dso_local i32 @xfs_attr_rmtval_copyin(%struct.xfs_mount*, %struct.xfs_buf*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @xfs_bwrite(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
