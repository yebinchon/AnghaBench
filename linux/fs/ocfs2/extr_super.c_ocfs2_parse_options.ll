; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_super.c_ocfs2_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.mount_options = type { i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@OCFS2_MOUNT_NOINTR = common dso_local global i32 0, align 4
@OCFS2_DEFAULT_ATIME_QUANTUM = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@OCFS2_DEFAULT_RESV_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@OCFS2_MOUNT_HB_LOCAL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_HB_NONE = common dso_local global i32 0, align 4
@OCFS2_MOUNT_HB_GLOBAL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_BARRIER = common dso_local global i32 0, align 4
@OCFS2_MOUNT_ERRORS_CONT = common dso_local global i32 0, align 4
@OCFS2_MOUNT_ERRORS_ROFS = common dso_local global i32 0, align 4
@OCFS2_MOUNT_ERRORS_PANIC = common dso_local global i32 0, align 4
@OCFS2_MOUNT_DATA_WRITEBACK = common dso_local global i32 0, align 4
@OCFS2_MOUNT_NOUSERXATTR = common dso_local global i32 0, align 4
@JBD2_DEFAULT_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@OCFS2_MOUNT_LOCALFLOCKS = common dso_local global i32 0, align 4
@OCFS2_STACK_LABEL_LEN = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid cluster_stack option\0A\00", align 1
@OCFS2_CLASSIC_CLUSTER_STACK = common dso_local global i32 0, align 4
@OCFS2_MOUNT_INODE64 = common dso_local global i32 0, align 4
@OCFS2_MOUNT_USRQUOTA = common dso_local global i32 0, align 4
@OCFS2_MOUNT_GRPQUOTA = common dso_local global i32 0, align 4
@OCFS2_MOUNT_COHERENCY_BUFFERED = common dso_local global i32 0, align 4
@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_NO_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_MIN_RESV_LEVEL = common dso_local global i32 0, align 4
@OCFS2_MAX_RESV_LEVEL = common dso_local global i32 0, align 4
@OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Unrecognized mount option \22%s\22 or missing value\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Invalid heartbeat mount options\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, %struct.mount_options*, i32)* @ocfs2_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_parse_options(%struct.super_block* %0, i8* %1, %struct.mount_options* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mount_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.mount_options* %2, %struct.mount_options** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @MAX_OPT_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca %struct.TYPE_4__, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %28 ]
  %31 = call i32 @trace_ocfs2_parse_options(i32 %23, i8* %30)
  %32 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %33 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @OCFS2_MOUNT_NOINTR, align 4
  %35 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %36 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @OCFS2_DEFAULT_ATIME_QUANTUM, align 4
  %38 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %39 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %41 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %42 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %44 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %43, i32 0, i32 3
  store i32 -1, i32* %44, align 4
  %45 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %46 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* @OCFS2_DEFAULT_RESV_LEVEL, align 4
  %50 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %51 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %53 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %52, i32 0, i32 6
  store i32 -1, i32* %53, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %448

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %426, %65, %57
  %59 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %427

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %58

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* @tokens, align 4
  %69 = call i32 @match_token(i8* %67, i32 %68, %struct.TYPE_4__* %22)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %422 [
    i32 142, label %71
    i32 141, label %77
    i32 143, label %83
    i32 154, label %89
    i32 139, label %111
    i32 134, label %118
    i32 146, label %124
    i32 145, label %142
    i32 147, label %160
    i32 150, label %178
    i32 149, label %185
    i32 129, label %191
    i32 133, label %198
    i32 155, label %204
    i32 131, label %217
    i32 151, label %230
    i32 137, label %250
    i32 136, label %263
    i32 130, label %273
    i32 140, label %317
    i32 128, label %323
    i32 144, label %329
    i32 153, label %335
    i32 152, label %341
    i32 156, label %348
    i32 135, label %360
    i32 132, label %372
    i32 148, label %394
    i32 138, label %416
  ]

71:                                               ; preds = %66
  %72 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %73 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %74 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %426

77:                                               ; preds = %66
  %78 = load i32, i32* @OCFS2_MOUNT_HB_NONE, align 4
  %79 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %80 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %426

83:                                               ; preds = %66
  %84 = load i32, i32* @OCFS2_MOUNT_HB_GLOBAL, align 4
  %85 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %86 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %426

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %91 = call i32 @match_int(%struct.TYPE_4__* %90, i32* %15)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  br label %448

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @OCFS2_MOUNT_BARRIER, align 4
  %99 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %100 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %110

103:                                              ; preds = %94
  %104 = load i32, i32* @OCFS2_MOUNT_BARRIER, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %107 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %97
  br label %426

111:                                              ; preds = %66
  %112 = load i32, i32* @OCFS2_MOUNT_NOINTR, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %115 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %426

118:                                              ; preds = %66
  %119 = load i32, i32* @OCFS2_MOUNT_NOINTR, align 4
  %120 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %121 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %426

