; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_bh_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_bh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrpd = type { i32, i32, %struct.gfs2_bitmap*, %struct.TYPE_8__*, i32, i32, i32, i64, %struct.gfs2_glock*, %struct.gfs2_sbd* }
%struct.gfs2_bitmap = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@GFS2_METATYPE_RB = common dso_local global i32 0, align 4
@GFS2_METATYPE_RG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_RDF_UPTODATE = common dso_local global i32 0, align 4
@GBF_FULL = common dso_local global i32 0, align 4
@GFS2_RDF_CHECK = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rgrpd*)* @gfs2_rgrp_bh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rgrp_bh_get(%struct.gfs2_rgrpd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_bitmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_rgrpd* %0, %struct.gfs2_rgrpd** %3, align 8
  %11 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %11, i32 0, i32 9
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %4, align 8
  %14 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %14, i32 0, i32 8
  %16 = load %struct.gfs2_glock*, %struct.gfs2_glock** %15, align 8
  store %struct.gfs2_glock* %16, %struct.gfs2_glock** %5, align 8
  %17 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 2
  %22 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %21, align 8
  %23 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %22, i64 0
  %24 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %239

28:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %34, i32 0, i32 2
  %36 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %36, i64 %38
  store %struct.gfs2_bitmap* %39, %struct.gfs2_bitmap** %7, align 8
  %40 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %42 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %48 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %47, i32 0, i32 1
  %49 = call i32 @gfs2_meta_read(%struct.gfs2_glock* %40, i64 %46, i32 0, i32 0, %struct.TYPE_9__** %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %211

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %96, %57
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, -1
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %65 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %64, i32 0, i32 2
  %66 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %66, i64 %68
  store %struct.gfs2_bitmap* %69, %struct.gfs2_bitmap** %7, align 8
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %71 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i32 @gfs2_meta_wait(%struct.gfs2_sbd* %70, %struct.TYPE_9__* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %211

78:                                               ; preds = %63
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %80 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %81 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @GFS2_METATYPE_RB, align 4
  br label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @GFS2_METATYPE_RG, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %79, %struct.TYPE_9__* %82, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %211

96:                                               ; preds = %89
  br label %59

97:                                               ; preds = %59
  %98 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %99 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %150, label %104

104:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %119, %104
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32, i32* @GBF_FULL, align 4
  %111 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %112 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %111, i32 0, i32 2
  %113 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %113, i64 %115
  %117 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %116, i32 0, i32 2
  %118 = call i32 @clear_bit(i32 %110, i32* %117)
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %124 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %125 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %124, i32 0, i32 2
  %126 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %125, align 8
  %127 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %126, i64 0
  %128 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gfs2_rgrp_in(%struct.gfs2_rgrpd* %123, i32 %131)
  %133 = load i32, i32* @GFS2_RDF_UPTODATE, align 4
  %134 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %137 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  %140 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %141 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %144 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %146 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %149 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %122, %97
  %151 = load i32, i32* @GFS2_MAGIC, align 4
  %152 = call i64 @cpu_to_be32(i32 %151)
  %153 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %154 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %152, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %150
  %160 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %161 = call i32 @count_unlinked(%struct.gfs2_rgrpd* %160)
  %162 = call i64 @cpu_to_be32(i32 %161)
  %163 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %164 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i64 %162, i64* %166, align 8
  %167 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %168 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %167, i32 0, i32 3
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %171 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %170, i32 0, i32 2
  %172 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %171, align 8
  %173 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %172, i64 0
  %174 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @gfs2_rgrp_ondisk2lvb(%struct.TYPE_8__* %169, i32 %177)
  br label %210

179:                                              ; preds = %150
  %180 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %181 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %179
  %186 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %187 = call i32 @gfs2_rgrp_lvb_valid(%struct.gfs2_rgrpd* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %191 = call i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd* %190)
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %10, align 4
  br label %211

194:                                              ; preds = %185
  %195 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %196 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %195, i32 0, i32 3
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i32, i32* @GFS2_RDF_CHECK, align 4
  %203 = xor i32 %202, -1
  %204 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %205 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %201, %194
  br label %209

209:                                              ; preds = %208, %179
  br label %210

210:                                              ; preds = %209, %159
  store i32 0, i32* %2, align 4
  br label %239

211:                                              ; preds = %189, %93, %77, %52
  br label %212

212:                                              ; preds = %216, %211
  %213 = load i32, i32* %8, align 4
  %214 = add i32 %213, -1
  store i32 %214, i32* %8, align 4
  %215 = icmp ne i32 %213, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %212
  %217 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %218 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %217, i32 0, i32 2
  %219 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %219, i64 %221
  store %struct.gfs2_bitmap* %222, %struct.gfs2_bitmap** %7, align 8
  %223 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %224 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %223, i32 0, i32 1
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = call i32 @brelse(%struct.TYPE_9__* %225)
  %227 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %228 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %227, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %228, align 8
  %229 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %230 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %231 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = call i32 @gfs2_assert_warn(%struct.gfs2_sbd* %229, i32 %235)
  br label %212

237:                                              ; preds = %212
  %238 = load i32, i32* %10, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %237, %210, %27
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i32 @gfs2_meta_read(%struct.gfs2_glock*, i64, i32, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @gfs2_meta_wait(%struct.gfs2_sbd*, %struct.TYPE_9__*) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_rgrp_in(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @count_unlinked(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_rgrp_ondisk2lvb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @gfs2_rgrp_lvb_valid(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @gfs2_consist_rgrpd(%struct.gfs2_rgrpd*) #1

declare dso_local i32 @brelse(%struct.TYPE_9__*) #1

declare dso_local i32 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
