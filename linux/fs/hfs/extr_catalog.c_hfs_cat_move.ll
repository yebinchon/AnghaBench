; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_move.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_catalog.c_hfs_cat_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i8*, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.hfs_cat_rec = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"rename_cat: %u - %lu,%s - %lu,%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@HFS_CDR_FIL = common dso_local global i32 0, align 4
@HFS_FIL_THD = common dso_local global i32 0, align 4
@HFS_CDR_FTH = common dso_local global i32 0, align 4
@HFS_CDR_THD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_cat_move(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.hfs_find_data, align 8
  %14 = alloca %struct.hfs_find_data, align 8
  %15 = alloca %union.hfs_cat_rec, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.qstr* %2, %struct.qstr** %9, align 8
  store %struct.inode* %3, %struct.inode** %10, align 8
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %19 = load i32, i32* @CAT_MOD, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.qstr*, %struct.qstr** %9, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qstr*, %struct.qstr** %11, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hfs_dbg(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  store %struct.super_block* %36, %struct.super_block** %12, align 8
  %37 = load %struct.super_block*, %struct.super_block** %12, align 8
  %38 = call %struct.TYPE_6__* @HFS_SB(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hfs_find_init(i32 %40, %struct.hfs_find_data* %13)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %6, align 4
  br label %233

46:                                               ; preds = %5
  %47 = bitcast %struct.hfs_find_data* %14 to i8*
  %48 = bitcast %struct.hfs_find_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 2, %54
  %56 = call i32 @hfs_bmap_reserve(%struct.TYPE_5__* %50, i32 %55)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %227

60:                                               ; preds = %46
  %61 = load %struct.super_block*, %struct.super_block** %12, align 8
  %62 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qstr*, %struct.qstr** %9, align 8
  %68 = call i32 @hfs_cat_build_key(%struct.super_block* %61, i32 %63, i32 %66, %struct.qstr* %67)
  %69 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %227

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %76, 4
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %73
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %227

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @hfs_bnode_read(i32 %87, %union.hfs_cat_rec* %15, i32 %89, i32 %91)
  %93 = load %struct.super_block*, %struct.super_block** %12, align 8
  %94 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qstr*, %struct.qstr** %11, align 8
  %100 = call i32 @hfs_cat_build_key(%struct.super_block* %93, i32 %95, i32 %98, %struct.qstr* %99)
  %101 = call i32 @hfs_brec_find(%struct.hfs_find_data* %14)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %85
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @EEXIST, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %109, %106
  br label %227

113:                                              ; preds = %85
  %114 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %14, %union.hfs_cat_rec* %15, i32 %115)
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %227

120:                                              ; preds = %113
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = call i8* @current_time(%struct.inode* %125)
  %127 = load %struct.inode*, %struct.inode** %10, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 2
  store i8* %126, i8** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = call i32 @mark_inode_dirty(%struct.inode* %131)
  %133 = load %struct.super_block*, %struct.super_block** %12, align 8
  %134 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.qstr*, %struct.qstr** %9, align 8
  %140 = call i32 @hfs_cat_build_key(%struct.super_block* %133, i32 %135, i32 %138, %struct.qstr* %139)
  %141 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %120
  br label %227

145:                                              ; preds = %120
  %146 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %13)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %227

150:                                              ; preds = %145
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.inode*, %struct.inode** %8, align 8
  %156 = call i8* @current_time(%struct.inode* %155)
  %157 = load %struct.inode*, %struct.inode** %8, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 2
  store i8* %156, i8** %160, align 8
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = call i32 @mark_inode_dirty(%struct.inode* %161)
  %163 = bitcast %union.hfs_cat_rec* %15 to i32*
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* @HFS_CDR_FIL, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %150
  %169 = bitcast %union.hfs_cat_rec* %15 to %struct.TYPE_4__*
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @HFS_FIL_THD, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %227

176:                                              ; preds = %168, %150
  %177 = load %struct.super_block*, %struct.super_block** %12, align 8
  %178 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @hfs_cat_build_key(%struct.super_block* %177, i32 %179, i32 %180, %struct.qstr* null)
  %182 = call i32 @hfs_brec_find(%struct.hfs_find_data* %13)
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  br label %227

186:                                              ; preds = %176
  %187 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %13)
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %18, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %227

191:                                              ; preds = %186
  %192 = load %struct.super_block*, %struct.super_block** %12, align 8
  %193 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @hfs_cat_build_key(%struct.super_block* %192, i32 %194, i32 %195, %struct.qstr* null)
  %197 = load %struct.super_block*, %struct.super_block** %12, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* @HFS_CDR_FIL, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %191
  %202 = load i32, i32* @HFS_CDR_FTH, align 4
  br label %205

203:                                              ; preds = %191
  %204 = load i32, i32* @HFS_CDR_THD, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = load %struct.inode*, %struct.inode** %10, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.qstr*, %struct.qstr** %11, align 8
  %211 = call i32 @hfs_cat_build_thread(%struct.super_block* %197, %union.hfs_cat_rec* %15, i32 %206, i32 %209, %struct.qstr* %210)
  store i32 %211, i32* %16, align 4
  %212 = call i32 @hfs_brec_find(%struct.hfs_find_data* %14)
  store i32 %212, i32* %18, align 4
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* @ENOENT, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %205
  %218 = load i32, i32* %18, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* @EEXIST, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %227

224:                                              ; preds = %205
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %14, %union.hfs_cat_rec* %15, i32 %225)
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %224, %223, %190, %185, %175, %149, %144, %119, %112, %82, %72, %59
  %228 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %14, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @hfs_bnode_put(i32 %229)
  %231 = call i32 @hfs_find_exit(%struct.hfs_find_data* %13)
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %227, %44
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_6__* @HFS_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hfs_bmap_reserve(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %union.hfs_cat_rec*, i32, i32) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, %union.hfs_cat_rec*, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_cat_build_thread(%struct.super_block*, %union.hfs_cat_rec*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_bnode_put(i32) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
