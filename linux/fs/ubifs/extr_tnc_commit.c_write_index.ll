; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_write_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_write_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_8__*, %struct.ubifs_idx_node*, %struct.ubifs_znode*, i32, %struct.TYPE_14__, %struct.ubifs_znode* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ubifs_idx_node = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ubifs_znode = type { i32, i32, i64, i64, i32, i32, i32, i32, %struct.ubifs_znode*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.ubifs_zbranch* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ubifs_zbranch = type { %struct.ubifs_znode*, i32, i32, i32*, i32, i32 }
%struct.ubifs_branch = type { i8*, i8*, i8*, i32 }

@LPROPS_NC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bad ref in znode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"inconsistent znode posn\00", align 1
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@COW_ZNODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"inconsistent ihead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @write_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_index(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_idx_node*, align 8
  %5 = alloca %struct.ubifs_znode*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ubifs_branch*, align 8
  %24 = alloca %struct.ubifs_zbranch*, align 8
  %25 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 11
  %28 = load %struct.ubifs_znode*, %struct.ubifs_znode** %27, align 8
  store %struct.ubifs_znode* %28, %struct.ubifs_znode** %6, align 8
  %29 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %30 = icmp ne %struct.ubifs_znode* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %463

32:                                               ; preds = %1
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ALIGN(i32 %41, i32 %44)
  store i32 %45, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %15, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %47, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %32
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LPROPS_NC, align 4
  %63 = load i32, i32* @LPROPS_TAKEN, align 4
  %64 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %60, i32 %61, i32 %62, i32 0, i32 0, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %2, align 4
  br label %463

69:                                               ; preds = %59
  store i32 -1, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %32
  br label %71

71:                                               ; preds = %70, %432
  %72 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %21, align 8
  %75 = alloca i32, i64 %73, align 16
  store i64 %73, i64* %22, align 8
  %76 = call i32 (...) @cond_resched()
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %77, %struct.ubifs_znode** %5, align 8
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 7
  %80 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %80, i64 %82
  store %struct.ubifs_idx_node* %83, %struct.ubifs_idx_node** %4, align 8
  %84 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %85 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %86 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %89 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %93 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %95 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @cpu_to_le16(i32 %96)
  %98 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %99 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %178, %71
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %103 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %181

106:                                              ; preds = %100
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %108 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info* %107, %struct.ubifs_idx_node* %108, i32 %109)
  store %struct.ubifs_branch* %110, %struct.ubifs_branch** %23, align 8
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %112 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %111, i32 0, i32 11
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %113, i64 %115
  store %struct.ubifs_zbranch* %116, %struct.ubifs_zbranch** %24, align 8
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %119 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %118, i32 0, i32 5
  %120 = load %struct.ubifs_branch*, %struct.ubifs_branch** %23, align 8
  %121 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %120, i32 0, i32 3
  %122 = call i32 @key_write_idx(%struct.ubifs_info* %117, i32* %119, i32* %121)
  %123 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %124 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_le32(i32 %125)
  %127 = load %struct.ubifs_branch*, %struct.ubifs_branch** %23, align 8
  %128 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %130 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.ubifs_branch*, %struct.ubifs_branch** %23, align 8
  %134 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %136 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.ubifs_branch*, %struct.ubifs_branch** %23, align 8
  %140 = getelementptr inbounds %struct.ubifs_branch, %struct.ubifs_branch* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %142 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %143 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %146 = load %struct.ubifs_branch*, %struct.ubifs_branch** %23, align 8
  %147 = call i32 @ubifs_branch_hash(%struct.ubifs_info* %145, %struct.ubifs_branch* %146)
  %148 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %141, i32* %144, i32 %147)
  %149 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %150 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %106
  %154 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %155 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %153, %106
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %160 = call i32 @ubifs_err(%struct.ubifs_info* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %161 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %162 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %163 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %161, %struct.ubifs_znode* %162)
  %164 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %165 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %164, i32 0, i32 0
  %166 = load %struct.ubifs_znode*, %struct.ubifs_znode** %165, align 8
  %167 = icmp ne %struct.ubifs_znode* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %158
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %170 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %24, align 8
  %171 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %170, i32 0, i32 0
  %172 = load %struct.ubifs_znode*, %struct.ubifs_znode** %171, align 8
  %173 = call i32 @ubifs_dump_znode(%struct.ubifs_info* %169, %struct.ubifs_znode* %172)
  br label %174

174:                                              ; preds = %168, %158
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %432

177:                                              ; preds = %153
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %100

181:                                              ; preds = %100
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %183 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %184 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %182, i32 %185)
  store i32 %186, i32* %10, align 4
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %188 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @ubifs_prepare_node(%struct.ubifs_info* %187, %struct.ubifs_idx_node* %188, i32 %189, i32 0)
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %4, align 8
  %193 = call i32 @ubifs_node_calc_hash(%struct.ubifs_info* %191, %struct.ubifs_idx_node* %192, i32* %75)
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 9
  %196 = call i32 @mutex_lock(i32* %195)
  %197 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %198 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %197, i32 0, i32 10
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = icmp ne %struct.TYPE_11__* %199, null
  br i1 %200, label %201, label %215

