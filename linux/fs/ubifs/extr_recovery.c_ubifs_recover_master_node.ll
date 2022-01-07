; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_master_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_master_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.ubifs_mst_node*, i64, %struct.ubifs_mst_node*, i64 }
%struct.ubifs_mst_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@UBIFS_MST_LNUM = common dso_local global i64 0, align 8
@UBIFS_MST_RCVRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"recovery recovery\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"recovered master node from LEB %d\00", align 1
@UBIFS_MST_NODE_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_MST_DIRTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to recover master node\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"dumping first master node\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"dumping second master node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_recover_master_node(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ubifs_mst_node*, align 8
  %9 = alloca %struct.ubifs_mst_node*, align 8
  %10 = alloca %struct.ubifs_mst_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store %struct.ubifs_mst_node* null, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* null, %struct.ubifs_mst_node** %9, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %21 = call i32 @get_master_node(%struct.ubifs_info* %19, i64 %20, i8** %4, %struct.ubifs_mst_node** %8, i8** %6)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %232

25:                                               ; preds = %1
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @get_master_node(%struct.ubifs_info* %26, i64 %28, i8** %5, %struct.ubifs_mst_node** %9, i8** %7)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %232

33:                                               ; preds = %25
  %34 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %35 = icmp ne %struct.ubifs_mst_node* %34, null
  br i1 %35, label %36, label %129

36:                                               ; preds = %33
  %37 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %38 = bitcast %struct.ubifs_mst_node* %37 to i8*
  %39 = load i8*, i8** %4, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %45 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load i32, i32* @UBIFS_MST_RCVRY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %59, %struct.ubifs_mst_node** %10, align 8
  br label %128

60:                                               ; preds = %54, %51, %36
  %61 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %62 = icmp ne %struct.ubifs_mst_node* %61, null
  br i1 %62, label %63, label %118

63:                                               ; preds = %60
  %64 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %65 = bitcast %struct.ubifs_mst_node* %64 to i8*
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %63
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %77 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %78 = call i64 @ubifs_compare_master_node(%struct.ubifs_info* %75, %struct.ubifs_mst_node* %76, %struct.ubifs_mst_node* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %229

81:                                               ; preds = %74
  %82 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %82, %struct.ubifs_mst_node** %10, align 8
  br label %117

83:                                               ; preds = %63
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %229

93:                                               ; preds = %89
  %94 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %94, %struct.ubifs_mst_node** %10, align 8
  br label %116

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load i8*, i8** %6, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %229

112:                                              ; preds = %108
  %113 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %113, %struct.ubifs_mst_node** %10, align 8
  br label %115

114:                                              ; preds = %98, %95
  br label %229

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115, %93
  br label %117

117:                                              ; preds = %116, %81
  br label %127

118:                                              ; preds = %60
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118
  br label %229

125:                                              ; preds = %121
  %126 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %126, %struct.ubifs_mst_node** %10, align 8
  br label %127

127:                                              ; preds = %125, %117
  br label %128

128:                                              ; preds = %127, %57
  br label %153

129:                                              ; preds = %33
  %130 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %131 = icmp ne %struct.ubifs_mst_node* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %229

133:                                              ; preds = %129
  %134 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %135 = bitcast %struct.ubifs_mst_node* %134 to i8*
  %136 = load i8*, i8** %5, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %147 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sle i32 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %229

151:                                              ; preds = %133
  %152 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  store %struct.ubifs_mst_node* %152, %struct.ubifs_mst_node** %10, align 8
  br label %153

153:                                              ; preds = %151, %128
  %154 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %155 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %156 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %157 = icmp eq %struct.ubifs_mst_node* %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i64, i64* @UBIFS_MST_LNUM, align 8
  br label %163

160:                                              ; preds = %153
  %161 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %162 = add nsw i64 %161, 1
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi i64 [ %159, %158 ], [ %162, %160 ]
  %165 = call i32 @ubifs_msg(%struct.ubifs_info* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %164)
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 2
  %168 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %167, align 8
  %169 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %170 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %171 = call i32 @memcpy(%struct.ubifs_mst_node* %168, %struct.ubifs_mst_node* %169, i32 %170)
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %206

176:                                              ; preds = %163
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call %struct.ubifs_mst_node* @kmalloc(i32 %177, i32 %178)
  %180 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %181 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %180, i32 0, i32 4
  store %struct.ubifs_mst_node* %179, %struct.ubifs_mst_node** %181, align 8
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %183 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %182, i32 0, i32 4
  %184 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %183, align 8
  %185 = icmp ne %struct.ubifs_mst_node* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %12, align 4
  br label %232

189:                                              ; preds = %176
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %191 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %190, i32 0, i32 4
  %192 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %191, align 8
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 2
  %195 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %194, align 8
  %196 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %197 = call i32 @memcpy(%struct.ubifs_mst_node* %192, %struct.ubifs_mst_node* %195, i32 %196)
  %198 = load i32, i32* @UBIFS_MST_DIRTY, align 4
  %199 = call i32 @cpu_to_le32(i32 %198)
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %201 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %200, i32 0, i32 2
  %202 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %201, align 8
  %203 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %199
  store i32 %205, i32* %203, align 4
  br label %224

206:                                              ; preds = %163
  %207 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %208 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @le64_to_cpu(i32 %210)
  %212 = sub nsw i64 %211, 1
  %213 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %214 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %216 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %217 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %216, i32 0, i32 2
  %218 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %217, align 8
  %219 = call i32 @write_rcvrd_mst_node(%struct.ubifs_info* %215, %struct.ubifs_mst_node* %218)
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %206
  br label %232

223:                                              ; preds = %206
  br label %224

224:                                              ; preds = %223, %189
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @vfree(i8* %225)
  %227 = load i8*, i8** %4, align 8
  %228 = call i32 @vfree(i8* %227)
  store i32 0, i32* %2, align 4
  br label %258

229:                                              ; preds = %150, %132, %124, %114, %111, %92, %80
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %12, align 4
  br label %232

232:                                              ; preds = %229, %222, %186, %32, %24
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %234 = call i32 @ubifs_err(%struct.ubifs_info* %233, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %235 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %236 = icmp ne %struct.ubifs_mst_node* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %239 = call i32 @ubifs_err(%struct.ubifs_info* %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %241 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %242 = call i32 @ubifs_dump_node(%struct.ubifs_info* %240, %struct.ubifs_mst_node* %241)
  br label %243

243:                                              ; preds = %237, %232
  %244 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %245 = icmp ne %struct.ubifs_mst_node* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %248 = call i32 @ubifs_err(%struct.ubifs_info* %247, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %249 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %250 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %251 = call i32 @ubifs_dump_node(%struct.ubifs_info* %249, %struct.ubifs_mst_node* %250)
  br label %252

252:                                              ; preds = %246, %243
  %253 = load i8*, i8** %5, align 8
  %254 = call i32 @vfree(i8* %253)
  %255 = load i8*, i8** %4, align 8
  %256 = call i32 @vfree(i8* %255)
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %224
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @dbg_rcvry(i8*) #1

declare dso_local i32 @get_master_node(%struct.ubifs_info*, i64, i8**, %struct.ubifs_mst_node**, i8**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ubifs_compare_master_node(%struct.ubifs_info*, %struct.ubifs_mst_node*, %struct.ubifs_mst_node*) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ubifs_mst_node*, %struct.ubifs_mst_node*, i32) #1

declare dso_local %struct.ubifs_mst_node* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @write_rcvrd_mst_node(%struct.ubifs_info*, %struct.ubifs_mst_node*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_mst_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
