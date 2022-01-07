; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_scan_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_scan_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, %struct.ubifs_pnode* }
%struct.ubifs_pnode = type { i64, %struct.TYPE_5__*, %struct.ubifs_pnode*, %struct.ubifs_lprops* }
%struct.TYPE_5__ = type { %struct.ubifs_pnode*, %struct.ubifs_pnode* }
%struct.ubifs_lprops = type { i32 }
%struct.ubifs_info.0 = type opaque
%struct.ubifs_lprops.1 = type opaque
%struct.ubifs_nnode = type { i64, %struct.TYPE_5__*, %struct.ubifs_nnode*, %struct.ubifs_lprops* }
%struct.lpt_scan_node = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.ubifs_pnode*, %struct.ubifs_pnode* }
%struct.TYPE_4__ = type { %struct.ubifs_pnode* }
%struct.ubifs_cnode = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@LPT_SCAN_ADD = common dso_local global i32 0, align 4
@LPT_SCAN_STOP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_lpt_scan_nolock(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_nnode*, align 8
  %18 = alloca %struct.ubifs_pnode*, align 8
  %19 = alloca %struct.lpt_scan_node*, align 8
  %20 = alloca %struct.ubifs_lprops*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.ubifs_nnode*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)* %3, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %5
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br label %55

