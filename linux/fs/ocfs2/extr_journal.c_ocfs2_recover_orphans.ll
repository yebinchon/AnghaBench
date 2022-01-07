; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recover_orphans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_recover_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32, %struct.inode*, i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_INODE_DIO_ORPHAN_ENTRY = common dso_local global i32 0, align 4
@OCFS2_DIO_ORPHANED_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INODE_MAYBE_ORPHANED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32, i32)* @ocfs2_recover_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_recover_orphans(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @trace_ocfs2_recover_orphans(i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ocfs2_mark_recovering_orphan_dir(%struct.ocfs2_super* %15, i32 %16)
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ocfs2_queue_orphans(%struct.ocfs2_super* %18, i32 %19, %struct.inode** %8, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ocfs2_clear_recovering_orphan_dir(%struct.ocfs2_super* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  br label %31

31:                                               ; preds = %140, %30
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %34, label %144

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %35)
  store %struct.ocfs2_inode_info* %36, %struct.ocfs2_inode_info** %10, align 8
  %37 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %38 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @trace_ocfs2_recover_orphans_iput(i64 %39)
  %41 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %42 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %41, i32 0, i32 2
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %9, align 8
  %44 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %45 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %44, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %45, align 8
  %46 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %47 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OCFS2_INODE_DIO_ORPHAN_ENTRY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %128

52:                                               ; preds = %34
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @inode_lock(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = call i32 @ocfs2_rw_lock(%struct.inode* %55, i32 1)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %119

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @ocfs2_inode_lock(%struct.inode* %63, %struct.buffer_head** %11, i32 1)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %116

70:                                               ; preds = %62
  %71 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %74, %struct.ocfs2_dinode** %12, align 8
  %75 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @OCFS2_DIO_ORPHANED_FL, align 4
  %79 = call i32 @cpu_to_le32(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %70
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = call i32 @i_size_read(%struct.inode* %85)
  %87 = call i32 @ocfs2_truncate_file(%struct.inode* %83, %struct.buffer_head* %84, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ENOSPC, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %111

99:                                               ; preds = %82
  %100 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %103 = call i32 @ocfs2_del_inode_from_orphan(%struct.ocfs2_super* %100, %struct.inode* %101, %struct.buffer_head* %102, i32 0, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %109

109:                                              ; preds = %106, %99
  br label %110

110:                                              ; preds = %109, %70
  br label %111

111:                                              ; preds = %110, %98
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = call i32 @ocfs2_inode_unlock(%struct.inode* %112, i32 1)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  br label %116

116:                                              ; preds = %111, %67
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i32 @ocfs2_rw_unlock(%struct.inode* %117, i32 1)
  br label %119

119:                                              ; preds = %116, %59
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = call i32 @inode_unlock(%struct.inode* %120)
  %122 = load i32, i32* @OCFS2_INODE_DIO_ORPHAN_ENTRY, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %125 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %140

128:                                              ; preds = %34
  %129 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %130 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %129, i32 0, i32 1
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load i32, i32* @OCFS2_INODE_MAYBE_ORPHANED, align 4
  %133 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %134 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %138 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %137, i32 0, i32 1
  %139 = call i32 @spin_unlock(i32* %138)
  br label %140

140:                                              ; preds = %128, %119
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = call i32 @iput(%struct.inode* %141)
  %143 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %143, %struct.inode** %8, align 8
  br label %31

144:                                              ; preds = %31
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @trace_ocfs2_recover_orphans(i32) #1

declare dso_local i32 @ocfs2_mark_recovering_orphan_dir(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_orphans(%struct.ocfs2_super*, i32, %struct.inode**, i32) #1

declare dso_local i32 @ocfs2_clear_recovering_orphan_dir(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_recover_orphans_iput(i64) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ocfs2_truncate_file(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_del_inode_from_orphan(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
