; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c___xfs_trans_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c___xfs_trans_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, i32, i32*, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_TRANS_SYNC = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_SB_DIRTY = common dso_local global i32 0, align 4
@PF_MEMALLOC_NOFS = common dso_local global i32 0, align 4
@XFS_LOG_SYNC = common dso_local global i32 0, align 4
@xs_trans_sync = common dso_local global i32 0, align 4
@xs_trans_async = common dso_local global i32 0, align 4
@xs_trans_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, i32)* @__xfs_trans_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_trans_commit(%struct.xfs_trans* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %10, i32 0, i32 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XFS_TRANS_SYNC, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %19 = load i32, i32* @_RET_IP_, align 4
  %20 = call i32 @trace_xfs_trans_commit(%struct.xfs_trans* %18, i32 %19)
  %21 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %21, i32 0, i32 3
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %25, %2
  %34 = phi i1 [ false, %2 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON_ONCE(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = call i32 @xfs_defer_finish_noroll(%struct.xfs_trans** %4)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %112

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %39, %33
  %53 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %54 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %112

60:                                               ; preds = %52
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %62 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %112

67:                                               ; preds = %60
  %68 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %75 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %82 = call i32 @xfs_trans_apply_sb_deltas(%struct.xfs_trans* %81)
  br label %83

83:                                               ; preds = %80, %67
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %85 = call i32 @xfs_trans_apply_dquot_deltas(%struct.xfs_trans* %84)
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %87 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @xfs_log_commit_cil(%struct.xfs_mount* %86, %struct.xfs_trans* %87, i32* %7, i32 %88)
  %90 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %91 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %90, i32 0, i32 1
  %92 = load i32, i32* @PF_MEMALLOC_NOFS, align 4
  %93 = call i32 @current_restore_flags_nested(i32* %91, i32 %92)
  %94 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %95 = call i32 @xfs_trans_free(%struct.xfs_trans* %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %83
  %99 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @XFS_LOG_SYNC, align 4
  %102 = call i32 @xfs_log_force_lsn(%struct.xfs_mount* %99, i32 %100, i32 %101, i32* null)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %104 = load i32, i32* @xs_trans_sync, align 4
  %105 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %103, i32 %104)
  br label %110

106:                                              ; preds = %83
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %108 = load i32, i32* @xs_trans_async, align 4
  %109 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %98
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %157

112:                                              ; preds = %64, %59, %50
  %113 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %114 = call i32 @xfs_trans_unreserve_and_mod_sb(%struct.xfs_trans* %113)
  %115 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %116 = call i32 @xfs_trans_unreserve_and_mod_dquots(%struct.xfs_trans* %115)
  %117 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %118 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %112
  %122 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %123 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %124 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @xfs_log_done(%struct.xfs_mount* %122, i32* %125, i32* null, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %133, %130, %121
  %137 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %138 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %136, %112
  %140 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %141 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %140, i32 0, i32 1
  %142 = load i32, i32* @PF_MEMALLOC_NOFS, align 4
  %143 = call i32 @current_restore_flags_nested(i32* %141, i32 %142)
  %144 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i32 @xfs_trans_free_items(%struct.xfs_trans* %144, i32 %149)
  %151 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %152 = call i32 @xfs_trans_free(%struct.xfs_trans* %151)
  %153 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %154 = load i32, i32* @xs_trans_empty, align 4
  %155 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %139, %110
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @trace_xfs_trans_commit(%struct.xfs_trans*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xfs_defer_finish_noroll(%struct.xfs_trans**) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_apply_sb_deltas(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_apply_dquot_deltas(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_log_commit_cil(%struct.xfs_mount*, %struct.xfs_trans*, i32*, i32) #1

declare dso_local i32 @current_restore_flags_nested(i32*, i32) #1

declare dso_local i32 @xfs_trans_free(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_log_force_lsn(%struct.xfs_mount*, i32, i32, i32*) #1

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_trans_unreserve_and_mod_sb(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_unreserve_and_mod_dquots(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_log_done(%struct.xfs_mount*, i32*, i32*, i32) #1

declare dso_local i32 @xfs_trans_free_items(%struct.xfs_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
