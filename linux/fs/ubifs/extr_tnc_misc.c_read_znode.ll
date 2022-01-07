; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_read_znode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_misc.c_read_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ubifs_zbranch = type { i32, i32, i32, %union.ubifs_key, i32*, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32, %struct.ubifs_zbranch*, i8* }
%struct.ubifs_idx_node = type { i32, i32 }
%struct.ubifs_branch = type { i32, i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LEB %d:%d, level %d, %d branch\00", align 1
@UBIFS_MAX_LEVELS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"current fanout %d, branch count %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"max levels %d, znode level %d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bad branch %d\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"bad key type at slot %d: %d\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"bad target node (type %d) length (%d)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"have to be %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"have to be in range of %d-%d\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bad key order (keys %d and %d)\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"keys %d and %d are not hashed but equivalent\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"bad indexing node at LEB %d:%d, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, %struct.ubifs_znode*)* @read_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_znode(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, %struct.ubifs_znode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_idx_node*, align 8
  %16 = alloca %struct.ubifs_branch*, align 8
  %17 = alloca %struct.ubifs_zbranch*, align 8
  %18 = alloca %union.ubifs_key*, align 8
  %19 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store %struct.ubifs_znode* %2, %struct.ubifs_znode** %7, align 8
  %20 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %24 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.ubifs_idx_node* @kmalloc(i32 %31, i32 %32)
  store %struct.ubifs_idx_node* %33, %struct.ubifs_idx_node** %15, align 8
  %34 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %35 = icmp ne %struct.ubifs_idx_node* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %423

39:                                               ; preds = %3
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %41 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %42 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ubifs_read_node(%struct.ubifs_info* %40, %struct.ubifs_idx_node* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %51 = call i32 @kfree(%struct.ubifs_idx_node* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %423

53:                                               ; preds = %39
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %55 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %57 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ubifs_node_check_hash(%struct.ubifs_info* %54, %struct.ubifs_idx_node* %55, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %64 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %65 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %66 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ubifs_bad_hash(%struct.ubifs_info* %63, %struct.ubifs_idx_node* %64, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %72 = call i32 @kfree(%struct.ubifs_idx_node* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %423

74:                                               ; preds = %53
  %75 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %76 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @le16_to_cpu(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %81 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %83 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le16_to_cpu(i32 %84)
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %87 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %91 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %94 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i8* %92, i32 %95)
  %97 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %98 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %74
  %105 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %106 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** @UBIFS_MAX_LEVELS, align 8
  %109 = icmp ugt i8* %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %104, %74
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %116 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %120 = load i8*, i8** @UBIFS_MAX_LEVELS, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %123 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %121, i8* %124)
  store i32 1, i32* %12, align 4
  br label %410

126:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %349, %126
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %130 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %352

133:                                              ; preds = %127
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %135 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %134, %struct.ubifs_idx_node* %135, i32 %136)
  store %struct.ubifs_branch* %137, %struct.ubifs_branch** %16, align 8
  %138 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %139 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %138, i32 0, i32 1
  %140 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %140, i64 %142
  store %struct.ubifs_zbranch* %143, %struct.ubifs_zbranch** %17, align 8
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %145 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %146 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %145, i32 0, i32 3
  %147 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %148 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %147, i32 0, i32 3
  %149 = call i32 @key_read(%struct.ubifs_info* %144, i32* %146, %union.ubifs_key* %148)
  %150 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %151 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @le32_to_cpu(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %156 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %158 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @le32_to_cpu(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %163 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %165 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le32_to_cpu(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %170 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %173 = load %struct.ubifs_branch*, %struct.ubifs_branch** %16, align 8
  %174 = call i32 @ubifs_branch_hash(%struct.ubifs_info* %172, %struct.ubifs_branch* %173)
  %175 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %176 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %171, i32 %174, i32 %177)
  %179 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %180 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %179, i32 0, i32 4
  store i32* null, i32** %180, align 8
  %181 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %182 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %186 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %222, label %189

189:                                              ; preds = %133
  %190 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %191 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp sge i64 %193, %196
  br i1 %197, label %222, label %198

198:                                              ; preds = %189
  %199 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %200 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %222, label %203

203:                                              ; preds = %198
  %204 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %205 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %208 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %213 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %211, %214
  br i1 %215, label %222, label %216

216:                                              ; preds = %203
  %217 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %218 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 7
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216, %203, %198, %189, %133
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %224)
  store i32 2, i32* %12, align 4
  br label %410

226:                                              ; preds = %216
  %227 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %228 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %229 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %228, i32 0, i32 3
  %230 = call i32 @key_type(%struct.ubifs_info* %227, %union.ubifs_key* %229)
  switch i32 %230, label %232 [
    i32 129, label %231
    i32 131, label %231
    i32 130, label %231
    i32 128, label %231
  ]

231:                                              ; preds = %226, %226, %226, %226
  br label %240

232:                                              ; preds = %226
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %236 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %237 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %236, i32 0, i32 3
  %238 = call i32 @key_type(%struct.ubifs_info* %235, %union.ubifs_key* %237)
  %239 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %233, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %234, i32 %238)
  store i32 3, i32* %12, align 4
  br label %410

240:                                              ; preds = %231
  %241 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %242 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %349

246:                                              ; preds = %240
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %248 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %249 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %248, i32 0, i32 3
  %250 = call i32 @key_type(%struct.ubifs_info* %247, %union.ubifs_key* %249)
  store i32 %250, i32* %13, align 4
  %251 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %252 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %251, i32 0, i32 4
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %293

260:                                              ; preds = %246
  %261 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %262 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %266 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %265, i32 0, i32 4
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %264, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %260
  %275 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %278 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %275, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %276, i32 %279)
  %281 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 4
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %281, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %290)
  store i32 4, i32* %12, align 4
  br label %410

292:                                              ; preds = %260
  br label %348

293:                                              ; preds = %246
  %294 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %295 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %299 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %298, i32 0, i32 4
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %297, %305
  br i1 %306, label %321, label %307

307:                                              ; preds = %293
  %308 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %309 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %313 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %312, i32 0, i32 4
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp sgt i64 %311, %319
  br i1 %320, label %321, label %347

321:                                              ; preds = %307, %293
  %322 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %323 = load i32, i32* %13, align 4
  %324 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %17, align 8
  %325 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %322, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %323, i32 %326)
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %329 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %330 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %329, i32 0, i32 4
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = trunc i64 %336 to i32
  %338 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %339 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %338, i32 0, i32 4
  %340 = load %struct.TYPE_2__*, %struct.TYPE_2__** %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %328, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %337, i64 %345)
  store i32 5, i32* %12, align 4
  br label %410