124:                                              ; preds = %66
  %125 = load i32, i32* @OCFS2_MOUNT_ERRORS_CONT, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %128 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @OCFS2_MOUNT_ERRORS_ROFS, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %134 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @OCFS2_MOUNT_ERRORS_PANIC, align 4
  %138 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %139 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %426

142:                                              ; preds = %66
  %143 = load i32, i32* @OCFS2_MOUNT_ERRORS_CONT, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %146 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* @OCFS2_MOUNT_ERRORS_PANIC, align 4
  %150 = xor i32 %149, -1
  %151 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %152 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @OCFS2_MOUNT_ERRORS_ROFS, align 4
  %156 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %157 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %426

160:                                              ; preds = %66
  %161 = load i32, i32* @OCFS2_MOUNT_ERRORS_ROFS, align 4
  %162 = xor i32 %161, -1
  %163 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %164 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* @OCFS2_MOUNT_ERRORS_PANIC, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %170 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* @OCFS2_MOUNT_ERRORS_CONT, align 4
  %174 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %175 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %426

178:                                              ; preds = %66
  %179 = load i32, i32* @OCFS2_MOUNT_DATA_WRITEBACK, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %182 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %426

185:                                              ; preds = %66
  %186 = load i32, i32* @OCFS2_MOUNT_DATA_WRITEBACK, align 4
  %187 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %188 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %426

191:                                              ; preds = %66
  %192 = load i32, i32* @OCFS2_MOUNT_NOUSERXATTR, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %195 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %426

198:                                              ; preds = %66
  %199 = load i32, i32* @OCFS2_MOUNT_NOUSERXATTR, align 4
  %200 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %201 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %426

204:                                              ; preds = %66
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %206 = call i32 @match_int(%struct.TYPE_4__* %205, i32* %15)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 0, i32* %10, align 4
  br label %448

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = icmp sge i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* %15, align 4
  %214 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %215 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %212, %209
  br label %426

217:                                              ; preds = %66
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %219 = call i32 @match_int(%struct.TYPE_4__* %218, i32* %15)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %448

222:                                              ; preds = %217
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32, i32* %15, align 4
  %227 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %228 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %227, i32 0, i32 7
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %225, %222
  br label %426

230:                                              ; preds = %66
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %232 = call i32 @match_int(%struct.TYPE_4__* %231, i32* %15)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  store i32 0, i32* %10, align 4
  br label %448

235:                                              ; preds = %230
  %236 = load i32, i32* %15, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %450

239:                                              ; preds = %235
  %240 = load i32, i32* %15, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* @JBD2_DEFAULT_MAX_COMMIT_AGE, align 4
  store i32 %243, i32* %15, align 4
  br label %244

244:                                              ; preds = %242, %239
  %245 = load i32, i32* @HZ, align 4
  %246 = load i32, i32* %15, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %249 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  br label %426

250:                                              ; preds = %66
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %252 = call i32 @match_int(%struct.TYPE_4__* %251, i32* %15)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store i32 0, i32* %10, align 4
  br label %448

255:                                              ; preds = %250
  %256 = load i32, i32* %15, align 4
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i32, i32* %15, align 4
  %260 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %261 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %258, %255
  br label %426

263:                                              ; preds = %66
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %263
  %267 = load i32, i32* @OCFS2_MOUNT_LOCALFLOCKS, align 4
  %268 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %269 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %266, %263
  br label %426

273:                                              ; preds = %66
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 16
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = sub i64 %276, %279
  %281 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %291, label %283

