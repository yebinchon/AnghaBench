; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"execveat\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".symlink\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"subdir.ephemeral\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_PATH = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"execveat.symlink\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"execveat.denatured\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"execveat.ephemeral\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"execveat.path.ephemeral\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"script.ephemeral\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"ENOSYS calling execveat - no kernel support?\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"../execveat\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AT_EMPTY_PATH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"execveat.moved\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"../script\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"script.moved\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"subdir.moved\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"subdir.moved/script\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"no-such-file\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"Makefile\00", align 1
@EBADF = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %22 = call i8* @realpath(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %22, i8** %2, align 8
  %23 = call i8* @realpath(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i8* @concat(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  %26 = load i32, i32* @O_DIRECTORY, align 4
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @open_or_die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @O_DIRECTORY, align 4
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @open_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @O_DIRECTORY, align 4
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open_or_die(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @O_DIRECTORY, align 4
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open_or_die(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @O_DIRECTORY, align 4
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @O_PATH, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @open_or_die(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @O_DIRECTORY, align 4
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @O_CLOEXEC, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @open_or_die(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 @open_or_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = load i32, i32* @O_PATH, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @open_or_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @O_RDONLY, align 4
  %61 = call i32 @open_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* @O_RDONLY, align 4
  %63 = call i32 @open_or_die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = load i32, i32* @O_PATH, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @open_or_die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* @O_RDONLY, align 4
  %69 = call i32 @open_or_die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* @O_RDONLY, align 4
  %71 = call i32 @open_or_die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* @O_RDONLY, align 4
  %73 = load i32, i32* @O_PATH, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @open_or_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* @O_RDONLY, align 4
  %77 = call i32 @open_or_die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* @O_RDONLY, align 4
  %79 = load i32, i32* @O_CLOEXEC, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @open_or_die(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* @O_RDONLY, align 4
  %83 = load i32, i32* @O_CLOEXEC, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @open_or_die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 %85, i32* %21, align 4
  store i64 0, i64* @errno, align 8
  %86 = call i32 @execveat_(i32 -1, i32* null, i32* null, i32* null, i32 0)
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @ENOSYS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %0
  %91 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %0
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @lseek(i32 %93, i32 10, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = call i64 @check_execveat(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @check_execveat(i32 %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @check_execveat(i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* @AT_FDCWD, align 4
  %115 = load i8*, i8** %2, align 8
  %116 = call i64 @check_execveat(i32 %114, i8* %115, i32 0)
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %1, align 4
  %121 = load i8*, i8** %2, align 8
  %122 = call i64 @check_execveat(i32 99, i8* %121, i32 0)
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @AT_EMPTY_PATH, align 4
  %129 = call i64 @check_execveat(i32 %127, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %1, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* @AT_EMPTY_PATH, align 4
  %136 = call i64 @check_execveat(i32 %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @AT_EMPTY_PATH, align 4
  %143 = call i64 @check_execveat(i32 %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %1, align 4
  %148 = call i32 @rename(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @AT_EMPTY_PATH, align 4
  %151 = call i64 @check_execveat(i32 %149, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %151
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %1, align 4
  %156 = call i32 @unlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @AT_EMPTY_PATH, align 4
  %159 = call i64 @check_execveat(i32 %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %1, align 4
  %164 = call i32 @unlink(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* @AT_EMPTY_PATH, align 4
  %167 = call i64 @check_execveat(i32 %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %1, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @ENOENT, align 4
  %174 = call i64 @check_execveat_fail(i32 %172, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %173)
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %1, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @AT_EMPTY_PATH, align 4
  %181 = load i32, i32* @EFAULT, align 4
  %182 = call i64 @check_execveat_fail(i32 %179, i8* null, i32 %180, i32 %181)
  %183 = load i32, i32* %1, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %1, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i64 @check_execveat(i32 %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %189 = load i32, i32* %1, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %1, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i64 @check_execveat(i32 %193, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %1, align 4
  %199 = load i32, i32* @AT_FDCWD, align 4
  %200 = load i8*, i8** %4, align 8
  %201 = call i64 @check_execveat(i32 %199, i8* %200, i32 0)
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %1, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @AT_EMPTY_PATH, align 4
  %208 = call i64 @check_execveat(i32 %206, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %1, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @AT_EMPTY_PATH, align 4
  %215 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %216 = or i32 %214, %215
  %217 = call i64 @check_execveat(i32 %213, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %1, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %224 = load i32, i32* @ELOOP, align 4
  %225 = call i64 @check_execveat_fail(i32 %222, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %1, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %232 = load i32, i32* @ELOOP, align 4
  %233 = call i64 @check_execveat_fail(i32 %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %231, i32 %232)
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %1, align 4
  %238 = load i32, i32* @AT_FDCWD, align 4
  %239 = load i8*, i8** %4, align 8
  %240 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %241 = load i32, i32* @ELOOP, align 4
  %242 = call i64 @check_execveat_fail(i32 %238, i8* %239, i32 %240, i32 %241)
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %1, align 4
  %247 = load i32, i32* %5, align 4
  %248 = call i64 @check_execveat(i32 %247, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %248
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %1, align 4
  %253 = load i32, i32* %7, align 4
  %254 = call i64 @check_execveat(i32 %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %1, align 4
  %259 = load i32, i32* %9, align 4
  %260 = call i64 @check_execveat(i32 %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %261 = load i32, i32* %1, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %1, align 4
  %265 = load i32, i32* @AT_FDCWD, align 4
  %266 = load i8*, i8** %3, align 8
  %267 = call i64 @check_execveat(i32 %265, i8* %266, i32 0)
  %268 = load i32, i32* %1, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %1, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* @AT_EMPTY_PATH, align 4
  %274 = call i64 @check_execveat(i32 %272, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %1, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %1, align 4
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* @AT_EMPTY_PATH, align 4
  %281 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %282 = or i32 %280, %281
  %283 = call i64 @check_execveat(i32 %279, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* %1, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %283
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %1, align 4
  %288 = load i32, i32* %21, align 4
  %289 = load i32, i32* @AT_EMPTY_PATH, align 4
  %290 = load i32, i32* @ENOENT, align 4
  %291 = call i64 @check_execveat_fail(i32 %288, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %289, i32 %290)
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %1, align 4
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* @ENOENT, align 4
  %298 = call i64 @check_execveat_fail(i32 %296, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %297)
  %299 = load i32, i32* %1, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %298
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %1, align 4
  %303 = call i32 @rename(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %304 = load i32, i32* %19, align 4
  %305 = load i32, i32* @AT_EMPTY_PATH, align 4
  %306 = call i64 @check_execveat(i32 %304, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %1, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %306
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %1, align 4
  %311 = call i32 @unlink(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* @AT_EMPTY_PATH, align 4
  %314 = call i64 @check_execveat(i32 %312, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %1, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %316, %314
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %1, align 4
  %319 = call i32 @rename(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %320 = load i32, i32* %6, align 4
  %321 = call i64 @check_execveat(i32 %320, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %322 = load i32, i32* %1, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, %321
  %325 = trunc i64 %324 to i32
  store i32 %325, i32* %1, align 4
  %326 = load i32, i32* %6, align 4
  %327 = call i64 @check_execveat(i32 %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %328 = load i32, i32* %1, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %1, align 4
  %332 = call i32 @unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %333 = call i32 @unlink(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %334 = load i32, i32* %6, align 4
  %335 = call i64 @check_execveat(i32 %334, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 0)
  %336 = load i32, i32* %1, align 4
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %1, align 4
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @ENOENT, align 4
  %342 = call i64 @check_execveat_fail(i32 %340, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %341)
  %343 = load i32, i32* %1, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %342
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %1, align 4
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* @EINVAL, align 4
  %349 = call i64 @check_execveat_fail(i32 %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 65535, i32 %348)
  %350 = load i32, i32* %1, align 4
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %351, %349
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %1, align 4
  %354 = load i32, i32* %7, align 4
  %355 = load i32, i32* @ENOENT, align 4
  %356 = call i64 @check_execveat_fail(i32 %354, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 %355)
  %357 = load i32, i32* %1, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %356
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %1, align 4
  %361 = load i32, i32* %9, align 4
  %362 = load i32, i32* @ENOENT, align 4
  %363 = call i64 @check_execveat_fail(i32 %361, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 %362)
  %364 = load i32, i32* %1, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %363
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %1, align 4
  %368 = load i32, i32* @AT_FDCWD, align 4
  %369 = load i32, i32* @ENOENT, align 4
  %370 = call i64 @check_execveat_fail(i32 %368, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 %369)
  %371 = load i32, i32* %1, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %370
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %1, align 4
  %375 = load i32, i32* %7, align 4
  %376 = load i32, i32* @AT_EMPTY_PATH, align 4
  %377 = load i32, i32* @EACCES, align 4
  %378 = call i64 @check_execveat_fail(i32 %375, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %376, i32 %377)
  %379 = load i32, i32* %1, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %380, %378
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %1, align 4
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @EACCES, align 4
  %385 = call i64 @check_execveat_fail(i32 %383, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 %384)
  %386 = load i32, i32* %1, align 4
  %387 = sext i32 %386 to i64
  %388 = add nsw i64 %387, %385
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %1, align 4
  %390 = load i32, i32* %14, align 4
  %391 = load i32, i32* @AT_EMPTY_PATH, align 4
  %392 = load i32, i32* @EACCES, align 4
  %393 = call i64 @check_execveat_fail(i32 %390, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %391, i32 %392)
  %394 = load i32, i32* %1, align 4
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %395, %393
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %1, align 4
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* @AT_EMPTY_PATH, align 4
  %400 = load i32, i32* @EACCES, align 4
  %401 = call i64 @check_execveat_fail(i32 %398, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %399, i32 %400)
  %402 = load i32, i32* %1, align 4
  %403 = sext i32 %402 to i64
  %404 = add nsw i64 %403, %401
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %1, align 4
  %406 = load i32, i32* @AT_EMPTY_PATH, align 4
  %407 = load i32, i32* @EBADF, align 4
  %408 = call i64 @check_execveat_fail(i32 99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %406, i32 %407)
  %409 = load i32, i32* %1, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %408
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %1, align 4
  %413 = load i32, i32* @EBADF, align 4
  %414 = call i64 @check_execveat_fail(i32 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %413)
  %415 = load i32, i32* %1, align 4
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %416, %414
  %418 = trunc i64 %417 to i32
  store i32 %418, i32* %1, align 4
  %419 = load i32, i32* %11, align 4
  %420 = load i32, i32* @ENOTDIR, align 4
  %421 = call i64 @check_execveat_fail(i32 %419, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 %420)
  %422 = load i32, i32* %1, align 4
  %423 = sext i32 %422 to i64
  %424 = add nsw i64 %423, %421
  %425 = trunc i64 %424 to i32
  store i32 %425, i32* %1, align 4
  %426 = load i32, i32* %8, align 4
  %427 = call i64 @check_execveat_pathmax(i32 %426, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %428 = load i32, i32* %1, align 4
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %429, %427
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %1, align 4
  %432 = load i32, i32* %8, align 4
  %433 = call i64 @check_execveat_pathmax(i32 %432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %434 = load i32, i32* %1, align 4
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %435, %433
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %1, align 4
  %438 = load i32, i32* %1, align 4
  ret i32 %438
}

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i8* @concat(i8*, i8*) #1

declare dso_local i32 @open_or_die(i8*, i32) #1

declare dso_local i32 @execveat_(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @check_execveat(i32, i8*, i32) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @check_execveat_fail(i32, i8*, i32, i32) #1

declare dso_local i64 @check_execveat_pathmax(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
