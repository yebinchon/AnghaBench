; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.ubifs_znode*, i64, i64, i64 }
%struct.ubifs_znode = type { i32, i64, i64, %struct.ubifs_znode*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.ubifs_znode*, %union.ubifs_key, i64, i64, i64 }
%union.ubifs_key = type { i32 }
%struct.ubifs_zbranch = type { i64, i64, i64, %struct.ubifs_znode*, %union.ubifs_key }

@.str = private unnamed_addr constant [30 x i8] c"inserted at %d level %d, key \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"splitting level %d, key \00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_DATA_KEY = common dso_local global i64 0, align 8
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"moving %d, keeping %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"inserting at %d level %d, key \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"creating new zroot at level %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32)* @tnc_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_insert(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, %struct.ubifs_zbranch* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca %struct.ubifs_zbranch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_znode*, align 8
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.ubifs_key*, align 8
  %18 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %20 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %19, i32 0, i32 4
  store %union.ubifs_key* %20, %union.ubifs_key** %17, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %25, %28
  br label %30

30:                                               ; preds = %24, %4
  %31 = phi i1 [ false, %4 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @ubifs_assert(%struct.ubifs_info* %21, i32 %32)
  br label %34

34:                                               ; preds = %381, %30
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %36 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %35, i32 0, i32 3
  %37 = load %struct.ubifs_znode*, %struct.ubifs_znode** %36, align 8
  store %struct.ubifs_znode* %37, %struct.ubifs_znode** %12, align 8
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %39 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %34
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %46, i32 %52)
  %54 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %57 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%union.ubifs_key*, i8*, i32, ...) @dbg_tnck(%union.ubifs_key* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %62 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @insert_zbranch(%struct.ubifs_info* %60, %struct.ubifs_znode* %61, %struct.ubifs_zbranch* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %45
  %68 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %69 = icmp ne %struct.ubifs_znode* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %72 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %77 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %78 = call i32 @correct_parent_keys(%struct.ubifs_info* %76, %struct.ubifs_znode* %77)
  br label %79

79:                                               ; preds = %75, %70, %67, %45
  store i32 0, i32* %5, align 4
  br label %525

80:                                               ; preds = %34
  %81 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %83 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 (%union.ubifs_key*, i8*, i32, ...) @dbg_tnck(%union.ubifs_key* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %94 = call i32 @ins_clr_old_idx_znode(%struct.ubifs_info* %92, %struct.ubifs_znode* %93)
  br label %95

95:                                               ; preds = %91, %80
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = call %struct.ubifs_znode* @kzalloc(i32 %98, i32 %99)
  store %struct.ubifs_znode* %100, %struct.ubifs_znode** %10, align 8
  %101 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %102 = icmp ne %struct.ubifs_znode* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %525

106:                                              ; preds = %95
  %107 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %109 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %108, i32 0, i32 3
  store %struct.ubifs_znode* %107, %struct.ubifs_znode** %109, align 8
  %110 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %111 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %114 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %116 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %106
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %121 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %122 = call i64 @key_type(%struct.ubifs_info* %120, %union.ubifs_key* %121)
  %123 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %125
  %132 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %133 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store %union.ubifs_key* %139, %union.ubifs_key** %18, align 8
  %140 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %141 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %142 = call i64 @key_inum(%struct.ubifs_info* %140, %union.ubifs_key* %141)
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %144 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %145 = call i64 @key_inum(%struct.ubifs_info* %143, %union.ubifs_key* %144)
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %131
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %149 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %150 = call i64 @key_type(%struct.ubifs_info* %148, %union.ubifs_key* %149)
  %151 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  store i32 1, i32* %16, align 4
  br label %154

154:                                              ; preds = %153, %147, %131
  br label %156

155:                                              ; preds = %125
  br label %167

156:                                              ; preds = %154
  br label %227

157:                                              ; preds = %119, %106
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %226

160:                                              ; preds = %157
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %166, label %226

166:                                              ; preds = %160
  store i32 0, i32* %16, align 4
  br label %167

167:                                              ; preds = %166, %155
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %170 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  %173 = sdiv i32 %172, 2
  %174 = icmp sge i32 %168, %173
  br i1 %174, label %175, label %225

175:                                              ; preds = %167
  %176 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %177 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %176, i32 0, i32 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  store %union.ubifs_key* %180, %union.ubifs_key** %18, align 8
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %182 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %183 = call i64 @key_inum(%struct.ubifs_info* %181, %union.ubifs_key* %182)
  %184 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %185 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %186 = call i64 @key_inum(%struct.ubifs_info* %184, %union.ubifs_key* %185)
  %187 = icmp eq i64 %183, %186
  br i1 %187, label %188, label %224

188:                                              ; preds = %175
  %189 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %190 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %191 = call i64 @key_type(%struct.ubifs_info* %189, %union.ubifs_key* %190)
  %192 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %224

194:                                              ; preds = %188
  %195 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %196 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %195, i32 0, i32 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  store %union.ubifs_key* %201, %union.ubifs_key** %18, align 8
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %203 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %204 = call i64 @key_inum(%struct.ubifs_info* %202, %union.ubifs_key* %203)
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %206 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %207 = call i64 @key_inum(%struct.ubifs_info* %205, %union.ubifs_key* %206)
  %208 = icmp ne i64 %204, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %194
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %211 = load %union.ubifs_key*, %union.ubifs_key** %18, align 8
  %212 = call i64 @key_type(%struct.ubifs_info* %210, %union.ubifs_key* %211)
  %213 = load i64, i64* @UBIFS_DATA_KEY, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %209, %194
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %14, align 4
  %217 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %218 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %14, align 4
  %221 = sub nsw i32 %219, %220
  store i32 %221, i32* %15, align 4
  %222 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %222, %struct.ubifs_znode** %11, align 8
  br label %272

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223, %188, %175
  br label %225

225:                                              ; preds = %224, %167
  br label %226

226:                                              ; preds = %225, %160, %157
  br label %227

227:                                              ; preds = %226, %156
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %232 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %245

234:                                              ; preds = %227
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  %239 = sdiv i32 %238, 2
  store i32 %239, i32* %14, align 4
  %240 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %241 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sub nsw i32 %242, %243
  store i32 %244, i32* %15, align 4
  br label %245

245:                                              ; preds = %234, %230
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %250, %struct.ubifs_znode** %11, align 8
  %251 = load i32, i32* %15, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %14, align 4
  %254 = sub nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  br label %271

255:                                              ; preds = %245
  %256 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %256, %struct.ubifs_znode** %11, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %9, align 4
  %259 = sub nsw i32 %258, %257
  store i32 %259, i32* %9, align 4
  %260 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %261 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %255
  %265 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %266 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %267 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %266, i32 0, i32 3
  %268 = load %struct.ubifs_znode*, %struct.ubifs_znode** %267, align 8
  %269 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %268, i32 0, i32 3
  store %struct.ubifs_znode* %265, %struct.ubifs_znode** %269, align 8
  br label %270

270:                                              ; preds = %264, %255
  br label %271

271:                                              ; preds = %270, %249
  br label %272

272:                                              ; preds = %271, %215
  %273 = load i32, i32* @DIRTY_ZNODE, align 4
  %274 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %275 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %274, i32 0, i32 5
  %276 = call i32 @__set_bit(i32 %273, i32* %275)
  %277 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %277, i32 0, i32 2
  %279 = call i32 @atomic_long_inc(i32* %278)
  %280 = load i32, i32* %15, align 4
  %281 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %282 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load i32, i32* %14, align 4
  %284 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %285 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %286, i32 %287)
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %348, %272
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* %15, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %351

293:                                              ; preds = %289
  %294 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %295 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %294, i32 0, i32 4
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %301 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %300, i32 0, i32 4
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i64 %306
  %308 = bitcast %struct.TYPE_4__* %299 to i8*
  %309 = bitcast %struct.TYPE_4__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %308, i8* align 8 %309, i64 40, i1 false)
  %310 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %311 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %347

314:                                              ; preds = %293
  %315 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %316 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %315, i32 0, i32 4
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load %struct.ubifs_znode*, %struct.ubifs_znode** %321, align 8
  %323 = icmp ne %struct.ubifs_znode* %322, null
  br i1 %323, label %324, label %346

324:                                              ; preds = %314
  %325 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %326 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %327 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %326, i32 0, i32 4
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load %struct.ubifs_znode*, %struct.ubifs_znode** %332, align 8
  %334 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %333, i32 0, i32 3
  store %struct.ubifs_znode* %325, %struct.ubifs_znode** %334, align 8
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %338 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %337, i32 0, i32 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = load i32, i32* %13, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load %struct.ubifs_znode*, %struct.ubifs_znode** %343, align 8
  %345 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %344, i32 0, i32 2
  store i64 %336, i64* %345, align 8
  br label %346

346:                                              ; preds = %324, %314
  br label %347

347:                                              ; preds = %346, %293
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %13, align 4
  br label %289

351:                                              ; preds = %289
  %352 = load %union.ubifs_key*, %union.ubifs_key** %17, align 8
  %353 = load i32, i32* %9, align 4
  %354 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %355 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = call i32 (%union.ubifs_key*, i8*, i32, ...) @dbg_tnck(%union.ubifs_key* %352, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %353, i64 %356)
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %359 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %360 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %361 = load i32, i32* %9, align 4
  %362 = call i32 @insert_zbranch(%struct.ubifs_info* %358, %struct.ubifs_znode* %359, %struct.ubifs_zbranch* %360, i32 %361)
  %363 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %364 = icmp ne %struct.ubifs_znode* %363, null
  br i1 %364, label %365, label %406

365:                                              ; preds = %351
  %366 = load i32, i32* %9, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %365
  %369 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %370 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %371 = icmp eq %struct.ubifs_znode* %369, %370
  br i1 %371, label %372, label %381

372:                                              ; preds = %368
  %373 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %374 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %379 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %380 = call i32 @correct_parent_keys(%struct.ubifs_info* %378, %struct.ubifs_znode* %379)
  br label %381

381:                                              ; preds = %377, %372, %368, %365
  %382 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %383 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = add nsw i64 %384, 1
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %9, align 4
  %387 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %388 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %387, i32 0, i32 4
  %389 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %390 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %389, i32 0, i32 4
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i64 0
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  %394 = bitcast %union.ubifs_key* %388 to i8*
  %395 = bitcast %union.ubifs_key* %393 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %394, i8* align 8 %395, i64 4, i1 false)
  %396 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %397 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %398 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %397, i32 0, i32 3
  store %struct.ubifs_znode* %396, %struct.ubifs_znode** %398, align 8
  %399 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %400 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %399, i32 0, i32 2
  store i64 0, i64* %400, align 8
  %401 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %402 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %401, i32 0, i32 1
  store i64 0, i64* %402, align 8
  %403 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %8, align 8
  %404 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %403, i32 0, i32 0
  store i64 0, i64* %404, align 8
  %405 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %405, %struct.ubifs_znode** %7, align 8
  br label %34

