; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diUpdatePMap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diUpdatePMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.tblock = type { i32, i32, i32, i32 }
%struct.iag = type { i32*, i32* }
%struct.metapage = type { i32, i32, i32, %struct.jfs_log*, i64 }
%struct.jfs_log = type { i32 }
%struct.inomap = type { i32 }
%struct.TYPE_4__ = type { %struct.inomap* }
%struct.TYPE_3__ = type { %struct.jfs_log* }

@.str = private unnamed_addr constant [28 x i8] c"the iag is outside the map\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@INOSPERIAG = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@HIGHORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"inode %ld not marked as allocated in wmap!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"inode %ld not marked as allocated in pmap!\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"the inode is not allocated in the working map\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"the inode is not free in the persistent map\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diUpdatePMap(%struct.inode* %0, i64 %1, i32 %2, %struct.tblock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tblock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iag*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inomap*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.jfs_log*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tblock* %3, %struct.tblock** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.inomap*, %struct.inomap** %26, align 8
  store %struct.inomap* %27, %struct.inomap** %17, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @INOTOIAG(i64 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.inomap*, %struct.inomap** %17, align 8
  %32 = getelementptr inbounds %struct.inomap, %struct.inomap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @jfs_error(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %275

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %45 = call i32 @IREAD_LOCK(%struct.inode* %43, i32 %44)
  %46 = load %struct.inomap*, %struct.inomap** %17, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @diIAGRead(%struct.inomap* %46, i32 %47, %struct.metapage** %12)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call i32 @IREAD_UNLOCK(%struct.inode* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %275

55:                                               ; preds = %42
  %56 = load %struct.metapage*, %struct.metapage** %12, align 8
  %57 = call i32 @metapage_wait_for_io(%struct.metapage* %56)
  %58 = load %struct.metapage*, %struct.metapage** %12, align 8
  %59 = getelementptr inbounds %struct.metapage, %struct.metapage* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.iag*
  store %struct.iag* %61, %struct.iag** %11, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @INOSPERIAG, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @L2INOSPEREXT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @INOSPEREXT, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %71, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* @HIGHORDER, align 4
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %128

80:                                               ; preds = %55
  %81 = load %struct.iag*, %struct.iag** %11, align 8
  %82 = getelementptr inbounds %struct.iag, %struct.iag* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load i32, i32* %18, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %80
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 (i32, i8*, ...) @jfs_error(i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %92, %80
  %99 = load %struct.iag*, %struct.iag** %11, align 8
  %100 = getelementptr inbounds %struct.iag, %struct.iag* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le32_to_cpu(i32 %105)
  %107 = load i32, i32* %18, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %98
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* %7, align 8
  %115 = call i32 (i32, i8*, ...) @jfs_error(i32 %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %110, %98
  %117 = load i32, i32* %18, align 4
  %118 = xor i32 %117, -1
  %119 = call i32 @cpu_to_le32(i32 %118)
  %120 = load %struct.iag*, %struct.iag** %11, align 8
  %121 = getelementptr inbounds %struct.iag, %struct.iag* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %119
  store i32 %127, i32* %125, align 4
  br label %181

128:                                              ; preds = %55
  %129 = load %struct.iag*, %struct.iag** %11, align 8
  %130 = getelementptr inbounds %struct.iag, %struct.iag* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le32_to_cpu(i32 %135)
  %137 = load i32, i32* %18, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %128
  %141 = load %struct.metapage*, %struct.metapage** %12, align 8
  %142 = call i32 @release_metapage(%struct.metapage* %141)
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i32, i8*, ...) @jfs_error(i32 %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %275

149:                                              ; preds = %128
  %150 = load %struct.iag*, %struct.iag** %11, align 8
  %151 = getelementptr inbounds %struct.iag, %struct.iag* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  %158 = load i32, i32* %18, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %149
  %162 = load %struct.metapage*, %struct.metapage** %12, align 8
  %163 = call i32 @release_metapage(%struct.metapage* %162)
  %164 = load %struct.inode*, %struct.inode** %6, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @jfs_error(i32 %166, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %275

170:                                              ; preds = %149
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @cpu_to_le32(i32 %171)
  %173 = load %struct.iag*, %struct.iag** %11, align 8
  %174 = getelementptr inbounds %struct.iag, %struct.iag* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %172
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %170, %116
  %182 = load %struct.tblock*, %struct.tblock** %9, align 8
  %183 = getelementptr inbounds %struct.tblock, %struct.tblock* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %20, align 4
  %185 = load %struct.tblock*, %struct.tblock** %9, align 8
  %186 = getelementptr inbounds %struct.tblock, %struct.tblock* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call %struct.TYPE_3__* @JFS_SBI(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load %struct.jfs_log*, %struct.jfs_log** %189, align 8
  store %struct.jfs_log* %190, %struct.jfs_log** %19, align 8
  %191 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %192 = load i64, i64* %23, align 8
  %193 = call i32 @LOGSYNC_LOCK(%struct.jfs_log* %191, i64 %192)
  %194 = load %struct.metapage*, %struct.metapage** %12, align 8
  %195 = getelementptr inbounds %struct.metapage, %struct.metapage* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %248

198:                                              ; preds = %181
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %20, align 4
  %201 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %202 = call i32 @logdiff(i32 %199, i32 %200, %struct.jfs_log* %201)
  %203 = load i32, i32* %22, align 4
  %204 = load %struct.metapage*, %struct.metapage** %12, align 8
  %205 = getelementptr inbounds %struct.metapage, %struct.metapage* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %208 = call i32 @logdiff(i32 %203, i32 %206, %struct.jfs_log* %207)
  %209 = load i32, i32* %21, align 4
  %210 = load i32, i32* %22, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %198
  %213 = load i32, i32* %20, align 4
  %214 = load %struct.metapage*, %struct.metapage** %12, align 8
  %215 = getelementptr inbounds %struct.metapage, %struct.metapage* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.metapage*, %struct.metapage** %12, align 8
  %217 = getelementptr inbounds %struct.metapage, %struct.metapage* %216, i32 0, i32 2
  %218 = load %struct.tblock*, %struct.tblock** %9, align 8
  %219 = getelementptr inbounds %struct.tblock, %struct.tblock* %218, i32 0, i32 2
  %220 = call i32 @list_move(i32* %217, i32* %219)
  br label %221

221:                                              ; preds = %212, %198
  %222 = load %struct.metapage*, %struct.metapage** %12, align 8
  %223 = getelementptr inbounds %struct.metapage, %struct.metapage* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @assert(i32 %224)
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.tblock*, %struct.tblock** %9, align 8
  %228 = getelementptr inbounds %struct.tblock, %struct.tblock* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %231 = call i32 @logdiff(i32 %226, i32 %229, %struct.jfs_log* %230)
  %232 = load i32, i32* %22, align 4
  %233 = load %struct.metapage*, %struct.metapage** %12, align 8
  %234 = getelementptr inbounds %struct.metapage, %struct.metapage* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %237 = call i32 @logdiff(i32 %232, i32 %235, %struct.jfs_log* %236)
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %22, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %221
  %242 = load %struct.tblock*, %struct.tblock** %9, align 8
  %243 = getelementptr inbounds %struct.tblock, %struct.tblock* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.metapage*, %struct.metapage** %12, align 8
  %246 = getelementptr inbounds %struct.metapage, %struct.metapage* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %241, %221
  br label %269

248:                                              ; preds = %181
  %249 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %250 = load %struct.metapage*, %struct.metapage** %12, align 8
  %251 = getelementptr inbounds %struct.metapage, %struct.metapage* %250, i32 0, i32 3
  store %struct.jfs_log* %249, %struct.jfs_log** %251, align 8
  %252 = load i32, i32* %20, align 4
  %253 = load %struct.metapage*, %struct.metapage** %12, align 8
  %254 = getelementptr inbounds %struct.metapage, %struct.metapage* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %256 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  %259 = load %struct.metapage*, %struct.metapage** %12, align 8
  %260 = getelementptr inbounds %struct.metapage, %struct.metapage* %259, i32 0, i32 2
  %261 = load %struct.tblock*, %struct.tblock** %9, align 8
  %262 = getelementptr inbounds %struct.tblock, %struct.tblock* %261, i32 0, i32 2
  %263 = call i32 @list_add(i32* %260, i32* %262)
  %264 = load %struct.tblock*, %struct.tblock** %9, align 8
  %265 = getelementptr inbounds %struct.tblock, %struct.tblock* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.metapage*, %struct.metapage** %12, align 8
  %268 = getelementptr inbounds %struct.metapage, %struct.metapage* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  br label %269

269:                                              ; preds = %248, %247
  %270 = load %struct.jfs_log*, %struct.jfs_log** %19, align 8
  %271 = load i64, i64* %23, align 8
  %272 = call i32 @LOGSYNC_UNLOCK(%struct.jfs_log* %270, i64 %271)
  %273 = load %struct.metapage*, %struct.metapage** %12, align 8
  %274 = call i32 @write_metapage(%struct.metapage* %273)
  store i32 0, i32* %5, align 4
  br label %275

275:                                              ; preds = %269, %161, %140, %53, %35
  %276 = load i32, i32* %5, align 4
  ret i32 %276
}

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @INOTOIAG(i64) #1

declare dso_local i32 @jfs_error(i32, i8*, ...) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @metapage_wait_for_io(%struct.metapage*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local %struct.TYPE_3__* @JFS_SBI(i32) #1

declare dso_local i32 @LOGSYNC_LOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @logdiff(i32, i32, %struct.jfs_log*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @LOGSYNC_UNLOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