55:                                               ; preds = %49, %42
  %56 = phi i1 [ false, %42 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @ubifs_assert(%struct.ubifs_info* %43, i32 %57)
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %68 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br label %71

71:                                               ; preds = %65, %55
  %72 = phi i1 [ false, %55 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @ubifs_assert(%struct.ubifs_info* %59, i32 %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 4
  %77 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %76, align 8
  %78 = icmp ne %struct.ubifs_pnode* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %71
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %81 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %80, i32* null, i32 0)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %485

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %71
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* @GFP_NOFS, align 4
  %93 = call %struct.lpt_scan_node* @kmalloc_array(i32 %91, i32 48, i32 %92)
  store %struct.lpt_scan_node* %93, %struct.lpt_scan_node** %19, align 8
  %94 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %95 = icmp ne %struct.lpt_scan_node* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %485

99:                                               ; preds = %87
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 4
  %102 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %101, align 8
  %103 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %104 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %103, i64 0
  %105 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store %struct.ubifs_pnode* %102, %struct.ubifs_pnode** %106, align 8
  %107 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %108 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %107, i64 0
  %109 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %386, %99
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 4
  %113 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %112, align 8
  %114 = bitcast %struct.ubifs_pnode* %113 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %114, %struct.ubifs_nnode** %17, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  store i32 %119, i32* %13, align 4
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %124 = mul nsw i32 %122, %123
  store i32 %124, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %160, %110
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %16, align 4
  %134 = ashr i32 %132, %133
  %135 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %134, %136
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %16, align 4
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %142 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %142, i64 %144
  %146 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %147 = bitcast %struct.ubifs_nnode* %146 to %struct.ubifs_pnode*
  %148 = load i32, i32* %15, align 4
  %149 = call %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info* %141, %struct.lpt_scan_node* %145, %struct.ubifs_pnode* %147, i32 %148)
  %150 = bitcast %struct.ubifs_pnode* %149 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %150, %struct.ubifs_nnode** %17, align 8
  %151 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %152 = bitcast %struct.ubifs_nnode* %151 to %struct.ubifs_pnode*
  %153 = call i64 @IS_ERR(%struct.ubifs_pnode* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %131
  %156 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %157 = bitcast %struct.ubifs_nnode* %156 to %struct.ubifs_pnode*
  %158 = call i32 @PTR_ERR(%struct.ubifs_pnode* %157)
  store i32 %158, i32* %12, align 4
  br label %481

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %125

163:                                              ; preds = %125
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %16, align 4
  %166 = ashr i32 %164, %165
  %167 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %168 = sub nsw i32 %167, 1
  %169 = and i32 %166, %168
  store i32 %169, i32* %15, align 4
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %171 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %171, i64 %173
  %175 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %176 = bitcast %struct.ubifs_nnode* %175 to %struct.ubifs_pnode*
  %177 = load i32, i32* %15, align 4
  %178 = call %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info* %170, %struct.lpt_scan_node* %174, %struct.ubifs_pnode* %176, i32 %177)
  store %struct.ubifs_pnode* %178, %struct.ubifs_pnode** %18, align 8
  %179 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %180 = call i64 @IS_ERR(%struct.ubifs_pnode* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %163
  %183 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %184 = call i32 @PTR_ERR(%struct.ubifs_pnode* %183)
  store i32 %184, i32* %12, align 4
  br label %481

185:                                              ; preds = %163
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %188 = sub nsw i32 %187, 1
  %189 = and i32 %186, %188
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %185, %395, %479
  %191 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %192 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %191, i32 0, i32 3
  %193 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %193, i64 %195
  store %struct.ubifs_lprops* %196, %struct.ubifs_lprops** %20, align 8
  %197 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %198 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %22, align 4
  %200 = load i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)*, i32 (%struct.ubifs_info.0*, %struct.ubifs_lprops.1*, i32, i8*)** %10, align 8
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %202 = bitcast %struct.ubifs_info* %201 to %struct.ubifs_info.0*
  %203 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %204 = bitcast %struct.ubifs_lprops* %203 to %struct.ubifs_lprops.1*
  %205 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %205, i64 %207
  %209 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 %200(%struct.ubifs_info.0* %202, %struct.ubifs_lprops.1* %204, i32 %210, i8* %211)
  store i32 %212, i32* %21, align 4
  %213 = load i32, i32* %21, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %190
  %216 = load i32, i32* %21, align 4
  store i32 %216, i32* %12, align 4
  br label %481

217:                                              ; preds = %190
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* @LPT_SCAN_ADD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %366

222:                                              ; preds = %217
  store i32 1, i32* %14, align 4
  br label %223

223:                                              ; preds = %288, %222
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %291

229:                                              ; preds = %223
  store i64 32, i64* %23, align 8
  %230 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %230, i64 %232
  %234 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %288

238:                                              ; preds = %229
  %239 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %239, i64 %241
  %243 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %242, i32 0, i32 4
  %244 = load i32, i32* @GFP_NOFS, align 4
  %245 = call %struct.ubifs_pnode* @kmemdup(i32* %243, i64 32, i32 %244)
  %246 = bitcast %struct.ubifs_pnode* %245 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %246, %struct.ubifs_nnode** %17, align 8
  %247 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %248 = icmp ne %struct.ubifs_nnode* %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %238
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %12, align 4
  br label %481

252:                                              ; preds = %238
  %253 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %254 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %253, i32 0, i32 2
  %255 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %254, align 8
  store %struct.ubifs_nnode* %255, %struct.ubifs_nnode** %24, align 8
  %256 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %257 = bitcast %struct.ubifs_nnode* %256 to %struct.ubifs_pnode*
  %258 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %24, align 8
  %259 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %258, i32 0, i32 1
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %262 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  store %struct.ubifs_pnode* %257, %struct.ubifs_pnode** %265, align 8
  %266 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %267 = bitcast %struct.ubifs_nnode* %266 to %struct.ubifs_pnode*
  %268 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %268, i64 %270
  %272 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  store %struct.ubifs_pnode* %267, %struct.ubifs_pnode** %273, align 8
  %274 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %274, i64 %276
  %278 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %277, i32 0, i32 0
  store i32 1, i32* %278, align 8
  %279 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %280 = bitcast %struct.ubifs_nnode* %279 to %struct.ubifs_pnode*
  %281 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %281, i64 %284
  %286 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  store %struct.ubifs_pnode* %280, %struct.ubifs_pnode** %287, align 8
  br label %288

288:                                              ; preds = %252, %237
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  br label %223

291:                                              ; preds = %223
  %292 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %293 = load i32, i32* %14, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %292, i64 %294
  %296 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %291
  %300 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %301 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %20, align 8
  %302 = call i32 @ubifs_ensure_cat(%struct.ubifs_info* %300, %struct.ubifs_lprops* %301)
  br label %349

303:                                              ; preds = %291
  store i64 32, i64* %25, align 8
  %304 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %304, i64 %306
  %308 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %307, i32 0, i32 2
  %309 = load i32, i32* @GFP_NOFS, align 4
  %310 = call %struct.ubifs_pnode* @kmemdup(i32* %308, i64 32, i32 %309)
  store %struct.ubifs_pnode* %310, %struct.ubifs_pnode** %18, align 8
  %311 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %312 = icmp ne %struct.ubifs_pnode* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %303
  %314 = load i32, i32* @ENOMEM, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %12, align 4
  br label %481

316:                                              ; preds = %303
  %317 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %318 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %317, i32 0, i32 2
  %319 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %318, align 8
  %320 = bitcast %struct.ubifs_pnode* %319 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %320, %struct.ubifs_nnode** %26, align 8
  %321 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %322 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %26, align 8
  %323 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %322, i32 0, i32 1
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %323, align 8
  %325 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %326 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  store %struct.ubifs_pnode* %321, %struct.ubifs_pnode** %329, align 8
  %330 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %331 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %331, i64 %333
  %335 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 1
  store %struct.ubifs_pnode* %330, %struct.ubifs_pnode** %336, align 8
  %337 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %337, i64 %339
  %341 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %340, i32 0, i32 0
  store i32 1, i32* %341, align 8
  %342 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %343 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %344 = call i32 @update_cats(%struct.ubifs_info* %342, %struct.ubifs_pnode* %343)
  %345 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %346 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %316, %299
  %350 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %351 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %352 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %351, i32 0, i32 4
  %353 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %352, align 8
  %354 = bitcast %struct.ubifs_pnode* %353 to %struct.ubifs_cnode*
  %355 = call i32 @dbg_check_lpt_nodes(%struct.ubifs_info* %350, %struct.ubifs_cnode* %354, i32 0, i32 0)
  store i32 %355, i32* %12, align 4
  %356 = load i32, i32* %12, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %349
  br label %481

359:                                              ; preds = %349
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %361 = call i32 @dbg_check_cats(%struct.ubifs_info* %360)
  store i32 %361, i32* %12, align 4
  %362 = load i32, i32* %12, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  br label %481

365:                                              ; preds = %359
  br label %366

366:                                              ; preds = %365, %217
  %367 = load i32, i32* %21, align 4
  %368 = load i32, i32* @LPT_SCAN_STOP, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  store i32 0, i32* %12, align 4
  br label %480

372:                                              ; preds = %366
  %373 = load i32, i32* %22, align 4
  %374 = load i32, i32* %9, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load i32, i32* @ENOSPC, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %12, align 4
  br label %481

379:                                              ; preds = %372
  %380 = load i32, i32* %22, align 4
  %381 = add nsw i32 %380, 1
  %382 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %383 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = icmp sge i32 %381, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %388 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %8, align 4
  br label %110

390:                                              ; preds = %379
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  %393 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %390
  %396 = load i32, i32* %15, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %15, align 4
  br label %190

398:                                              ; preds = %390
  %399 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %400 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %15, align 4
  br label %403

403:                                              ; preds = %398, %424
  %404 = load i32, i32* %14, align 4
  %405 = sub nsw i32 %404, 1
  store i32 %405, i32* %14, align 4
  %406 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %407 = load i32, i32* %14, align 4
  %408 = icmp sge i32 %407, 0
  %409 = zext i1 %408 to i32
  %410 = call i32 @ubifs_assert(%struct.ubifs_info* %406, i32 %409)
  %411 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %411, i64 %413
  %415 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %416, align 8
  %418 = bitcast %struct.ubifs_pnode* %417 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %418, %struct.ubifs_nnode** %17, align 8
  %419 = load i32, i32* %15, align 4
  %420 = add nsw i32 %419, 1
  %421 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %423, label %424

423:                                              ; preds = %403
  br label %429

424:                                              ; preds = %403
  %425 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %426 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = trunc i64 %427 to i32
  store i32 %428, i32* %15, align 4
  br label %403

429:                                              ; preds = %423
  %430 = load i32, i32* %15, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %15, align 4
  %432 = load i32, i32* %14, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %14, align 4
  br label %434

434:                                              ; preds = %460, %429
  %435 = load i32, i32* %14, align 4
  %436 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %437 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %463

440:                                              ; preds = %434
  %441 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %442 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %443 = load i32, i32* %14, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %442, i64 %444
  %446 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %447 = bitcast %struct.ubifs_nnode* %446 to %struct.ubifs_pnode*
  %448 = load i32, i32* %15, align 4
  %449 = call %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info* %441, %struct.lpt_scan_node* %445, %struct.ubifs_pnode* %447, i32 %448)
  %450 = bitcast %struct.ubifs_pnode* %449 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %450, %struct.ubifs_nnode** %17, align 8
  %451 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %452 = bitcast %struct.ubifs_nnode* %451 to %struct.ubifs_pnode*
  %453 = call i64 @IS_ERR(%struct.ubifs_pnode* %452)
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %440
  %456 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %457 = bitcast %struct.ubifs_nnode* %456 to %struct.ubifs_pnode*
  %458 = call i32 @PTR_ERR(%struct.ubifs_pnode* %457)
  store i32 %458, i32* %12, align 4
  br label %481

