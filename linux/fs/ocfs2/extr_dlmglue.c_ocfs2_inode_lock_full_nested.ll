; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_full_nested.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_full_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res, i64 }

@.str = private unnamed_addr constant [31 x i8] c"inode %llu, take %s META lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EXMODE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PRMODE\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_GETBH = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@DLM_LOCK_EX = common dso_local global i32 0, align 4
@DLM_LOCK_PR = common dso_local global i32 0, align 4
@OCFS2_META_LOCK_NOQUEUE = common dso_local global i32 0, align 4
@DLM_LKF_NOQUEUE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_full_nested(%struct.inode* %0, %struct.buffer_head** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_lock_res*, align 8
  %16 = alloca %struct.ocfs2_super*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.ocfs2_lock_res* null, %struct.ocfs2_lock_res** %15, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %25, i8* %29)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %32 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EROFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %137

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @OCFS2_META_LOCK_GETBH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %48 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %41
  br label %108

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %58 = call i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.ocfs2_lock_res* %62, %struct.ocfs2_lock_res** %15, align 8
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @DLM_LOCK_EX, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @DLM_LOCK_PR, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @OCFS2_META_LOCK_NOQUEUE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @DLM_LKF_NOQUEUE, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %81 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @_RET_IP_, align 4
  %87 = call i32 @__ocfs2_cluster_lock(%struct.ocfs2_super* %80, %struct.ocfs2_lock_res* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  br label %152

99:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %106 = call i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super* %105)
  br label %107

107:                                              ; preds = %104, %99
  br label %108

108:                                              ; preds = %107, %50
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I_NEW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  %116 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %117 = icmp ne %struct.ocfs2_lock_res* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %15, align 8
  %120 = call i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res* %119, i32 0)
  br label %121

121:                                              ; preds = %118, %115
  br label %152

122:                                              ; preds = %108
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @ocfs2_inode_lock_update(%struct.inode* %123, %struct.buffer_head** %17)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @mlog_errno(i32 %133)
  br label %135

135:                                              ; preds = %132, %127
  br label %152

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %40
  %138 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %139 = icmp ne %struct.buffer_head** %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.inode*, %struct.inode** %6, align 8
  %142 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %143 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %144 = call i32 @ocfs2_assign_bh(%struct.inode* %141, %struct.buffer_head** %142, %struct.buffer_head* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @mlog_errno(i32 %148)
  br label %152

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %137
  br label %152

152:                                              ; preds = %151, %147, %135, %121, %98
  %153 = load i32, i32* %11, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %152
  %156 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %157 = icmp ne %struct.buffer_head** %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %159, align 8
  %161 = icmp ne %struct.buffer_head* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %163, align 8
  %165 = call i32 @brelse(%struct.buffer_head* %164)
  %166 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %166, align 8
  br label %167

167:                                              ; preds = %162, %158, %155
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @ocfs2_inode_unlock(%struct.inode* %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %167
  br label %175

175:                                              ; preds = %174, %152
  %176 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %177 = call i32 @brelse(%struct.buffer_head* %176)
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_wait_for_recovery(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_cluster_lock(%struct.ocfs2_super*, %struct.ocfs2_lock_res*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_complete_lock_res_refresh(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @ocfs2_inode_lock_update(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_assign_bh(%struct.inode*, %struct.buffer_head**, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