283:                                              ; preds = %273
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %288 = call i64 @strnlen(i64 %286, i64 %287)
  %289 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %283, %273
  %292 = load i32, i32* @ML_ERROR, align 4
  %293 = call i32 (i32, i8*, ...) @mlog(i32 %292, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %448

294:                                              ; preds = %283
  %295 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %296 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %295, i32 0, i32 4
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %302 = call i32 @memcpy(i8* %297, i64 %300, i64 %301)
  %303 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %304 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %303, i32 0, i32 4
  %305 = load i8*, i8** %304, align 8
  %306 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8 0, i8* %307, align 1
  %308 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %309 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %308, i32 0, i32 4
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* @OCFS2_CLASSIC_CLUSTER_STACK, align 4
  %312 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %313 = call i32 @memcmp(i8* %310, i32 %311, i64 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %294
  store i32 1, i32* %11, align 4
  br label %316

316:                                              ; preds = %315, %294
  br label %426

317:                                              ; preds = %66
  %318 = load i32, i32* @OCFS2_MOUNT_INODE64, align 4
  %319 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %320 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %426

323:                                              ; preds = %66
  %324 = load i32, i32* @OCFS2_MOUNT_USRQUOTA, align 4
  %325 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %326 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 4
  br label %426

329:                                              ; preds = %66
  %330 = load i32, i32* @OCFS2_MOUNT_GRPQUOTA, align 4
  %331 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %332 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  br label %426

335:                                              ; preds = %66
  %336 = load i32, i32* @OCFS2_MOUNT_COHERENCY_BUFFERED, align 4
  %337 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %338 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 4
  br label %426

341:                                              ; preds = %66
  %342 = load i32, i32* @OCFS2_MOUNT_COHERENCY_BUFFERED, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %345 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %426

348:                                              ; preds = %66
  %349 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %350 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %351 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 4
  %354 = load i32, i32* @OCFS2_MOUNT_NO_POSIX_ACL, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %357 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = and i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %426

360:                                              ; preds = %66
  %361 = load i32, i32* @OCFS2_MOUNT_NO_POSIX_ACL, align 4
  %362 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %363 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  %366 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %367 = xor i32 %366, -1
  %368 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %369 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, %367
  store i32 %371, i32* %369, align 4
  br label %426

372:                                              ; preds = %66
  %373 = load i32, i32* %9, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %372
  br label %426

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %378 = call i32 @match_int(%struct.TYPE_4__* %377, i32* %15)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  store i32 0, i32* %10, align 4
  br label %448

381:                                              ; preds = %376
  %382 = load i32, i32* %15, align 4
  %383 = load i32, i32* @OCFS2_MIN_RESV_LEVEL, align 4
  %384 = icmp sge i32 %382, %383
  br i1 %384, label %385, label %393

385:                                              ; preds = %381
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* @OCFS2_MAX_RESV_LEVEL, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = load i32, i32* %15, align 4
  %391 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %392 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %391, i32 0, i32 5
  store i32 %390, i32* %392, align 8
  br label %393

393:                                              ; preds = %389, %385, %381
  br label %426

394:                                              ; preds = %66
  %395 = load i32, i32* %9, align 4
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %398

397:                                              ; preds = %394
  br label %426

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %400 = call i32 @match_int(%struct.TYPE_4__* %399, i32* %15)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  store i32 0, i32* %10, align 4
  br label %448

403:                                              ; preds = %398
  %404 = load i32, i32* %15, align 4
  %405 = load i32, i32* @OCFS2_MIN_RESV_LEVEL, align 4
  %406 = icmp sge i32 %404, %405
  br i1 %406, label %407, label %415

407:                                              ; preds = %403
  %408 = load i32, i32* %15, align 4
  %409 = load i32, i32* @OCFS2_MAX_RESV_LEVEL, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %415

411:                                              ; preds = %407
  %412 = load i32, i32* %15, align 4
  %413 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %414 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %413, i32 0, i32 6
  store i32 %412, i32* %414, align 4
  br label %415

415:                                              ; preds = %411, %407, %403
  br label %426

416:                                              ; preds = %66
  %417 = load i32, i32* @OCFS2_MOUNT_JOURNAL_ASYNC_COMMIT, align 4
  %418 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %419 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %417
  store i32 %421, i32* %419, align 4
  br label %426

422:                                              ; preds = %66
  %423 = load i32, i32* @ML_ERROR, align 4
  %424 = load i8*, i8** %12, align 8
  %425 = call i32 (i32, i8*, ...) @mlog(i32 %423, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %424)
  store i32 0, i32* %10, align 4
  br label %448

426:                                              ; preds = %416, %415, %397, %393, %375, %360, %348, %341, %335, %329, %323, %317, %316, %272, %262, %244, %229, %216, %198, %191, %185, %178, %160, %142, %124, %118, %111, %110, %83, %77, %71
  br label %58

427:                                              ; preds = %58
  %428 = load i32, i32* %11, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %447

430:                                              ; preds = %427
  %431 = load %struct.mount_options*, %struct.mount_options** %8, align 8
  %432 = getelementptr inbounds %struct.mount_options, %struct.mount_options* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %435 = load i32, i32* @OCFS2_MOUNT_HB_GLOBAL, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* @OCFS2_MOUNT_HB_NONE, align 4
  %438 = or i32 %436, %437
  %439 = and i32 %433, %438
  store i32 %439, i32* %13, align 4
  %440 = load i32, i32* %13, align 4
  %441 = call i32 @hweight32(i32 %440)
  %442 = icmp ne i32 %441, 1
  br i1 %442, label %443, label %446

443:                                              ; preds = %430
  %444 = load i32, i32* @ML_ERROR, align 4
  %445 = call i32 (i32, i8*, ...) @mlog(i32 %444, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %448

446:                                              ; preds = %430
  br label %447

447:                                              ; preds = %446, %427
  store i32 1, i32* %10, align 4
  br label %448

448:                                              ; preds = %447, %443, %422, %402, %380, %291, %254, %234, %221, %208, %93, %56
  %449 = load i32, i32* %10, align 4
  store i32 %449, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %450

450:                                              ; preds = %448, %238
  %451 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %451)
  %452 = load i32, i32* %5, align 4
  ret i32 %452
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_ocfs2_parse_options(i32, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @match_int(%struct.TYPE_4__*, i32*) #2

declare dso_local i64 @strnlen(i64, i64) #2

declare dso_local i32 @mlog(i32, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i64, i64) #2

declare dso_local i32 @memcmp(i8*, i32, i64) #2

declare dso_local i32 @hweight32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
