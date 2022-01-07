; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_make_idx_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_make_idx_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.ubifs_idx_node = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_znode = type { i32, i32, i32, i32, i32, i64, i32, %struct.ubifs_zbranch*, %struct.ubifs_znode* }
%struct.ubifs_zbranch = type { i32, i32, i32, i32*, %struct.ubifs_znode*, i32 }
%struct.ubifs_branch = type { i8*, i8*, i8*, i32 }

@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad ref in znode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@COW_ZNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_idx_node*, %struct.ubifs_znode*, i32, i32, i32)* @make_idx_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_idx_node(%struct.ubifs_info* %0, %struct.ubifs_idx_node* %1, %struct.ubifs_znode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.ubifs_idx_node*, align 8
  %10 = alloca %struct.ubifs_znode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_znode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ubifs_branch*, align 8
  %20 = alloca %struct.ubifs_zbranch*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %struct.ubifs_idx_node* %1, %struct.ubifs_idx_node** %9, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %28 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %29 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %32 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %36 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %38 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %42 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %121, %6
  %44 = load i32, i32* %17, align 4
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %46 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %124

49:                                               ; preds = %43
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %51 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %50, %struct.ubifs_idx_node* %51, i32 %52)
  store %struct.ubifs_branch* %53, %struct.ubifs_branch** %19, align 8
  %54 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %55 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %54, i32 0, i32 7
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %55, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %56, i64 %58
  store %struct.ubifs_zbranch* %59, %struct.ubifs_zbranch** %20, align 8
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %61 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %62 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %61, i32 0, i32 5
  %63 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %64 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %63, i32 0, i32 3
  %65 = call i32 @key_write_idx(%struct.ubifs_info* %60, i32* %62, i32* %64)
  %66 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %71 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %73 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %77 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %83 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %85 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %86 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %89 = load %struct.ubifs_branch*, %struct.ubifs_branch** %19, align 8
  %90 = call i32* @ubifs_branch_hash(%struct.ubifs_info* %88, %struct.ubifs_branch* %89)
  %91 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %84, i32* %87, i32* %90)
  %92 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %93 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %49
  %97 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %98 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %96, %49
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %103 = call i32 @ubifs_err(%struct.ubifs_info* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %105 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %106 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %104, %struct.ubifs_znode* %105)
  %107 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %108 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %107, i32 0, i32 4
  %109 = load %struct.ubifs_znode*, %struct.ubifs_znode** %108, align 8
  %110 = icmp ne %struct.ubifs_znode* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %20, align 8
  %114 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %113, i32 0, i32 4
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %114, align 8
  %116 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %112, %struct.ubifs_znode* %115)
  br label %117

117:                                              ; preds = %111, %101
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %219

120:                                              ; preds = %96
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %43

124:                                              ; preds = %43
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %126 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %125, %struct.ubifs_idx_node* %126, i32 %127, i32 0)
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %130 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %9, align 8
  %131 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %129, %struct.ubifs_idx_node* %130, i32* %26)
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %134 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %137 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %140 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %142 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %143 = call i32 @insert_old_idx_znode(%struct.ubifs_info* %141, %struct.ubifs_znode* %142)
  store i32 %143, i32* %18, align 4
  %144 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %145 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %144, i32 0, i32 8
  %146 = load %struct.ubifs_znode*, %struct.ubifs_znode** %145, align 8
  store %struct.ubifs_znode* %146, %struct.ubifs_znode** %14, align 8
  %147 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %148 = icmp ne %struct.ubifs_znode* %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %124
  %150 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %151 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %150, i32 0, i32 7
  %152 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %151, align 8
  %153 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %154 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %152, i64 %155
  store %struct.ubifs_zbranch* %156, %struct.ubifs_zbranch** %22, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %22, align 8
  %159 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %22, align 8
  %162 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %22, align 8
  %165 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %167 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %22, align 8
  %168 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %166, i32* %26, i32* %169)
  br label %190

171:                                              ; preds = %124
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %178 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %182 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %186 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %184, i32* %26, i32* %188)
  br label %190

190:                                              ; preds = %171, %149
  %191 = load i32, i32* %13, align 4
  %192 = call i64 @ALIGN(i32 %191, i32 8)
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %200 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %199, i32 0, i32 0
  %201 = call i32 @atomic_long_dec(i32* %200)
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %203 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %204 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %203)
  %205 = call i32 @ubifs_assert(%struct.ubifs_info* %202, i32 %204)
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %207 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %208 = call i32 @ubifs_zn_cow(%struct.ubifs_znode* %207)
  %209 = call i32 @ubifs_assert(%struct.ubifs_info* %206, i32 %208)
  %210 = load i32, i32* @DIRTY_ZNODE, align 4
  %211 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %212 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %211, i32 0, i32 6
  %213 = call i32 @__clear_bit(i32 %210, i32* %212)
  %214 = load i32, i32* @COW_ZNODE, align 4
  %215 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %216 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %215, i32 0, i32 6
  %217 = call i32 @__clear_bit(i32 %214, i32* %216)
  %218 = load i32, i32* %18, align 4
  store i32 %218, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %219

219:                                              ; preds = %190, %117
  %220 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %7, align 4
  ret i32 %221
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #2

declare dso_local i32 @key_write_idx(%struct.ubifs_info*, i32*, i32*) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32*, i32*) #2

declare dso_local i32* @ubifs_branch_hash(%struct.ubifs_info*, %struct.ubifs_branch*) #2

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #2

declare dso_local i32 @ubifs_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #2

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32) #2

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32*) #2

declare dso_local i32 @insert_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #2

declare dso_local i64 @ALIGN(i32, i32) #2

declare dso_local i32 @atomic_long_dec(i32*) #2

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #2

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #2

declare dso_local i32 @ubifs_zn_cow(%struct.ubifs_znode*) #2

declare dso_local i32 @__clear_bit(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