347:                                              ; preds = %307
  br label %348

348:                                              ; preds = %347, %292
  br label %349

349:                                              ; preds = %348, %245
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %11, align 4
  br label %127

352:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %353

353:                                              ; preds = %404, %352
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %356 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, 1
  %359 = icmp slt i32 %354, %358
  br i1 %359, label %360, label %407

360:                                              ; preds = %353
  %361 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %362 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %361, i32 0, i32 1
  %363 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %362, align 8
  %364 = load i32, i32* %11, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %363, i64 %365
  %367 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %366, i32 0, i32 3
  store %union.ubifs_key* %367, %union.ubifs_key** %18, align 8
  %368 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %369 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %368, i32 0, i32 1
  %370 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %369, align 8
  %371 = load i32, i32* %11, align 4
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %370, i64 %373
  %375 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %374, i32 0, i32 3
  store %union.ubifs_key* %375, %union.ubifs_key** %19, align 8
  %376 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %377 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %378 = load %union.ubifs_key*, %union.ubifs_key** %19, align 8
  %379 = call i32 @keys_cmp(%struct.ubifs_info* %376, %union.ubifs_key* %377, %union.ubifs_key* %378)
  store i32 %379, i32* %14, align 4
  %380 = load i32, i32* %14, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %360
  %383 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  %387 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %383, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %384, i32 %386)
  store i32 6, i32* %12, align 4
  br label %410

388:                                              ; preds = %360
  %389 = load i32, i32* %14, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %388
  %392 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %393 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %394 = call i32 @is_hash_key(%struct.ubifs_info* %392, %union.ubifs_key* %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %402, label %396

396:                                              ; preds = %391
  %397 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %11, align 4
  %400 = add nsw i32 %399, 1
  %401 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %397, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %398, i32 %400)
  store i32 7, i32* %12, align 4
  br label %410

402:                                              ; preds = %391, %388
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %11, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %11, align 4
  br label %353

407:                                              ; preds = %353
  %408 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %409 = call i32 @kfree(%struct.ubifs_idx_node* %408)
  store i32 0, i32* %4, align 4
  br label %423

410:                                              ; preds = %396, %382, %321, %274, %232, %222, %110
  %411 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %412 = load i32, i32* %8, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %12, align 4
  %415 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %411, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %412, i32 %413, i32 %414)
  %416 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %417 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %418 = call i32 @ubifs_dump_node(%struct.ubifs_info* %416, %struct.ubifs_idx_node* %417)
  %419 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %15, align 8
  %420 = call i32 @kfree(%struct.ubifs_idx_node* %419)
  %421 = load i32, i32* @EINVAL, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %4, align 4
  br label %423

423:                                              ; preds = %410, %407, %62, %49, %36
  %424 = load i32, i32* %4, align 4
  ret i32 %424
}

declare dso_local %struct.ubifs_idx_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_idx_node*) #1

declare dso_local i32 @ubifs_node_check_hash(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @ubifs_bad_hash(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @dbg_tnc(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_branch_hash(%struct.ubifs_info*, %struct.ubifs_branch*) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_idx_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