459:                                              ; preds = %440
  store i32 0, i32* %15, align 4
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %14, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %14, align 4
  br label %434

463:                                              ; preds = %434
  %464 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %465 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %466 = load i32, i32* %14, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.lpt_scan_node, %struct.lpt_scan_node* %465, i64 %467
  %469 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %17, align 8
  %470 = bitcast %struct.ubifs_nnode* %469 to %struct.ubifs_pnode*
  %471 = load i32, i32* %15, align 4
  %472 = call %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info* %464, %struct.lpt_scan_node* %468, %struct.ubifs_pnode* %470, i32 %471)
  store %struct.ubifs_pnode* %472, %struct.ubifs_pnode** %18, align 8
  %473 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %474 = call i64 @IS_ERR(%struct.ubifs_pnode* %473)
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %463
  %477 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %18, align 8
  %478 = call i32 @PTR_ERR(%struct.ubifs_pnode* %477)
  store i32 %478, i32* %12, align 4
  br label %481

479:                                              ; preds = %463
  store i32 0, i32* %15, align 4
  br label %190

480:                                              ; preds = %371
  br label %481

481:                                              ; preds = %480, %476, %455, %376, %364, %358, %313, %249, %215, %182, %155
  %482 = load %struct.lpt_scan_node*, %struct.lpt_scan_node** %19, align 8
  %483 = call i32 @kfree(%struct.lpt_scan_node* %482)
  %484 = load i32, i32* %12, align 4
  store i32 %484, i32* %6, align 4
  br label %485

485:                                              ; preds = %481, %96, %84
  %486 = load i32, i32* %6, align 4
  ret i32 %486
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.lpt_scan_node* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.ubifs_pnode* @scan_get_nnode(%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_pnode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @scan_get_pnode(%struct.ubifs_info*, %struct.lpt_scan_node*, %struct.ubifs_pnode*, i32) #1

declare dso_local %struct.ubifs_pnode* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @ubifs_ensure_cat(%struct.ubifs_info*, %struct.ubifs_lprops*) #1

declare dso_local i32 @update_cats(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local i32 @dbg_check_lpt_nodes(%struct.ubifs_info*, %struct.ubifs_cnode*, i32, i32) #1

declare dso_local i32 @dbg_check_cats(%struct.ubifs_info*) #1

declare dso_local i32 @kfree(%struct.lpt_scan_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
