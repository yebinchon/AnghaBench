; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_do_dentry_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_do_dentry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 (%struct.inode*, %struct.file.0*)*, i64, i64, i64, i64 }
%struct.inode = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.file.0 = type opaque
%struct.file = type { i32, i32, %struct.inode*, %struct.TYPE_9__, %struct.file_operations*, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32* }

@do_dentry_open.empty_fops = internal constant %struct.file_operations zeroinitializer, align 8
@O_PATH = common dso_local global i32 0, align 4
@FMODE_PATH = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@FMODE_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_WRITER = common dso_local global i32 0, align 4
@FMODE_ATOMIC_POS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@FMODE_LSEEK = common dso_local global i32 0, align 4
@FMODE_PREAD = common dso_local global i32 0, align 4
@FMODE_PWRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_CAN_READ = common dso_local global i32 0, align 4
@FMODE_CAN_WRITE = common dso_local global i32 0, align 4
@WRITE_LIFE_NOT_SET = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32 (%struct.inode*, %struct.file*)*)* @do_dentry_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_dentry_open(%struct.file* %0, %struct.inode* %1, i32 (%struct.inode*, %struct.file*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32 (%struct.inode*, %struct.file*)*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 (%struct.inode*, %struct.file*)* %2, i32 (%struct.inode*, %struct.file*)** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 3
  %11 = call i32 @path_get(%struct.TYPE_9__* %10)
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 2
  store %struct.inode* %12, %struct.inode** %14, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 5
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %19, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = call i32 @filemap_sample_wb_err(%struct.TYPE_10__* %22)
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @O_PATH, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load i32, i32* @FMODE_PATH, align 4
  %35 = load i32, i32* @FMODE_OPENED, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.file*, %struct.file** %5, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 4
  store %struct.file_operations* @do_dentry_open.empty_fops, %struct.file_operations** %40, align 8
  store i32 0, i32* %4, align 4
  br label %377

41:                                               ; preds = %3
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FMODE_EXEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISREG(i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i1 [ false, %41 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EACCES, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %364

63:                                               ; preds = %55
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FMODE_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @special_file(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %70
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i32 @get_write_access(%struct.inode* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %364

83:                                               ; preds = %76
  %84 = load %struct.file*, %struct.file** %5, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @__mnt_want_write(i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i32 @put_write_access(%struct.inode* %93)
  br label %364

95:                                               ; preds = %83
  %96 = load i32, i32* @FMODE_WRITER, align 4
  %97 = load %struct.file*, %struct.file** %5, align 8
  %98 = getelementptr inbounds %struct.file, %struct.file* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %70, %63
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @S_ISREG(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISDIR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107, %101
  %114 = load i32, i32* @FMODE_ATOMIC_POS, align 4
  %115 = load %struct.file*, %struct.file** %5, align 8
  %116 = getelementptr inbounds %struct.file, %struct.file* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %107
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.file_operations* @fops_get(i32 %122)
  %124 = load %struct.file*, %struct.file** %5, align 8
  %125 = getelementptr inbounds %struct.file, %struct.file* %124, i32 0, i32 4
  store %struct.file_operations* %123, %struct.file_operations** %125, align 8
  %126 = load %struct.file*, %struct.file** %5, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 4
  %128 = load %struct.file_operations*, %struct.file_operations** %127, align 8
  %129 = icmp ne %struct.file_operations* %128, null
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @WARN_ON(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %335

137:                                              ; preds = %119
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = call i32 @security_file_open(%struct.file* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %335

143:                                              ; preds = %137
  %144 = load %struct.file*, %struct.file** %5, align 8
  %145 = call i32 @locks_inode(%struct.file* %144)
  %146 = load %struct.file*, %struct.file** %5, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @break_lease(i32 %145, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %335

153:                                              ; preds = %143
  %154 = load i32, i32* @FMODE_LSEEK, align 4
  %155 = load i32, i32* @FMODE_PREAD, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @FMODE_PWRITE, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.file*, %struct.file** %5, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %7, align 8
  %164 = icmp ne i32 (%struct.inode*, %struct.file*)* %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %153
  %166 = load %struct.file*, %struct.file** %5, align 8
  %167 = getelementptr inbounds %struct.file, %struct.file* %166, i32 0, i32 4
  %168 = load %struct.file_operations*, %struct.file_operations** %167, align 8
  %169 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %168, i32 0, i32 0
  %170 = load i32 (%struct.inode*, %struct.file.0*)*, i32 (%struct.inode*, %struct.file.0*)** %169, align 8
  %171 = bitcast i32 (%struct.inode*, %struct.file.0*)* %170 to i32 (%struct.inode*, %struct.file*)*
  store i32 (%struct.inode*, %struct.file*)* %171, i32 (%struct.inode*, %struct.file*)** %7, align 8
  br label %172

172:                                              ; preds = %165, %153
  %173 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %7, align 8
  %174 = icmp ne i32 (%struct.inode*, %struct.file*)* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %7, align 8
  %177 = load %struct.inode*, %struct.inode** %6, align 8
  %178 = load %struct.file*, %struct.file** %5, align 8
  %179 = call i32 %176(%struct.inode* %177, %struct.file* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %335

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %172
  %185 = load i32, i32* @FMODE_OPENED, align 4
  %186 = load %struct.file*, %struct.file** %5, align 8
  %187 = getelementptr inbounds %struct.file, %struct.file* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load %struct.file*, %struct.file** %5, align 8
  %191 = getelementptr inbounds %struct.file, %struct.file* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @FMODE_READ, align 4
  %194 = load i32, i32* @FMODE_WRITE, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %192, %195
  %197 = load i32, i32* @FMODE_READ, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %184
  %200 = load %struct.inode*, %struct.inode** %6, align 8
  %201 = call i32 @i_readcount_inc(%struct.inode* %200)
  br label %202

202:                                              ; preds = %199, %184
  %203 = load %struct.file*, %struct.file** %5, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @FMODE_READ, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %234

209:                                              ; preds = %202
  %210 = load %struct.file*, %struct.file** %5, align 8
  %211 = getelementptr inbounds %struct.file, %struct.file* %210, i32 0, i32 4
  %212 = load %struct.file_operations*, %struct.file_operations** %211, align 8
  %213 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %209
  %217 = load %struct.file*, %struct.file** %5, align 8
  %218 = getelementptr inbounds %struct.file, %struct.file* %217, i32 0, i32 4
  %219 = load %struct.file_operations*, %struct.file_operations** %218, align 8
  %220 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br label %223

223:                                              ; preds = %216, %209
  %224 = phi i1 [ true, %209 ], [ %222, %216 ]
  %225 = zext i1 %224 to i32
  %226 = call i64 @likely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load i32, i32* @FMODE_CAN_READ, align 4
  %230 = load %struct.file*, %struct.file** %5, align 8
  %231 = getelementptr inbounds %struct.file, %struct.file* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %223, %202
  %235 = load %struct.file*, %struct.file** %5, align 8
  %236 = getelementptr inbounds %struct.file, %struct.file* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @FMODE_WRITE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %266

241:                                              ; preds = %234
  %242 = load %struct.file*, %struct.file** %5, align 8
  %243 = getelementptr inbounds %struct.file, %struct.file* %242, i32 0, i32 4
  %244 = load %struct.file_operations*, %struct.file_operations** %243, align 8
  %245 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %241
  %249 = load %struct.file*, %struct.file** %5, align 8
  %250 = getelementptr inbounds %struct.file, %struct.file* %249, i32 0, i32 4
  %251 = load %struct.file_operations*, %struct.file_operations** %250, align 8
  %252 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br label %255

255:                                              ; preds = %248, %241
  %256 = phi i1 [ true, %241 ], [ %254, %248 ]
  %257 = zext i1 %256 to i32
  %258 = call i64 @likely(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load i32, i32* @FMODE_CAN_WRITE, align 4
  %262 = load %struct.file*, %struct.file** %5, align 8
  %263 = getelementptr inbounds %struct.file, %struct.file* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %255, %234
  %267 = load i32, i32* @WRITE_LIFE_NOT_SET, align 4
  %268 = load %struct.file*, %struct.file** %5, align 8
  %269 = getelementptr inbounds %struct.file, %struct.file* %268, i32 0, i32 7
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @O_CREAT, align 4
  %271 = load i32, i32* @O_EXCL, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @O_NOCTTY, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @O_TRUNC, align 4
  %276 = or i32 %274, %275
  %277 = xor i32 %276, -1
  %278 = load %struct.file*, %struct.file** %5, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.file*, %struct.file** %5, align 8
  %283 = getelementptr inbounds %struct.file, %struct.file* %282, i32 0, i32 6
  %284 = load %struct.file*, %struct.file** %5, align 8
  %285 = getelementptr inbounds %struct.file, %struct.file* %284, i32 0, i32 5
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @file_ra_state_init(i32* %283, i32 %290)
  %292 = load %struct.file*, %struct.file** %5, align 8
  %293 = getelementptr inbounds %struct.file, %struct.file* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @O_DIRECT, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %318

298:                                              ; preds = %266
  %299 = load %struct.file*, %struct.file** %5, align 8
  %300 = getelementptr inbounds %struct.file, %struct.file* %299, i32 0, i32 5
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = icmp ne %struct.TYPE_8__* %303, null
  br i1 %304, label %305, label %314

305:                                              ; preds = %298
  %306 = load %struct.file*, %struct.file** %5, align 8
  %307 = getelementptr inbounds %struct.file, %struct.file* %306, i32 0, i32 5
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %305, %298
  %315 = load i32, i32* @EINVAL, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %4, align 4
  br label %377

317:                                              ; preds = %305
  br label %318

318:                                              ; preds = %317, %266
  %319 = load %struct.file*, %struct.file** %5, align 8
  %320 = getelementptr inbounds %struct.file, %struct.file* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FMODE_WRITE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %318
  %326 = load %struct.inode*, %struct.inode** %6, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 0
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = call i64 @filemap_nr_thps(%struct.TYPE_10__* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %325
  %332 = load %struct.inode*, %struct.inode** %6, align 8
  %333 = call i32 @truncate_pagecache(%struct.inode* %332, i32 0)
  br label %334

334:                                              ; preds = %331, %325, %318
  store i32 0, i32* %4, align 4
  br label %377

335:                                              ; preds = %182, %152, %142, %134
  %336 = load i32, i32* %8, align 4
  %337 = icmp sgt i32 %336, 0
  %338 = zext i1 %337 to i32
  %339 = call i64 @WARN_ON_ONCE(i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %335
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %8, align 4
  br label %344

344:                                              ; preds = %341, %335
  %345 = load %struct.file*, %struct.file** %5, align 8
  %346 = getelementptr inbounds %struct.file, %struct.file* %345, i32 0, i32 4
  %347 = load %struct.file_operations*, %struct.file_operations** %346, align 8
  %348 = call i32 @fops_put(%struct.file_operations* %347)
  %349 = load %struct.file*, %struct.file** %5, align 8
  %350 = getelementptr inbounds %struct.file, %struct.file* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @FMODE_WRITER, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %344
  %356 = load %struct.inode*, %struct.inode** %6, align 8
  %357 = call i32 @put_write_access(%struct.inode* %356)
  %358 = load %struct.file*, %struct.file** %5, align 8
  %359 = getelementptr inbounds %struct.file, %struct.file* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @__mnt_drop_write(i32* %361)
  br label %363

363:                                              ; preds = %355, %344
  br label %364

364:                                              ; preds = %363, %92, %82, %60
  %365 = load %struct.file*, %struct.file** %5, align 8
  %366 = getelementptr inbounds %struct.file, %struct.file* %365, i32 0, i32 3
  %367 = call i32 @path_put(%struct.TYPE_9__* %366)
  %368 = load %struct.file*, %struct.file** %5, align 8
  %369 = getelementptr inbounds %struct.file, %struct.file* %368, i32 0, i32 3
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  store i32* null, i32** %370, align 8
  %371 = load %struct.file*, %struct.file** %5, align 8
  %372 = getelementptr inbounds %struct.file, %struct.file* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 0
  store i32* null, i32** %373, align 8
  %374 = load %struct.file*, %struct.file** %5, align 8
  %375 = getelementptr inbounds %struct.file, %struct.file* %374, i32 0, i32 2
  store %struct.inode* null, %struct.inode** %375, align 8
  %376 = load i32, i32* %8, align 4
  store i32 %376, i32* %4, align 4
  br label %377

377:                                              ; preds = %364, %334, %314, %33
  %378 = load i32, i32* %4, align 4
  ret i32 %378
}

declare dso_local i32 @path_get(%struct.TYPE_9__*) #1

declare dso_local i32 @filemap_sample_wb_err(%struct.TYPE_10__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @special_file(i32) #1

declare dso_local i32 @get_write_access(%struct.inode*) #1

declare dso_local i32 @__mnt_want_write(i32*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.file_operations* @fops_get(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @security_file_open(%struct.file*) #1

declare dso_local i32 @break_lease(i32, i32) #1

declare dso_local i32 @locks_inode(%struct.file*) #1

declare dso_local i32 @i_readcount_inc(%struct.inode*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @file_ra_state_init(i32*, i32) #1

declare dso_local i64 @filemap_nr_thps(%struct.TYPE_10__*) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fops_put(%struct.file_operations*) #1

declare dso_local i32 @__mnt_drop_write(i32*) #1

declare dso_local i32 @path_put(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
