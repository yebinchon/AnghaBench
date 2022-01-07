; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_wipe_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_wipe_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INODE_SKIP_ORPHAN_DIR = common dso_local global i32 0, align 4
@ORPHAN_DIR_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*)* @ocfs2_wipe_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_wipe_inode(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 -1, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ocfs2_super* @OCFS2_SB(i32 %14)
  store %struct.ocfs2_super* %15, %struct.ocfs2_super** %10, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %19, %struct.ocfs2_dinode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %2
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ocfs2_check_orphan_recovery_state(%struct.ocfs2_super* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %144

39:                                               ; preds = %27
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %41 = load i32, i32* @ORPHAN_DIR_SYSTEM_INODE, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %40, i32 %41, i32 %42)
  store %struct.inode* %43, %struct.inode** %8, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = icmp ne %struct.inode* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %137

51:                                               ; preds = %39
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @inode_lock(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @ocfs2_inode_lock(%struct.inode* %54, %struct.buffer_head** %9, i32 1)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @inode_unlock(%struct.inode* %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %137

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %66 = load %struct.inode*, %struct.inode** %4, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %68 = call i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super* %65, %struct.inode* %66, %struct.buffer_head* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %120

74:                                               ; preds = %64
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %83 = call i32 @ocfs2_dx_dir_truncate(%struct.inode* %81, %struct.buffer_head* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %120

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %93 = call i32 @ocfs2_xattr_remove(%struct.inode* %91, %struct.buffer_head* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @mlog_errno(i32 %97)
  br label %120

99:                                               ; preds = %90
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %102 = call i32 @ocfs2_remove_refcount_tree(%struct.inode* %100, %struct.buffer_head* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %120

108:                                              ; preds = %99
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @ocfs2_remove_inode(%struct.inode* %109, %struct.buffer_head* %110, %struct.inode* %111, %struct.buffer_head* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @mlog_errno(i32 %117)
  br label %119

119:                                              ; preds = %116, %108
  br label %120

120:                                              ; preds = %119, %105, %96, %86, %71
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @OCFS2_INODE_SKIP_ORPHAN_DIR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %144

130:                                              ; preds = %120
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = call i32 @ocfs2_inode_unlock(%struct.inode* %131, i32 1)
  %133 = load %struct.inode*, %struct.inode** %8, align 8
  %134 = call i32 @inode_unlock(%struct.inode* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  br label %137

137:                                              ; preds = %130, %58, %46
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = call i32 @iput(%struct.inode* %138)
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @ocfs2_signal_wipe_completion(%struct.ocfs2_super* %140, i32 %141)
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %128, %37
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_check_orphan_recovery_state(%struct.ocfs2_super*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @ocfs2_truncate_for_delete(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ocfs2_dx_dir_truncate(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_remove(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_remove_inode(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_signal_wipe_completion(%struct.ocfs2_super*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
