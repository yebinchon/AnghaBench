; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.gfs2_args*, %struct.TYPE_2__* }
%struct.gfs2_args = type { i32, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.gfs2_args, %struct.gfs2_tune }
%struct.gfs2_tune = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"gfs2: reconfiguration of locking protocol not allowed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"gfs2: reconfiguration of lock table not allowed\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"gfs2: reconfiguration of host data not allowed\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"gfs2: reconfiguration of spectator mode not allowed\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"gfs2: reconfiguration of localflocks not allowed\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"gfs2: switching between gfs2 and gfs2meta not allowed\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"gfs2: unable to remount read-only\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"gfs2: unable to remount read-write\00", align 1
@SB_POSIXACL = common dso_local global i32 0, align 4
@SDF_NOBARRIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @gfs2_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_reconfigure(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_args*, align 8
  %7 = alloca %struct.gfs2_args*, align 8
  %8 = alloca %struct.gfs2_tune*, align 8
  %9 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %11 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %4, align 8
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %5, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 1
  store %struct.gfs2_args* %19, %struct.gfs2_args** %6, align 8
  %20 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %21 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %20, i32 0, i32 1
  %22 = load %struct.gfs2_args*, %struct.gfs2_args** %21, align 8
  store %struct.gfs2_args* %22, %struct.gfs2_args** %7, align 8
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 2
  store %struct.gfs2_tune* %24, %struct.gfs2_tune** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = call i32 @sync_filesystem(%struct.super_block* %25)
  %27 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %28 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %31 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %34 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %36 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %41 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %46 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %53

47:                                               ; preds = %1
  %48 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %49 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %52 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %55 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %58 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %61 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @strcmp(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %67 = call i32 @errorf(%struct.fs_context* %66, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %263

70:                                               ; preds = %53
  %71 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %75 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @strcmp(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %81 = call i32 @errorf(%struct.fs_context* %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %263

84:                                               ; preds = %70
  %85 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %86 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %89 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @strcmp(i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %95 = call i32 @errorf(%struct.fs_context* %94, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %263

98:                                               ; preds = %84
  %99 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %100 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %103 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %108 = call i32 @errorf(%struct.fs_context* %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %263

111:                                              ; preds = %98
  %112 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %113 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %116 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %121 = call i32 @errorf(%struct.fs_context* %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %263

124:                                              ; preds = %111
  %125 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %126 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %129 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %134 = call i32 @errorf(%struct.fs_context* %133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %263

137:                                              ; preds = %124
  %138 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %139 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @SB_RDONLY, align 4
  %144 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %145 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.super_block*, %struct.super_block** %4, align 8
  %150 = getelementptr inbounds %struct.super_block, %struct.super_block* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %153 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = xor i32 %151, %154
  %156 = load i32, i32* @SB_RDONLY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %148
  %160 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %161 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SB_RDONLY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %168 = call i32 @gfs2_make_fs_ro(%struct.gfs2_sbd* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %173 = call i32 @errorf(%struct.fs_context* %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %166
  br label %184

175:                                              ; preds = %159
  %176 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %177 = call i32 @gfs2_make_fs_rw(%struct.gfs2_sbd* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %182 = call i32 @errorf(%struct.fs_context* %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %175
  br label %184

184:                                              ; preds = %183, %174
  br label %185

185:                                              ; preds = %184, %148
  %186 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %187 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %186, i32 0, i32 1
  %188 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %189 = bitcast %struct.gfs2_args* %187 to i8*
  %190 = bitcast %struct.gfs2_args* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 72, i1 false)
  %191 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %192 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %185
  %197 = load i32, i32* @SB_POSIXACL, align 4
  %198 = load %struct.super_block*, %struct.super_block** %4, align 8
  %199 = getelementptr inbounds %struct.super_block, %struct.super_block* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %209

202:                                              ; preds = %185
  %203 = load i32, i32* @SB_POSIXACL, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.super_block*, %struct.super_block** %4, align 8
  %206 = getelementptr inbounds %struct.super_block, %struct.super_block* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %202, %196
  %210 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %211 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load i32, i32* @SDF_NOBARRIERS, align 4
  %217 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %218 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %217, i32 0, i32 0
  %219 = call i32 @set_bit(i32 %216, i32* %218)
  br label %225

220:                                              ; preds = %209
  %221 = load i32, i32* @SDF_NOBARRIERS, align 4
  %222 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %223 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %222, i32 0, i32 0
  %224 = call i32 @clear_bit(i32 %221, i32* %223)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %227 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %226, i32 0, i32 2
  %228 = call i32 @spin_lock(i32* %227)
  %229 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %230 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %233 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  %234 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %235 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %238 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %240 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %225
  %244 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %245 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %244, i32 0, i32 0
  store i32 0, i32* %245, align 4
  %246 = load %struct.gfs2_args*, %struct.gfs2_args** %7, align 8
  %247 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %250 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  br label %256

251:                                              ; preds = %225
  %252 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %253 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %252, i32 0, i32 0
  store i32 1, i32* %253, align 4
  %254 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %255 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %254, i32 0, i32 1
  store i32 30, i32* %255, align 4
  br label %256

256:                                              ; preds = %251, %243
  %257 = load %struct.gfs2_tune*, %struct.gfs2_tune** %8, align 8
  %258 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %257, i32 0, i32 2
  %259 = call i32 @spin_unlock(i32* %258)
  %260 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %261 = call i32 @gfs2_online_uevent(%struct.gfs2_sbd* %260)
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %256, %132, %119, %106, %93, %79, %65
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @errorf(%struct.fs_context*, i8*) #1

declare dso_local i32 @gfs2_make_fs_ro(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_make_fs_rw(%struct.gfs2_sbd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @gfs2_online_uevent(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
