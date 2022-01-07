; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_group_extend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_group_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_group_desc = type { i32, i32 }
%struct.ocfs2_super = type { i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"The disk is too old and small. Force to do offline resize.\00", align 1
@OCFS2_GROUP_EXTEND_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_group_extend(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_group_desc*, align 8
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %11, align 8
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %12, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %13, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %22 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %26 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EROFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %196

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %196

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %196

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %44 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %45 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %46 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %43, i32 %44, i32 %45)
  store %struct.inode* %46, %struct.inode** %10, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %194

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = call i32 @inode_lock(%struct.inode* %55)
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @ocfs2_inode_lock(%struct.inode* %57, %struct.buffer_head** %8, i32 1)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %189

64:                                               ; preds = %54
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %68, %struct.ocfs2_dinode** %11, align 8
  %69 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %70 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %76 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %82 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ocfs2_group_bitmap_size(i32 %83, i32 0, i32 %86)
  %88 = mul nsw i32 %87, 8
  %89 = icmp ne i32 %80, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %64
  %91 = load i32, i32* @ML_ERROR, align 4
  %92 = call i32 @mlog(i32 %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %182

95:                                               ; preds = %64
  %96 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %97 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  store i64 %99, i64* %15, align 8
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = load i64, i64* %15, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @ocfs2_which_cluster_group(%struct.inode* %100, i64 %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.inode*, %struct.inode** %10, align 8
  %105 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %104, %struct.ocfs2_dinode* %105, i32 %106, %struct.buffer_head** %9)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mlog_errno(i32 %111)
  br label %182

113:                                              ; preds = %95
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %117, %struct.ocfs2_group_desc** %12, align 8
  %118 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %119 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %12, align 8
  %125 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = sdiv i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %129, %130
  %132 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %133 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le16_to_cpu(i32 %136)
  %138 = icmp sgt i32 %131, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %113
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %6, align 4
  br label %182

142:                                              ; preds = %113
  %143 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %12, align 8
  %144 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @le64_to_cpu(i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @trace_ocfs2_group_extend(i64 %146, i32 %147)
  %149 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %150 = load i32, i32* @OCFS2_GROUP_EXTEND_CREDITS, align 4
  %151 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %149, i32 %150)
  store i32* %151, i32** %7, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = call i64 @IS_ERR(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %142
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @PTR_ERR(i32* %156)
  %158 = call i32 @mlog_errno(i32 %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %182

161:                                              ; preds = %142
  %162 = load i32*, i32** %7, align 8
  %163 = load %struct.inode*, %struct.inode** %10, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %165 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %166 = load i64, i64* %15, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @ocfs2_update_last_group_and_inode(i32* %162, %struct.inode* %163, %struct.buffer_head* %164, %struct.buffer_head* %165, i64 %166, i32 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @mlog_errno(i32 %172)
  br label %178

174:                                              ; preds = %161
  %175 = load %struct.inode*, %struct.inode** %10, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @ocfs2_update_super_and_backups(%struct.inode* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %179, i32* %180)
  br label %182

182:                                              ; preds = %178, %155, %139, %110, %90
  %183 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %184 = call i32 @brelse(%struct.buffer_head* %183)
  %185 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %186 = call i32 @brelse(%struct.buffer_head* %185)
  %187 = load %struct.inode*, %struct.inode** %10, align 8
  %188 = call i32 @ocfs2_inode_unlock(%struct.inode* %187, i32 1)
  br label %189

189:                                              ; preds = %182, %61
  %190 = load %struct.inode*, %struct.inode** %10, align 8
  %191 = call i32 @inode_unlock(%struct.inode* %190)
  %192 = load %struct.inode*, %struct.inode** %10, align 8
  %193 = call i32 @iput(%struct.inode* %192)
  br label %194

194:                                              ; preds = %189, %49
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %40, %34, %28
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_group_bitmap_size(i32, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_cluster_group(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @trace_ocfs2_group_extend(i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_update_last_group_and_inode(i32*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i64, i32) #1

declare dso_local i32 @ocfs2_update_super_and_backups(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
