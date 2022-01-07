; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_name = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_ICHGTIME_MOD = common dso_local global i32 0, align 4
@XFS_ICHGTIME_CHG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_remove(%struct.TYPE_27__* %0, %struct.xfs_name* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.xfs_name*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.xfs_name* %1, %struct.xfs_name** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %17 = call %struct.TYPE_25__* @VFS_I(%struct.TYPE_27__* %16)
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @S_ISDIR(i32 %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = load %struct.xfs_name*, %struct.xfs_name** %6, align 8
  %23 = call i32 @trace_xfs_remove(%struct.TYPE_27__* %21, %struct.xfs_name* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %25 = call i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_24__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %195

30:                                               ; preds = %3
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %32 = call i32 @xfs_qm_dqattach(%struct.TYPE_27__* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %193

36:                                               ; preds = %30
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %38 = call i32 @xfs_qm_dqattach(%struct.TYPE_27__* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %193

42:                                               ; preds = %36
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = call i64 @XFS_REMOVE_SPACE_RES(%struct.TYPE_24__* %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %47 = call %struct.TYPE_26__* @M_RES(%struct.TYPE_24__* %46)
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @xfs_trans_alloc(%struct.TYPE_24__* %45, i32* %48, i64 %49, i32 0, i32 0, i32** %9)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ENOSPC, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %58 = call %struct.TYPE_26__* @M_RES(%struct.TYPE_24__* %57)
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = call i32 @xfs_trans_alloc(%struct.TYPE_24__* %56, i32* %59, i64 0, i32 0, i32 0, i32** %9)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %42
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  br label %193

71:                                               ; preds = %61
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %73 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %75 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %76 = call i32 @xfs_lock_two_inodes(%struct.TYPE_27__* %72, i32 %73, %struct.TYPE_27__* %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %79 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %80 = call i32 @xfs_trans_ijoin(i32* %77, %struct.TYPE_27__* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %84 = call i32 @xfs_trans_ijoin(i32* %81, %struct.TYPE_27__* %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %71
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %89 = call %struct.TYPE_25__* @VFS_I(%struct.TYPE_27__* %88)
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 2
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %96 = call %struct.TYPE_25__* @VFS_I(%struct.TYPE_27__* %95)
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 2
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load i32, i32* @ENOTEMPTY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %190

103:                                              ; preds = %87
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %105 = call i32 @xfs_dir_isempty(%struct.TYPE_27__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @ENOTEMPTY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %11, align 4
  br label %190

110:                                              ; preds = %103
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = call i32 @xfs_droplink(i32* %111, %struct.TYPE_27__* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %190

117:                                              ; preds = %110
  %118 = load i32*, i32** %9, align 8
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %120 = call i32 @xfs_droplink(i32* %118, %struct.TYPE_27__* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %190

124:                                              ; preds = %117
  br label %130

125:                                              ; preds = %71
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %128 = load i32, i32* @XFS_ILOG_CORE, align 4
  %129 = call i32 @xfs_trans_log_inode(i32* %126, %struct.TYPE_27__* %127, i32 %128)
  br label %130

130:                                              ; preds = %125, %124
  %131 = load i32*, i32** %9, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = load i32, i32* @XFS_ICHGTIME_MOD, align 4
  %134 = load i32, i32* @XFS_ICHGTIME_CHG, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @xfs_trans_ichgtime(i32* %131, %struct.TYPE_27__* %132, i32 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %139 = call i32 @xfs_droplink(i32* %137, %struct.TYPE_27__* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %190

143:                                              ; preds = %130
  %144 = load i32*, i32** %9, align 8
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %146 = load %struct.xfs_name*, %struct.xfs_name** %6, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @xfs_dir_removename(i32* %144, %struct.TYPE_27__* %145, %struct.xfs_name* %146, i32 %149, i64 %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %143
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @ENOENT, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp ne i32 %155, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @ASSERT(i32 %159)
  br label %190

161:                                              ; preds = %143
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %166 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %161
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @xfs_trans_set_sync(i32* %171)
  br label %173

173:                                              ; preds = %170, %161
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @xfs_trans_commit(i32* %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %193

179:                                              ; preds = %173
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %184 = call i64 @xfs_inode_is_filestream(%struct.TYPE_27__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %188 = call i32 @xfs_filestream_deassociate(%struct.TYPE_27__* %187)
  br label %189

189:                                              ; preds = %186, %182, %179
  store i32 0, i32* %4, align 4
  br label %195

190:                                              ; preds = %154, %142, %123, %116, %107, %100
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @xfs_trans_cancel(i32* %191)
  br label %193

193:                                              ; preds = %190, %178, %64, %41, %35
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %193, %189, %27
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_25__* @VFS_I(%struct.TYPE_27__*) #1

declare dso_local i32 @trace_xfs_remove(%struct.TYPE_27__*, %struct.xfs_name*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_27__*) #1

declare dso_local i64 @XFS_REMOVE_SPACE_RES(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_trans_alloc(%struct.TYPE_24__*, i32*, i64, i32, i32, i32**) #1

declare dso_local %struct.TYPE_26__* @M_RES(%struct.TYPE_24__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_lock_two_inodes(%struct.TYPE_27__*, i32, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @xfs_dir_isempty(%struct.TYPE_27__*) #1

declare dso_local i32 @xfs_droplink(i32*, %struct.TYPE_27__*) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @xfs_trans_ichgtime(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @xfs_dir_removename(i32*, %struct.TYPE_27__*, %struct.xfs_name*, i32, i64) #1

declare dso_local i32 @xfs_trans_set_sync(i32*) #1

declare dso_local i32 @xfs_trans_commit(i32*) #1

declare dso_local i64 @xfs_inode_is_filestream(%struct.TYPE_27__*) #1

declare dso_local i32 @xfs_filestream_deassociate(%struct.TYPE_27__*) #1

declare dso_local i32 @xfs_trans_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
