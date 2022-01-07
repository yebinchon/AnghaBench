; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_delete_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_inode_array = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_ibody_header = type { i64 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.ext4_xattr_entry = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ensure credits (error %d)\00", align 1
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"inode loc (error %d)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"write access (error %d)\00", align 1
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"block %llu read error\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"mark inode dirty (error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_delete_inode(i32* %0, %struct.inode* %1, %struct.ext4_xattr_inode_array** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_xattr_inode_array**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %11 = alloca %struct.ext4_iloc, align 8
  %12 = alloca %struct.ext4_xattr_entry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_xattr_inode_array** %2, %struct.ext4_xattr_inode_array*** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %15 = bitcast %struct.ext4_iloc* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ext4_xattr_ensure_credits(i32* %16, %struct.inode* %17, i32 %18, i32* null, i32 0, i32 0)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @EXT4_ERROR_INODE(%struct.inode* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %188

26:                                               ; preds = %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ext4_has_feature_ea_inode(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %35 = call i64 @ext4_test_inode_state(%struct.inode* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @ext4_get_inode_loc(%struct.inode* %38, %struct.ext4_iloc* %11)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @EXT4_ERROR_INODE(%struct.inode* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %188

46:                                               ; preds = %37
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = call i32 @ext4_journal_get_write_access(i32* %47, %struct.buffer_head* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @EXT4_ERROR_INODE(%struct.inode* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %188

57:                                               ; preds = %46
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @ext4_raw_inode(%struct.ext4_iloc* %11)
  %60 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %58, i32 %59)
  store %struct.ext4_xattr_ibody_header* %60, %struct.ext4_xattr_ibody_header** %10, align 8
  %61 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %62 = getelementptr inbounds %struct.ext4_xattr_ibody_header, %struct.ext4_xattr_ibody_header* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %65 = call i64 @cpu_to_le32(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %73 = call i32 @IFIRST(%struct.ext4_xattr_ibody_header* %72)
  %74 = load %struct.ext4_xattr_inode_array**, %struct.ext4_xattr_inode_array*** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ext4_xattr_inode_dec_ref_all(i32* %68, %struct.inode* %69, %struct.buffer_head* %71, i32 %73, i32 0, %struct.ext4_xattr_inode_array** %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %67, %57
  br label %78

78:                                               ; preds = %77, %32, %26
  %79 = load %struct.inode*, %struct.inode** %6, align 8
  %80 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %187

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @REQ_PRIO, align 4
  %93 = call %struct.buffer_head* @ext4_sb_bread(i32 %87, i32 %91, i32 %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %9, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = call i64 @IS_ERR(%struct.buffer_head* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %84
  %98 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %99 = call i32 @PTR_ERR(%struct.buffer_head* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.inode*, %struct.inode** %6, align 8
  %106 = load %struct.inode*, %struct.inode** %6, align 8
  %107 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @EXT4_ERROR_INODE(%struct.inode* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %97
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %188

112:                                              ; preds = %84
  %113 = load %struct.inode*, %struct.inode** %6, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i32 @ext4_xattr_check_block(%struct.inode* %113, %struct.buffer_head* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %188

119:                                              ; preds = %112
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ext4_has_feature_ea_inode(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %119
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = call %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head* %126)
  store %struct.ext4_xattr_entry* %127, %struct.ext4_xattr_entry** %12, align 8
  br label %128

128:                                              ; preds = %163, %125
  %129 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %130 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %166

133:                                              ; preds = %128
  %134 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %135 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %163

139:                                              ; preds = %133
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %142 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @le32_to_cpu(i32 %143)
  %145 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %146 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = call i32 @ext4_xattr_inode_iget(%struct.inode* %140, i32 %144, i32 %148, %struct.inode** %13)
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  br label %163

153:                                              ; preds = %139
  %154 = load %struct.inode*, %struct.inode** %6, align 8
  %155 = load %struct.inode*, %struct.inode** %13, align 8
  %156 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %157 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = call i32 @ext4_xattr_inode_free_quota(%struct.inode* %154, %struct.inode* %155, i32 %159)
  %161 = load %struct.inode*, %struct.inode** %13, align 8
  %162 = call i32 @iput(%struct.inode* %161)
  br label %163

163:                                              ; preds = %153, %152, %138
  %164 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  %165 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %164)
  store %struct.ext4_xattr_entry* %165, %struct.ext4_xattr_entry** %12, align 8
  br label %128

166:                                              ; preds = %128
  br label %167

167:                                              ; preds = %166, %119
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %171 = load %struct.ext4_xattr_inode_array**, %struct.ext4_xattr_inode_array*** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @ext4_xattr_release_block(i32* %168, %struct.inode* %169, %struct.buffer_head* %170, %struct.ext4_xattr_inode_array** %171, i32 %172)
  %174 = load %struct.inode*, %struct.inode** %6, align 8
  %175 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i32 0, i32* %176, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = load %struct.inode*, %struct.inode** %6, align 8
  %179 = call i32 @ext4_mark_inode_dirty(i32* %177, %struct.inode* %178)
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %167
  %183 = load %struct.inode*, %struct.inode** %6, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @EXT4_ERROR_INODE(%struct.inode* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %188

186:                                              ; preds = %167
  br label %187

187:                                              ; preds = %186, %78
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %187, %182, %118, %111, %53, %42, %22
  %189 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %11, i32 0, i32 0
  %190 = load %struct.buffer_head*, %struct.buffer_head** %189, align 8
  %191 = call i32 @brelse(%struct.buffer_head* %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %193 = call i32 @brelse(%struct.buffer_head* %192)
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ext4_xattr_ensure_credits(i32*, %struct.inode*, i32, i32*, i32, i32) #2

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i32) #2

declare dso_local i64 @ext4_has_feature_ea_inode(i32) #2

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #2

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #2

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, i32) #2

declare dso_local i32 @ext4_raw_inode(%struct.ext4_iloc*) #2

declare dso_local i64 @cpu_to_le32(i32) #2

declare dso_local i32 @ext4_xattr_inode_dec_ref_all(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ext4_xattr_inode_array**, i32, i32) #2

declare dso_local i32 @IFIRST(%struct.ext4_xattr_ibody_header*) #2

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #2

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #2

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #2

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #2

declare dso_local %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head*) #2

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #2

declare dso_local i32 @ext4_xattr_inode_iget(%struct.inode*, i32, i32, %struct.inode**) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ext4_xattr_inode_free_quota(%struct.inode*, %struct.inode*, i32) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #2

declare dso_local i32 @ext4_xattr_release_block(i32*, %struct.inode*, %struct.buffer_head*, %struct.ext4_xattr_inode_array**, i32) #2

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