201:                                              ; preds = %181
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %203 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %204 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %203, i32 0, i32 10
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %209 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %202, i32* %75, i32 %213)
  br label %215

215:                                              ; preds = %201, %181
  %216 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %217 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %216, i32 0, i32 9
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = icmp ne %struct.TYPE_13__* %218, null
  br i1 %219, label %220, label %239

220:                                              ; preds = %215
  %221 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %222 = call i32 @ubifs_zn_obsolete(%struct.ubifs_znode* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %220
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %226 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %227 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %226, i32 0, i32 9
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %232 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %225, i32* %75, i32 %236)
  br label %238

238:                                              ; preds = %224, %220
  br label %246

239:                                              ; preds = %215
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %241, i32 0, i32 10
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %240, i32* %75, i32 %244)
  br label %246

246:                                              ; preds = %239, %238
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %248 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %247, i32 0, i32 9
  %249 = call i32 @mutex_unlock(i32* %248)
  %250 = load i32, i32* %8, align 4
  %251 = icmp eq i32 %250, -1
  br i1 %251, label %252, label %262

252:                                              ; preds = %246
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %261 = load i32, i32* %12, align 4
  store i32 %261, i32* %15, align 4
  br label %262

262:                                              ; preds = %252, %246
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %263, %264
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %268 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = icmp ne i32 %266, %269
  br i1 %270, label %283, label %271

271:                                              ; preds = %262
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %274 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %272, %275
  br i1 %276, label %283, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %280 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %278, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %277, %271, %262
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %285 = call i32 @ubifs_err(%struct.ubifs_info* %284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %432

288:                                              ; preds = %277
  %289 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %290 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %289, i32 0, i32 8
  %291 = load %struct.ubifs_znode*, %struct.ubifs_znode** %290, align 8
  store %struct.ubifs_znode* %291, %struct.ubifs_znode** %6, align 8
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %293 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %294 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %293)
  %295 = call i32 @ubifs_assert(%struct.ubifs_info* %292, i32 %294)
  %296 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %297 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %298 = call i32 @ubifs_zn_cow(%struct.ubifs_znode* %297)
  %299 = call i32 @ubifs_assert(%struct.ubifs_info* %296, i32 %298)
  %300 = load i32, i32* @DIRTY_ZNODE, align 4
  %301 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %302 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %301, i32 0, i32 7
  %303 = call i32 @clear_bit(i32 %300, i32* %302)
  %304 = call i32 (...) @smp_mb__before_atomic()
  %305 = load i32, i32* @COW_ZNODE, align 4
  %306 = load %struct.ubifs_znode*, %struct.ubifs_znode** %5, align 8
  %307 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %306, i32 0, i32 7
  %308 = call i32 @clear_bit(i32 %305, i32* %307)
  %309 = call i32 (...) @smp_mb__after_atomic()
  %310 = load i32, i32* %14, align 4
  %311 = load i32, i32* %10, align 4
  %312 = add nsw i32 %310, %311
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %10, align 4
  %314 = call i32 @ALIGN(i32 %313, i32 8)
  %315 = load i32, i32* %14, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %14, align 4
  %317 = load i32, i32* %10, align 4
  %318 = call i32 @ALIGN(i32 %317, i32 8)
  %319 = load i32, i32* %15, align 4
  %320 = sub nsw i32 %319, %318
  store i32 %320, i32* %15, align 4
  %321 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %322 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %323 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %322, i32 0, i32 8
  %324 = load %struct.ubifs_znode*, %struct.ubifs_znode** %323, align 8
  %325 = icmp eq %struct.ubifs_znode* %321, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %288
  store i32 0, i32* %11, align 4
  br label %333

327:                                              ; preds = %288
  %328 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %329 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %330 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %328, i32 %331)
  store i32 %332, i32* %11, align 4
  br label %333

333:                                              ; preds = %327, %326
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %334, %335
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %336, %337
  store i32 %338, i32* %20, align 4
  %339 = load i32, i32* %11, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %354

341:                                              ; preds = %333
  %342 = load i32, i32* %20, align 4
  %343 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %344 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = icmp sle i32 %342, %345
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load i32, i32* %15, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store i32 2, i32* %25, align 4
  br label %432

351:                                              ; preds = %347
  %352 = load i32, i32* %12, align 4
  store i32 %352, i32* %19, align 4
  br label %353

353:                                              ; preds = %351
  br label %373

354:                                              ; preds = %341, %333
  %355 = load i32, i32* %16, align 4
  %356 = call i32 @ALIGN(i32 %355, i32 8)
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %359 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @ALIGN(i32 %357, i32 %360)
  store i32 %361, i32* %19, align 4
  %362 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %363 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %364 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %363, i32 0, i32 7
  %365 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %364, align 8
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %365, i64 %367
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %16, align 4
  %371 = sub nsw i32 %369, %370
  %372 = call i32 @ubifs_pad(%struct.ubifs_info* %362, %struct.ubifs_idx_node* %368, i32 %371)
  br label %373

