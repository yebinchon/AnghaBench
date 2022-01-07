; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_brec.c_hfs_brec_update_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_brec.c_hfs_brec_update_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i32, i32, %struct.hfs_bnode*, i32, i32, %struct.hfs_btree* }
%struct.hfs_bnode = type { i32, i64, i32 }
%struct.hfs_btree = type { i32, i64, i32, i32, i64 }

@hfs_find_rec_by_key = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@HFS_TREE_VARIDXKEYS = common dso_local global i32 0, align 4
@HFSPLUS_ATTR_CNID = common dso_local global i64 0, align 8
@BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"update_rec: %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"splitting index node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*)* @hfs_brec_update_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_brec_update_parent(%struct.hfs_find_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfs_find_data*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.hfs_bnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %3, align 8
  %16 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %17 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %16, i32 0, i32 5
  %18 = load %struct.hfs_btree*, %struct.hfs_btree** %17, align 8
  store %struct.hfs_btree* %18, %struct.hfs_btree** %4, align 8
  %19 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %20 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %19, i32 0, i32 2
  %21 = load %struct.hfs_bnode*, %struct.hfs_bnode** %20, align 8
  store %struct.hfs_bnode* %21, %struct.hfs_bnode** %5, align 8
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %6, align 8
  %22 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %23 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %290

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %284, %27
  %29 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %30 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %31 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @hfs_bnode_find(%struct.hfs_btree* %29, i64 %32)
  %34 = bitcast i8* %33 to %struct.hfs_bnode*
  store %struct.hfs_bnode* %34, %struct.hfs_bnode** %7, align 8
  %35 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %36 = call i64 @IS_ERR(%struct.hfs_bnode* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.hfs_bnode* %39)
  store i32 %40, i32* %2, align 4
  br label %290

41:                                               ; preds = %28
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %43 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %44 = load i32, i32* @hfs_find_rec_by_key, align 4
  %45 = call i32 @__hfs_brec_find(%struct.hfs_bnode* %42, %struct.hfs_find_data* %43, i32 %44)
  %46 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %47 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %290

53:                                               ; preds = %41
  %54 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %55 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %54)
  %56 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %57 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  %59 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %60 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %53
  %66 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %67 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HFSPLUS_ATTR_CNID, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %53
  %72 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %73 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %72, i32 14)
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %8, align 4
  br label %82

75:                                               ; preds = %65
  %76 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %77 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  %80 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %81 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %71
  %83 = load i32, i32* @BNODE_MOD, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %86 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %88)
  %90 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %91 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 2
  %95 = mul nsw i32 %94, 2
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %11, align 4
  %97 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %98 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %101 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  %104 = mul nsw i32 %103, 2
  %105 = sub nsw i32 %99, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %108 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %106, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %82
  br label %202

114:                                              ; preds = %82
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %164

117:                                              ; preds = %114
  %118 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %117
  %127 = load i32, i32* @BNODE_MOD, align 4
  %128 = call i32 (i32, i8*, ...) @hfs_dbg(i32 %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %129 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %130 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %131 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %130, i32 0, i32 2
  store %struct.hfs_bnode* %129, %struct.hfs_bnode** %131, align 8
  %132 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %133 = call %struct.hfs_bnode* @hfs_bnode_split(%struct.hfs_find_data* %132)
  store %struct.hfs_bnode* %133, %struct.hfs_bnode** %6, align 8
  %134 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %135 = call i64 @IS_ERR(%struct.hfs_bnode* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %139 = call i32 @PTR_ERR(%struct.hfs_bnode* %138)
  store i32 %139, i32* %2, align 4
  br label %290

140:                                              ; preds = %126
  %141 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %142 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %141, i32 0, i32 2
  %143 = load %struct.hfs_bnode*, %struct.hfs_bnode** %142, align 8
  store %struct.hfs_bnode* %143, %struct.hfs_bnode** %7, align 8
  %144 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %145 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %10, align 4
  %147 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %148 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 2
  %152 = mul nsw i32 %151, 2
  %153 = sub nsw i32 %149, %152
  store i32 %153, i32* %11, align 4
  %154 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %155 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %158 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = mul nsw i32 %160, 2
  %162 = sub nsw i32 %156, %161
  store i32 %162, i32* %12, align 4
  br label %163

163:                                              ; preds = %140, %117
  br label %164

164:                                              ; preds = %163, %114
  %165 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %165, i32 %166)
  store i32 %167, i32* %13, align 4
  store i32 %167, i32* %14, align 4
  %168 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %170, %171
  %173 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %168, i32 %169, i32 %172)
  %174 = load i32, i32* %13, align 4
  %175 = sub nsw i32 %174, 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %180, %164
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i32, i32* %11, align 4
  %182 = sub nsw i32 %181, 2
  store i32 %182, i32* %11, align 4
  %183 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @hfs_bnode_read_u16(%struct.hfs_bnode* %183, i32 %184)
  store i32 %185, i32* %14, align 4
  %186 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @hfs_bnode_write_u16(%struct.hfs_bnode* %186, i32 %187, i32 %190)
  br label %176

