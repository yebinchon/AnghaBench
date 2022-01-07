; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_check_node_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_readinode.c_check_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i64, i32, i32, i32, i32, %struct.jffs2_eraseblock* }
%struct.jffs2_eraseblock = type { i32, i32 }
%struct.jffs2_tmp_dnode_info = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.jffs2_raw_node_ref* }
%struct.jffs2_raw_node_ref = type { i64 }

@.str = private unnamed_addr constant [101 x i8] c"no need to check node at %#08x, data length %u, data starts at %#08x - it has already been checked.\0A\00", align 1
@.str.1 = private unnamed_addr constant [136 x i8] c"check node at %#08x, data length %u, partial CRC %#08x, correct CRC %#08x, data starts at %#08x, start checking from %#08x - %u bytes.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"MTD point returned len too short: %zu instead of %u.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"MTD point failed: error code %d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"can not read %d bytes from 0x%08x, error code: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"short read at %#08x: %zd instead of %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"wrong data CRC in data node at 0x%08x: read %#08x, calculated %#08x.\0A\00", align 1
@REF_PRISTINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_tmp_dnode_info*)* @check_node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_node_data(%struct.jffs2_sb_info* %0, %struct.jffs2_tmp_dnode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_tmp_dnode_info*, align 8
  %6 = alloca %struct.jffs2_raw_node_ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jffs2_eraseblock*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_tmp_dnode_info* %1, %struct.jffs2_tmp_dnode_info** %5, align 8
  %16 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %17 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %19, align 8
  store %struct.jffs2_raw_node_ref* %20, %struct.jffs2_raw_node_ref** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %22 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %28 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %27)
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %33 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %36 = call i64 @jffs2_is_writebuffered(%struct.jffs2_sb_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %2
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %39, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %49 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %47, %38
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %56 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %61 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %60)
  %62 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %63 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (i8*, i32, i32, i32, ...) @dbg_readinode(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %65)
  br label %210

67:                                               ; preds = %53
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %67, %2
  %75 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %76 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %75)
  %77 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %78 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %81 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %84 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (i8*, i32, i32, i32, ...) @dbg_readinode(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %93 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @mtd_point(i32 %94, i32 %95, i32 %96, i64* %14, i8** %10, i32* null)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %74
  %101 = load i64, i64* %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load i64, i64* %14, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %109 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %113 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i64, i64* %14, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @mtd_unpoint(i32 %114, i32 %115, i32 %117)
  br label %133

119:                                              ; preds = %100, %74
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %7, align 4
  %129 = call i32 (i8*, i32, ...) @JFFS2_WARNING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %122
  br label %132

131:                                              ; preds = %119
  store i32 1, i32* %8, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %105
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %176, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i8* @kmalloc(i32 %137, i32 %138)
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %275

149:                                              ; preds = %136
  %150 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @jffs2_flash_read(%struct.jffs2_sb_info* %150, i32 %151, i32 %152, i64* %14, i8* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @JFFS2_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %158, i64 %160, i32 %161)
  br label %260

163:                                              ; preds = %149
  %164 = load i64, i64* %14, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %164, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i32, i32* %12, align 4
  %170 = load i64, i64* %14, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @JFFS2_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %169, i64 %170, i32 %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %260

175:                                              ; preds = %163
  br label %176

176:                                              ; preds = %175, %133
  %177 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %178 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @crc32(i32 %179, i8* %180, i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %176
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 @kfree(i8* %186)
  br label %195

188:                                              ; preds = %176
  %189 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %190 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @mtd_unpoint(i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %198 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %196, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %203 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %202)
  %204 = load %struct.jffs2_tmp_dnode_info*, %struct.jffs2_tmp_dnode_info** %5, align 8
  %205 = getelementptr inbounds %struct.jffs2_tmp_dnode_info, %struct.jffs2_tmp_dnode_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @JFFS2_NOTICE(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %203, i32 %206, i32 %207)
  store i32 1, i32* %3, align 4
  br label %275

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %59
  %211 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %212 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %211, i32 0, i32 6
  %213 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %212, align 8
  %214 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %215 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %218 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = udiv i64 %216, %219
  %221 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %213, i64 %220
  store %struct.jffs2_eraseblock* %221, %struct.jffs2_eraseblock** %9, align 8
  %222 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %223 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %9, align 8
  %224 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %225 = call i32 @ref_totlen(%struct.jffs2_sb_info* %222, %struct.jffs2_eraseblock* %223, %struct.jffs2_raw_node_ref* %224)
  store i32 %225, i32* %13, align 4
  %226 = load i64, i64* @REF_PRISTINE, align 8
  %227 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %228 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = or i64 %229, %226
  store i64 %230, i64* %228, align 8
  %231 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %232 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %231, i32 0, i32 5
  %233 = call i32 @spin_lock(i32* %232)
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %9, align 8
  %236 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %9, align 8
  %241 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %246 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = add nsw i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %251 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %255 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %9, align 8
  %256 = call i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info* %254, %struct.jffs2_eraseblock* %255)
  %257 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %258 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %257, i32 0, i32 5
  %259 = call i32 @spin_unlock(i32* %258)
  store i32 0, i32* %3, align 4
  br label %275

260:                                              ; preds = %168, %157
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = load i8*, i8** %10, align 8
  %265 = call i32 @kfree(i8* %264)
  br label %273

266:                                              ; preds = %260
  %267 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %268 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @mtd_unpoint(i32 %269, i32 %270, i32 %271)
  br label %273

273:                                              ; preds = %266, %263
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %273, %210, %201, %146
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i64 @jffs2_is_writebuffered(%struct.jffs2_sb_info*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dbg_readinode(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @mtd_point(i32, i32, i32, i64*, i8**, i32*) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, ...) #1

declare dso_local i32 @mtd_unpoint(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jffs2_flash_read(%struct.jffs2_sb_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @JFFS2_ERROR(i8*, i32, i64, i32) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @JFFS2_NOTICE(i8*, i32, i32, i32) #1

declare dso_local i32 @ref_totlen(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jffs2_dbg_acct_paranoia_check_nolock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
