; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_find_victim_alloc_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_move_extents.c_ocfs2_find_victim_alloc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_chain_list = type { %struct.ocfs2_chain_rec*, i32 }
%struct.ocfs2_chain_rec = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }
%struct.ocfs2_group_desc = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"find the victim group: #%llu, total_bits: %u, vict_bit: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, i32*, %struct.buffer_head**)* @ocfs2_find_victim_alloc_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_victim_alloc_group(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.buffer_head** %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [40 x i8], align 16
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.buffer_head*, align 8
  %21 = alloca %struct.ocfs2_chain_list*, align 8
  %22 = alloca %struct.ocfs2_chain_rec*, align 8
  %23 = alloca %struct.ocfs2_dinode*, align 8
  %24 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %12, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_8__* %27)
  store %struct.ocfs2_super* %28, %struct.ocfs2_super** %18, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ocfs2_sprintf_system_inode_name(i8* %29, i32 40, i32 %30, i32 %31)
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @ocfs2_lookup_ino_from_name(i32 %35, i8* %36, i32 %38, i32* %16)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  br label %195

45:                                               ; preds = %6
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %46, i32 %47, i32 1, %struct.buffer_head** %19)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %195

54:                                               ; preds = %45
  %55 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %58, %struct.ocfs2_dinode** %23, align 8
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.ocfs2_chain_list* %61, %struct.ocfs2_chain_list** %21, align 8
  %62 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %21, align 8
  %63 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %62, i32 0, i32 0
  %64 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %63, align 8
  %65 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %64, i64 0
  store %struct.ocfs2_chain_rec* %65, %struct.ocfs2_chain_rec** %22, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %54
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %71 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %72, %77
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %69, %54
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %22, align 8
  %82 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le64_to_cpu(i32 %83)
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %23, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @le32_to_cpu(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %15, align 4
  %96 = shl i32 %94, %95
  %97 = icmp sge i32 %87, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86, %79
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %195

101:                                              ; preds = %86
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %189, %101
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %21, align 8
  %105 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %192

109:                                              ; preds = %102
  %110 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %21, align 8
  %111 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %110, i32 0, i32 0
  %112 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %112, i64 %114
  store %struct.ocfs2_chain_rec* %115, %struct.ocfs2_chain_rec** %22, align 8
  %116 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %22, align 8
  %117 = icmp ne %struct.ocfs2_chain_rec* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %189

119:                                              ; preds = %109
  store %struct.ocfs2_group_desc* null, %struct.ocfs2_group_desc** %24, align 8
  br label %120

120:                                              ; preds = %182, %119
  %121 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %122 = icmp ne %struct.ocfs2_group_desc* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %22, align 8
  %125 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le64_to_cpu(i32 %126)
  store i32 %127, i32* %16, align 4
  br label %133

128:                                              ; preds = %120
  %129 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %130 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le64_to_cpu(i32 %131)
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %135 = icmp ne %struct.buffer_head* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %138 = call i32 @brelse(%struct.buffer_head* %137)
  store %struct.buffer_head* null, %struct.buffer_head** %20, align 8
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %140, i32 %141, i32 1, %struct.buffer_head** %20)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %195

148:                                              ; preds = %139
  %149 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %150 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %152, %struct.ocfs2_group_desc** %24, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %155 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le64_to_cpu(i32 %156)
  %158 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %159 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  %162 = add nsw i32 %157, %161
  %163 = icmp slt i32 %153, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %148
  %165 = load %struct.buffer_head*, %struct.buffer_head** %20, align 8
  %166 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head* %165, %struct.buffer_head** %166, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* %15, align 4
  %171 = ashr i32 %169, %170
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %175 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le16_to_cpu(i32 %176)
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %177, i32 %179)
  br label %195

181:                                              ; preds = %148
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %24, align 8
  %184 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le64_to_cpu(i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %120, label %188

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %118
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %102

192:                                              ; preds = %102
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %192, %164, %145, %98, %51, %42
  %196 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %197 = call i32 @brelse(%struct.buffer_head* %196)
  %198 = load i32, i32* %13, align 4
  ret i32 %198
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_sprintf_system_inode_name(i8*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
