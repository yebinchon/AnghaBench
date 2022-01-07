; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_mount_options = type { i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@MINIX_DF = common dso_local global i32 0, align 4
@GRPID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid uid value %d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid gid value %d\00", align 1
@ERRORS_CONT = common dso_local global i32 0, align 4
@ERRORS_RO = common dso_local global i32 0, align 4
@ERRORS_PANIC = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Option nocheck/check=none is deprecated and will be removed in June 2020.\00", align 1
@CHECK = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@OLDALLOC = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"(no)user_xattr optionsnot supported\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"(no)acl options not supported\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"use dax instead of xip\00", align 1
@XIP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"dax option not supported\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"quota operations not supported\00", align 1
@RESERVATION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"reservations ON\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"reservations OFF\00", align 1
@DAX = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@XATTR_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.super_block*, %struct.ext2_mount_options*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.super_block* %1, %struct.ext2_mount_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext2_mount_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store %struct.ext2_mount_options* %2, %struct.ext2_mount_options** %7, align 8
  %16 = load i32, i32* @MAX_OPT_ARGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %236, %31, %23
  %25 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %237

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %24

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, i32* %19)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  switch i32 %36, label %235 [
    i32 154, label %37
    i32 145, label %43
    i32 148, label %49
    i32 141, label %55
    i32 132, label %61
    i32 133, label %82
    i32 131, label %103
    i32 150, label %104
    i32 149, label %120
    i32 151, label %136
    i32 139, label %152
    i32 142, label %158
    i32 152, label %167
    i32 137, label %173
    i32 136, label %179
    i32 143, label %185
    i32 130, label %191
    i32 138, label %191
    i32 155, label %195
    i32 144, label %195
    i32 128, label %199
    i32 153, label %208
    i32 135, label %212
    i32 129, label %212
    i32 147, label %212
    i32 134, label %216
    i32 140, label %225
    i32 146, label %234
  ]

37:                                               ; preds = %32
  %38 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %39 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MINIX_DF, align 4
  %42 = call i32 @clear_opt(i32 %40, i32 %41)
  br label %236

43:                                               ; preds = %32
  %44 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %45 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MINIX_DF, align 4
  %48 = call i32 @set_opt(i32 %46, i32 %47)
  br label %236

49:                                               ; preds = %32
  %50 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %51 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GRPID, align 4
  %54 = call i32 @set_opt(i32 %52, i32 %53)
  br label %236

55:                                               ; preds = %32
  %56 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %57 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GRPID, align 4
  %60 = call i32 @clear_opt(i32 %58, i32 %59)
  br label %236

61:                                               ; preds = %32
  %62 = getelementptr inbounds i32, i32* %19, i64 0
  %63 = call i32 @match_int(i32* %62, i32* %11)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

