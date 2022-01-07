; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr.c_xfs_attr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_da_args = type { i8*, i32, i32, i32, i64, i32 }
%struct.xfs_trans_res = type { i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ATTR_ROOT = common dso_local global i32 0, align 4
@xs_attr_set = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DA_OP_ADDNAME = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_ATTRSET_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4
@XFS_QMOPT_FORCE_RES = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@ATTR_KERNOTIME = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_set(%struct.xfs_inode* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_mount*, align 8
  %13 = alloca %struct.xfs_da_args, align 8
  %14 = alloca %struct.xfs_trans_res, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 0
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @ATTR_ROOT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %28 = load i32, i32* @xs_attr_set, align 4
  %29 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %27, i32 %28)
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 0
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %31, align 8
  %33 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %204

38:                                               ; preds = %5
  %39 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @xfs_attr_args_init(%struct.xfs_da_args* %13, %struct.xfs_inode* %39, i8* %40, i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %6, align 4
  br label %204

47:                                               ; preds = %38
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @XFS_DA_OP_ADDNAME, align 4
  %53 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = call i32 @xfs_attr_calc_size(%struct.xfs_da_args* %13, i32* %17)
  %57 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %59 = call i32 @xfs_qm_dqattach(%struct.xfs_inode* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %6, align 4
  br label %204

64:                                               ; preds = %47
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %66 = call i64 @XFS_IFORK_Q(%struct.xfs_inode* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @XFS_ATTR_SF_ENTSIZE_BYNAME(i32 %70, i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add i64 4, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %18, align 4
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @xfs_bmap_add_attrfork(%struct.xfs_inode* %76, i32 %77, i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %6, align 4
  br label %204

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %87 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %92 = call %struct.TYPE_6__* @M_RES(%struct.xfs_mount* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %95, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %90, %99
  %101 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %14, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @XFS_ATTRSET_LOG_COUNT, align 4
  %103 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %14, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %105 = getelementptr inbounds %struct.xfs_trans_res, %struct.xfs_trans_res* %14, i32 0, i32 0
  store i32 %104, i32* %105, align 8
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %107 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %85
  %112 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  br label %114

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ]
  %116 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %117 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %106, %struct.xfs_trans_res* %14, i32 %108, i32 0, i32 %115, i64* %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %6, align 4
  br label %204

122:                                              ; preds = %114
  %123 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %124 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %125 = call i32 @xfs_ilock(%struct.xfs_inode* %123, i32 %124)
  %126 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %129 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %122
  %134 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  %135 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  %136 = or i32 %134, %135
  br label %139

137:                                              ; preds = %122
  %138 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi i32 [ %136, %133 ], [ %138, %137 ]
  %141 = call i32 @xfs_trans_reserve_quota_nblks(i64 %127, %struct.xfs_inode* %128, i32 %130, i32 0, i32 %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %195

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %149 = call i32 @xfs_trans_ijoin(i64 %147, %struct.xfs_inode* %148, i32 0)
  %150 = call i32 @xfs_attr_set_args(%struct.xfs_da_args* %13)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %195

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %190

159:                                              ; preds = %154
  %160 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %161 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @xfs_trans_set_sync(i64 %168)
  br label %170

170:                                              ; preds = %166, %159
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ATTR_KERNOTIME, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %179 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %180 = call i32 @xfs_trans_ichgtime(i64 %177, %struct.xfs_inode* %178, i32 %179)
  br label %181

181:                                              ; preds = %175, %170
  %182 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %185 = load i32, i32* @XFS_ILOG_CORE, align 4
  %186 = call i32 @xfs_trans_log_inode(i64 %183, %struct.xfs_inode* %184, i32 %185)
  %187 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @xfs_trans_commit(i64 %188)
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %203, %181, %158
  %191 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %192 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %193 = call i32 @xfs_iunlock(%struct.xfs_inode* %191, i32 %192)
  %194 = load i32, i32* %16, align 4
  store i32 %194, i32* %6, align 4
  br label %204

195:                                              ; preds = %153, %144
  %196 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @xfs_trans_cancel(i64 %201)
  br label %203

203:                                              ; preds = %199, %195
  br label %190

204:                                              ; preds = %190, %120, %82, %62, %45, %35
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_attr_args_init(%struct.xfs_da_args*, %struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @xfs_attr_calc_size(%struct.xfs_da_args*, i32*) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_IFORK_Q(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_ATTR_SF_ENTSIZE_BYNAME(i32, i32) #1

declare dso_local i32 @xfs_bmap_add_attrfork(%struct.xfs_inode*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, %struct.xfs_trans_res*, i32, i32, i32, i64*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_reserve_quota_nblks(i64, %struct.xfs_inode*, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_attr_set_args(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_trans_set_sync(i64) #1

declare dso_local i32 @xfs_trans_ichgtime(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i64, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_commit(i64) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