406:                                              ; preds = %351
  %407 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %408 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = add nsw i64 %409, 1
  %411 = trunc i64 %410 to i32
  %412 = call i32 (i8*, i32, ...) @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %411)
  %413 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %414 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @GFP_NOFS, align 4
  %417 = call %struct.ubifs_znode* @kzalloc(i32 %415, i32 %416)
  store %struct.ubifs_znode* %417, %struct.ubifs_znode** %11, align 8
  %418 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %419 = icmp ne %struct.ubifs_znode* %418, null
  br i1 %419, label %423, label %420

420:                                              ; preds = %406
  %421 = load i32, i32* @ENOMEM, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %5, align 4
  br label %525

423:                                              ; preds = %406
  %424 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %425 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %424, i32 0, i32 0
  store i32 2, i32* %425, align 8
  %426 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %427 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %428, 1
  %430 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %431 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %430, i32 0, i32 1
  store i64 %429, i64* %431, align 8
  %432 = load i32, i32* @DIRTY_ZNODE, align 4
  %433 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %434 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %433, i32 0, i32 5
  %435 = call i32 @__set_bit(i32 %432, i32* %434)
  %436 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %437 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %436, i32 0, i32 2
  %438 = call i32 @atomic_long_inc(i32* %437)
  %439 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %440 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %439, i32 0, i32 4
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i64 0
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %442, i32 0, i32 1
  %444 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %445 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %444, i32 0, i32 4
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i64 0
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 1
  %449 = bitcast %union.ubifs_key* %443 to i8*
  %450 = bitcast %union.ubifs_key* %448 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %449, i8* align 8 %450, i64 4, i1 false)
  %451 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %452 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %453 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %452, i32 0, i32 4
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i64 0
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 0
  store %struct.ubifs_znode* %451, %struct.ubifs_znode** %456, align 8
  %457 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %458 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 3
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %462 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %461, i32 0, i32 4
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i64 0
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 4
  store i64 %460, i64* %465, align 8
  %466 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %467 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 2
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %471 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %470, i32 0, i32 4
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i64 0
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 3
  store i64 %469, i64* %474, align 8
  %475 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %476 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %480 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %479, i32 0, i32 4
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i64 0
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 2
  store i64 %478, i64* %483, align 8
  %484 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %485 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %484, i32 0, i32 4
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i64 1
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 1
  %489 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %490 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %489, i32 0, i32 4
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i64 0
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 1
  %494 = bitcast %union.ubifs_key* %488 to i8*
  %495 = bitcast %union.ubifs_key* %493 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %494, i8* align 8 %495, i64 4, i1 false)
  %496 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %497 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %498 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %497, i32 0, i32 4
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i64 1
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 0
  store %struct.ubifs_znode* %496, %struct.ubifs_znode** %501, align 8
  %502 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %503 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 3
  store i64 0, i64* %504, align 8
  %505 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %506 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i32 0, i32 2
  store i64 0, i64* %507, align 8
  %508 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %509 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 1
  store i64 0, i64* %510, align 8
  %511 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %512 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %513 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %513, i32 0, i32 0
  store %struct.ubifs_znode* %511, %struct.ubifs_znode** %514, align 8
  %515 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %516 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %517 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %516, i32 0, i32 3
  store %struct.ubifs_znode* %515, %struct.ubifs_znode** %517, align 8
  %518 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  %519 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %518, i32 0, i32 2
  store i64 1, i64* %519, align 8
  %520 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %521 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %522 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %521, i32 0, i32 3
  store %struct.ubifs_znode* %520, %struct.ubifs_znode** %522, align 8
  %523 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %524 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %523, i32 0, i32 2
  store i64 0, i64* %524, align 8
  store i32 0, i32* %5, align 4
  br label %525

525:                                              ; preds = %423, %420, %103, %79
  %526 = load i32, i32* %5, align 4
  ret i32 %526
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*, i32, ...) #1

declare dso_local i32 @insert_zbranch(%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32) #1

declare dso_local i32 @correct_parent_keys(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @ins_clr_old_idx_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @kzalloc(i32, i32) #1

declare dso_local i64 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i64 @key_inum(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