66:                                               ; preds = %61
  %67 = call i32 (...) @current_user_ns()
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @make_kuid(i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @uid_valid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %74, i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

78:                                               ; preds = %66
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %81 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %236

82:                                               ; preds = %32
  %83 = getelementptr inbounds i32, i32* %19, i64 0
  %84 = call i32 @match_int(i32* %83, i32* %11)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

87:                                               ; preds = %82
  %88 = call i32 (...) @current_user_ns()
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @make_kgid(i32 %88, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @gid_valid(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %87
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = load i32, i32* @KERN_ERR, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %95, i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

99:                                               ; preds = %87
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %102 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %236

103:                                              ; preds = %32
  br label %236

104:                                              ; preds = %32
  %105 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %106 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ERRORS_CONT, align 4
  %109 = call i32 @clear_opt(i32 %107, i32 %108)
  %110 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %111 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ERRORS_RO, align 4
  %114 = call i32 @clear_opt(i32 %112, i32 %113)
  %115 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %116 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @ERRORS_PANIC, align 4
  %119 = call i32 @set_opt(i32 %117, i32 %118)
  br label %236

120:                                              ; preds = %32
  %121 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %122 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ERRORS_CONT, align 4
  %125 = call i32 @clear_opt(i32 %123, i32 %124)
  %126 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %127 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ERRORS_PANIC, align 4
  %130 = call i32 @clear_opt(i32 %128, i32 %129)
  %131 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %132 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ERRORS_RO, align 4
  %135 = call i32 @set_opt(i32 %133, i32 %134)
  br label %236

136:                                              ; preds = %32
  %137 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %138 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ERRORS_RO, align 4
  %141 = call i32 @clear_opt(i32 %139, i32 %140)
  %142 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %143 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ERRORS_PANIC, align 4
  %146 = call i32 @clear_opt(i32 %144, i32 %145)
  %147 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %148 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ERRORS_CONT, align 4
  %151 = call i32 @set_opt(i32 %149, i32 %150)
  br label %236

152:                                              ; preds = %32
  %153 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %154 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NO_UID32, align 4
  %157 = call i32 @set_opt(i32 %155, i32 %156)
  br label %236

158:                                              ; preds = %32
  %159 = load %struct.super_block*, %struct.super_block** %6, align 8
  %160 = load i32, i32* @KERN_WARNING, align 4
  %161 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %159, i32 %160, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %163 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CHECK, align 4
  %166 = call i32 @clear_opt(i32 %164, i32 %165)
  br label %236

167:                                              ; preds = %32
  %168 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %169 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @DEBUG, align 4
  %172 = call i32 @set_opt(i32 %170, i32 %171)
  br label %236

173:                                              ; preds = %32
  %174 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %175 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @OLDALLOC, align 4
  %178 = call i32 @set_opt(i32 %176, i32 %177)
  br label %236

179:                                              ; preds = %32
  %180 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %181 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @OLDALLOC, align 4
  %184 = call i32 @clear_opt(i32 %182, i32 %183)
  br label %236

185:                                              ; preds = %32
  %186 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %187 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @NOBH, align 4
  %190 = call i32 @set_opt(i32 %188, i32 %189)
  br label %236

191:                                              ; preds = %32, %32
  %192 = load %struct.super_block*, %struct.super_block** %6, align 8
  %193 = load i32, i32* @KERN_INFO, align 4
  %194 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %192, i32 %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %236

195:                                              ; preds = %32, %32
  %196 = load %struct.super_block*, %struct.super_block** %6, align 8
  %197 = load i32, i32* @KERN_INFO, align 4
  %198 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %196, i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %236

199:                                              ; preds = %32
  %200 = load %struct.super_block*, %struct.super_block** %6, align 8
  %201 = load i32, i32* @KERN_INFO, align 4
  %202 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %200, i32 %201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %203 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %204 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @XIP, align 4
  %207 = call i32 @set_opt(i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %32, %199
  %209 = load %struct.super_block*, %struct.super_block** %6, align 8
  %210 = load i32, i32* @KERN_INFO, align 4
  %211 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %209, i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %236

212:                                              ; preds = %32, %32, %32
  %213 = load %struct.super_block*, %struct.super_block** %6, align 8
  %214 = load i32, i32* @KERN_INFO, align 4
  %215 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %213, i32 %214, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %236

216:                                              ; preds = %32
  %217 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %218 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @RESERVATION, align 4
  %221 = call i32 @set_opt(i32 %219, i32 %220)
  %222 = load %struct.super_block*, %struct.super_block** %6, align 8
  %223 = load i32, i32* @KERN_INFO, align 4
  %224 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %222, i32 %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %236

225:                                              ; preds = %32
  %226 = load %struct.ext2_mount_options*, %struct.ext2_mount_options** %7, align 8
  %227 = getelementptr inbounds %struct.ext2_mount_options, %struct.ext2_mount_options* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @RESERVATION, align 4
  %230 = call i32 @clear_opt(i32 %228, i32 %229)
  %231 = load %struct.super_block*, %struct.super_block** %6, align 8
  %232 = load i32, i32* @KERN_INFO, align 4
  %233 = call i32 (%struct.super_block*, i32, i8*, ...) @ext2_msg(%struct.super_block* %231, i32 %232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %236

234:                                              ; preds = %32
  br label %236

235:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

236:                                              ; preds = %234, %225, %216, %212, %208, %195, %191, %185, %179, %173, %167, %158, %152, %136, %120, %104, %103, %99, %78, %55, %49, %43, %37
  br label %24

237:                                              ; preds = %24
  store i32 1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %238

238:                                              ; preds = %237, %235, %94, %86, %73, %65, %22
  %239 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @clear_opt(i32, i32) #2

declare dso_local i32 @set_opt(i32, i32) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @ext2_msg(%struct.super_block*, i32, i8*, ...) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