373:                                              ; preds = %354, %353
  %374 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %375 = load i32, i32* %8, align 4
  %376 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %377 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %376, i32 0, i32 7
  %378 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %377, align 8
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %19, align 4
  %381 = call i32 @ubifs_leb_write(%struct.ubifs_info* %374, i32 %375, %struct.ubifs_idx_node* %378, i32 %379, i32 %380)
  store i32 %381, i32* %17, align 4
  %382 = load i32, i32* %17, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %373
  %385 = load i32, i32* %17, align 4
  store i32 %385, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %432

386:                                              ; preds = %373
  %387 = load i32, i32* %19, align 4
  %388 = load i32, i32* %13, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %13, align 4
  %390 = load i32, i32* %11, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %431

392:                                              ; preds = %386
  %393 = load i32, i32* %20, align 4
  %394 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %395 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp sgt i32 %393, %396
  br i1 %397, label %398, label %409

398:                                              ; preds = %392
  %399 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* @LPROPS_NC, align 4
  %402 = load i32, i32* @LPROPS_TAKEN, align 4
  %403 = call i32 @ubifs_update_one_lp(%struct.ubifs_info* %399, i32 %400, i32 %401, i32 0, i32 0, i32 %402)
  store i32 %403, i32* %17, align 4
  %404 = load i32, i32* %17, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %398
  %407 = load i32, i32* %17, align 4
  store i32 %407, i32* %2, align 4
  store i32 1, i32* %25, align 4
  br label %432

408:                                              ; preds = %398
  store i32 -1, i32* %8, align 4
  br label %409

409:                                              ; preds = %408, %392
  %410 = load i32, i32* %19, align 4
  %411 = load i32, i32* %14, align 4
  %412 = sub nsw i32 %411, %410
  store i32 %412, i32* %14, align 4
  %413 = load i32, i32* %14, align 4
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %409
  store i32 0, i32* %14, align 4
  br label %416

416:                                              ; preds = %415, %409
  %417 = load i32, i32* %12, align 4
  %418 = load i32, i32* %14, align 4
  %419 = sub nsw i32 %417, %418
  store i32 %419, i32* %15, align 4
  %420 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %421 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %420, i32 0, i32 7
  %422 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %421, align 8
  %423 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %424 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %423, i32 0, i32 7
  %425 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %424, align 8
  %426 = load i32, i32* %19, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %425, i64 %427
  %429 = load i32, i32* %14, align 4
  %430 = call i32 @memmove(%struct.ubifs_idx_node* %422, %struct.ubifs_idx_node* %428, i32 %429)
  store i32 2, i32* %25, align 4
  br label %432

431:                                              ; preds = %386
  store i32 3, i32* %25, align 4
  br label %432

432:                                              ; preds = %431, %416, %406, %384, %350, %283, %174
  %433 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %433)
  %434 = load i32, i32* %25, align 4
  switch i32 %434, label %465 [
    i32 1, label %463
    i32 2, label %71
    i32 3, label %435
  ]

435:                                              ; preds = %432
  %436 = load i32, i32* %8, align 4
  %437 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %438 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %437, i32 0, i32 6
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %436, %441
  br i1 %442, label %451, label %443

443:                                              ; preds = %435
  %444 = load i32, i32* %13, align 4
  %445 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %446 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %445, i32 0, i32 6
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp ne i32 %444, %449
  br i1 %450, label %451, label %456

451:                                              ; preds = %443, %435
  %452 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %453 = call i32 @ubifs_err(%struct.ubifs_info* %452, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %454 = load i32, i32* @EINVAL, align 4
  %455 = sub nsw i32 0, %454
  store i32 %455, i32* %2, align 4
  br label %463

456:                                              ; preds = %443
  %457 = load i32, i32* %8, align 4
  %458 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %459 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %458, i32 0, i32 0
  store i32 %457, i32* %459, align 8
  %460 = load i32, i32* %13, align 4
  %461 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %462 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %461, i32 0, i32 1
  store i32 %460, i32* %462, align 4
  store i32 0, i32* %2, align 4
  br label %463

463:                                              ; preds = %456, %451, %432, %67, %31
  %464 = load i32, i32* %2, align 4
  ret i32 %464

465:                                              ; preds = %432
  unreachable
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_update_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @cond_resched(...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.ubifs_branch* @ubifs_idx_branch(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @key_write_idx(%struct.ubifs_info*, i32*, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i32 @ubifs_branch_hash(%struct.ubifs_info*, %struct.ubifs_branch*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_prepare_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32) #1

declare dso_local i32 @ubifs_node_calc_hash(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_zn_obsolete(%struct.ubifs_znode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_cow(%struct.ubifs_znode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32) #1

declare dso_local i32 @ubifs_leb_write(%struct.ubifs_info*, i32, %struct.ubifs_idx_node*, i32, i32) #1

declare dso_local i32 @memmove(%struct.ubifs_idx_node*, %struct.ubifs_idx_node*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