192:                                              ; preds = %176
  %193 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @hfs_bnode_move(%struct.hfs_bnode* %193, i32 %196, i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %192, %113
  %203 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %204 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %205 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @hfs_bnode_copy(%struct.hfs_bnode* %203, i32 %206, %struct.hfs_bnode* %207, i32 14, i32 %208)
  %210 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %211 = call i32 @hfs_bnode_dump(%struct.hfs_bnode* %210)
  %212 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %213 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %212)
  %214 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  store %struct.hfs_bnode* %214, %struct.hfs_bnode** %5, align 8
  %215 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %216 = icmp ne %struct.hfs_bnode* %215, null
  br i1 %216, label %217, label %276

217:                                              ; preds = %202
  %218 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %219 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %230, label %222

222:                                              ; preds = %217
  %223 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %224 = call i32 @hfs_btree_inc_height(%struct.hfs_btree* %223)
  %225 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %226 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %229 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %222, %217
  %231 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %232 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %233 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = call i8* @hfs_bnode_find(%struct.hfs_btree* %231, i64 %234)
  %236 = bitcast i8* %235 to %struct.hfs_bnode*
  %237 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %238 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %237, i32 0, i32 2
  store %struct.hfs_bnode* %236, %struct.hfs_bnode** %238, align 8
  %239 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %240 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %241 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @hfs_bnode_read_key(%struct.hfs_bnode* %239, i32 %242, i32 14)
  %244 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %245 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @cpu_to_be32(i32 %246)
  store i32 %247, i32* %15, align 4
  %248 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %249 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %248, i32 0, i32 2
  %250 = load %struct.hfs_bnode*, %struct.hfs_bnode** %249, align 8
  %251 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %252 = load i32, i32* @hfs_find_rec_by_key, align 4
  %253 = call i32 @__hfs_brec_find(%struct.hfs_bnode* %250, %struct.hfs_find_data* %251, i32 %252)
  %254 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %255 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %254, i32* %15, i32 4)
  %256 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %257 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %256, i32 0, i32 2
  %258 = load %struct.hfs_bnode*, %struct.hfs_bnode** %257, align 8
  %259 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %258)
  %260 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %261 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %260)
  %262 = load i32, i32* %10, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %275, label %264

264:                                              ; preds = %230
  %265 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %266 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %267 = icmp eq %struct.hfs_bnode* %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %286

269:                                              ; preds = %264
  %270 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %271 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %272 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @hfs_bnode_read_key(%struct.hfs_bnode* %270, i32 %273, i32 14)
  br label %275

275:                                              ; preds = %269, %230
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %6, align 8
  br label %276

276:                                              ; preds = %275, %202
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %276
  %280 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %281 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %28

285:                                              ; preds = %279, %276
  br label %286

286:                                              ; preds = %285, %268
  %287 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %288 = load %struct.hfs_find_data*, %struct.hfs_find_data** %3, align 8
  %289 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %288, i32 0, i32 2
  store %struct.hfs_bnode* %287, %struct.hfs_bnode** %289, align 8
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %286, %137, %50, %38, %26
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i8* @hfs_bnode_find(%struct.hfs_btree*, i64) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @PTR_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @__hfs_brec_find(%struct.hfs_bnode*, %struct.hfs_find_data*, i32) #1

declare dso_local i32 @hfs_bnode_dump(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_bnode_read_u16(%struct.hfs_bnode*, i32) #1

declare dso_local i32 @hfs_dbg(i32, i8*, ...) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_split(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_write_u16(%struct.hfs_bnode*, i32, i32) #1

declare dso_local i32 @hfs_bnode_move(%struct.hfs_bnode*, i32, i32, i32) #1

declare dso_local i32 @hfs_bnode_copy(%struct.hfs_bnode*, i32, %struct.hfs_bnode*, i32, i32) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_btree_inc_height(%struct.hfs_btree*) #1

declare dso_local i32 @hfs_bnode_read_key(%struct.hfs_bnode*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
