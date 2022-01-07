; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_do_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_do_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"open '%s' - %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"validate_cap\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"validate_cap_suidroot\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"chown - %s\0A\00", align 1
@S_ISUID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"chmod - %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"validate_cap_suidnonroot\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"validate_cap_sgidroot\00", align 1
@S_ISGID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"validate_cap_sgidnonroot\00", align 1
@CAPNG_DROP = common dso_local global i32 0, align 4
@CAPNG_INHERITABLE = common dso_local global i32 0, align 4
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@CAPNG_SELECT_CAPS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"capng_apply - %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"[RUN]\09Root => ep\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"[RUN]\09Non-root => no caps\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Check cap_ambient manipulation rules\0A\00", align 1
@PR_CAP_AMBIENT = common dso_local global i32 0, align 4
@PR_CAP_AMBIENT_RAISE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [38 x i8] c"PR_CAP_AMBIENT_RAISE isn't supported\0A\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"PR_CAP_AMBIENT_RAISE should have failed eith EPERM on a non-inheritable cap\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"PR_CAP_AMBIENT_RAISE failed on non-inheritable cap\0A\00", align 1
@CAPNG_ADD = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@CAPNG_PERMITTED = common dso_local global i32 0, align 4
@CAPNG_EFFECTIVE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [64 x i8] c"PR_CAP_AMBIENT_RAISE should have failed on a non-permitted cap\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"PR_CAP_AMBIENT_RAISE failed on non-permitted cap\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"PR_CAP_AMBIENT_RAISE should have succeeded\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"PR_CAP_AMBIENT_RAISE worked\0A\00", align 1
@PR_CAP_AMBIENT_IS_SET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"PR_CAP_AMBIENT_IS_SET is broken\0A\00", align 1
@PR_CAP_AMBIENT_CLEAR_ALL = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"PR_CAP_AMBIENT_CLEAR_ALL - %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"PR_CAP_AMBIENT_CLEAR_ALL didn't work\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"PR_CAP_AMBIENT_RAISE - %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Dropping I should have dropped A\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Basic manipulation appears to work\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"[RUN]\09Root +i => eip\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"[RUN]\09Non-root +i => i\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"[RUN]\09UID %d +ia => eipa\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"SUID/SGID tests (needs privilege)\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"[RUN]\09Root +ia, suidroot => eipa\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"./validate_cap_suidroot\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"[RUN]\09Root +ia, suidnonroot => ip\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"./validate_cap_suidnonroot\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"[RUN]\09Root +ia, sgidroot => eipa\0A\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"./validate_cap_sgidroot\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"[RUN]\09Root, gid != 0, +ia, sgidroot => eip\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"setresgid - %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"[RUN]\09Root +ia, sgidnonroot => eip\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"./validate_cap_sgidnonroot\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"[RUN]\09Non-root +ia, sgidnonroot => i\0A\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"[RUN]\09Non-root +ia, sgidroot => i\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tests(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @create_and_enter_ns(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = load i32, i32* @O_DIRECTORY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @open(i8* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @strerror(i64 %20)
  %22 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = call i32 (...) @chdir_to_tmpfs()
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @copy_fromat_to(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %123

29:                                               ; preds = %23
  %30 = call i32 (...) @getegid()
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @copy_fromat_to(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i64 @chown(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 -1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @S_ISUID, align 4
  %43 = or i32 %42, 448
  %44 = call i64 @chmod(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i64, i64* @errno, align 8
  %48 = call i32 @strerror(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @copy_fromat_to(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i64 @chown(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %56, i32 -1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i64, i64* @errno, align 8
  %61 = call i32 @strerror(i64 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %59, %52
  %66 = load i32, i32* @S_ISUID, align 4
  %67 = or i32 %66, 448
  %68 = call i64 @chmod(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, i64* @errno, align 8
  %72 = call i32 @strerror(i64 %71)
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @copy_fromat_to(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %79 = call i64 @chown(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 -1, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i64, i64* @errno, align 8
  %83 = call i32 @strerror(i64 %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* @S_ISGID, align 4
  %89 = or i32 %88, 456
  %90 = call i64 @chmod(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i64, i64* @errno, align 8
  %94 = call i32 @strerror(i64 %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @copy_fromat_to(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i64 @chown(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 -1, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i64, i64* @errno, align 8
  %107 = call i32 @strerror(i64 %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %105, %98
  %112 = load i32, i32* @S_ISGID, align 4
  %113 = or i32 %112, 456
  %114 = call i64 @chmod(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i64, i64* @errno, align 8
  %118 = call i32 @strerror(i64 %117)
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %116, %111
  br label %123

123:                                              ; preds = %122, %23
  %124 = call i32 (...) @capng_get_caps_process()
  %125 = load i32, i32* @CAPNG_DROP, align 4
  %126 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %127 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %128 = call i32 @capng_update(i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %130 = call i64 @capng_apply(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load i64, i64* @errno, align 8
  %134 = call i32 @strerror(i64 %133)
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %132, %123
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %143 = call i64 (...) @fork_wait()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 @exec_validate_cap(i32 1, i32 1, i32 0, i32 0)
  br label %147

147:                                              ; preds = %145, %141
  br label %155

148:                                              ; preds = %138
  %149 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %150 = call i64 (...) @fork_wait()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @exec_validate_cap(i32 0, i32 0, i32 0, i32 0)
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %147
  %156 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %157 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %158 = load i32, i32* @PR_CAP_AMBIENT_RAISE, align 4
  %159 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %160 = call i32 @prctl(i32 %157, i32 %158, i32 %159, i32 0, i32 0, i32 0)
  %161 = icmp ne i32 %160, -1
  br i1 %161, label %166, label %162

162:                                              ; preds = %155
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @EPERM, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %162, %155
  %167 = load i64, i64* @errno, align 8
  %168 = load i64, i64* @EINVAL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %174

172:                                              ; preds = %166
  %173 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.13, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %170
  store i32 1, i32* %3, align 4
  br label %423

175:                                              ; preds = %162
  %176 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  %177 = load i32, i32* @CAPNG_ADD, align 4
  %178 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %179 = load i32, i32* @CAP_NET_RAW, align 4
  %180 = call i32 @capng_update(i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* @CAPNG_DROP, align 4
  %182 = load i32, i32* @CAPNG_PERMITTED, align 4
  %183 = load i32, i32* @CAP_NET_RAW, align 4
  %184 = call i32 @capng_update(i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @CAPNG_DROP, align 4
  %186 = load i32, i32* @CAPNG_EFFECTIVE, align 4
  %187 = load i32, i32* @CAP_NET_RAW, align 4
  %188 = call i32 @capng_update(i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %190 = call i64 @capng_apply(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %175
  %193 = load i64, i64* @errno, align 8
  %194 = call i32 @strerror(i64 %193)
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %192, %175
  %199 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %200 = load i32, i32* @PR_CAP_AMBIENT_RAISE, align 4
  %201 = load i32, i32* @CAP_NET_RAW, align 4
  %202 = call i32 @prctl(i32 %199, i32 %200, i32 %201, i32 0, i32 0, i32 0)
  %203 = icmp ne i32 %202, -1
  br i1 %203, label %208, label %204

204:                                              ; preds = %198
  %205 = load i64, i64* @errno, align 8
  %206 = load i64, i64* @EPERM, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %198
  %209 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %423

210:                                              ; preds = %204
  %211 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %212 = load i32, i32* @CAPNG_ADD, align 4
  %213 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %214 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %215 = call i32 @capng_update(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %217 = call i64 @capng_apply(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %210
  %220 = load i64, i64* @errno, align 8
  %221 = call i32 @strerror(i64 %220)
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to i8*
  %224 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %219, %210
  %226 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %227 = load i32, i32* @PR_CAP_AMBIENT_RAISE, align 4
  %228 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %229 = call i32 @prctl(i32 %226, i32 %227, i32 %228, i32 0, i32 0, i32 0)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %423

233:                                              ; preds = %225
  %234 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %235 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %236 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %237 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %238 = call i32 @prctl(i32 %235, i32 %236, i32 %237, i32 0, i32 0, i32 0)
  %239 = icmp ne i32 %238, 1
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %423

242:                                              ; preds = %233
  %243 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %244 = load i32, i32* @PR_CAP_AMBIENT_CLEAR_ALL, align 4
  %245 = call i32 @prctl(i32 %243, i32 %244, i32 0, i32 0, i32 0, i32 0)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load i64, i64* @errno, align 8
  %249 = call i32 @strerror(i64 %248)
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %247, %242
  %254 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %255 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %256 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %257 = call i32 @prctl(i32 %254, i32 %255, i32 %256, i32 0, i32 0, i32 0)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %423

261:                                              ; preds = %253
  %262 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %263 = load i32, i32* @PR_CAP_AMBIENT_RAISE, align 4
  %264 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %265 = call i32 @prctl(i32 %262, i32 %263, i32 %264, i32 0, i32 0, i32 0)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %261
  %268 = load i64, i64* @errno, align 8
  %269 = call i32 @strerror(i64 %268)
  %270 = sext i32 %269 to i64
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %267, %261
  %274 = load i32, i32* @CAPNG_DROP, align 4
  %275 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %276 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %277 = call i32 @capng_update(i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %279 = call i64 @capng_apply(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %273
  %282 = load i64, i64* @errno, align 8
  %283 = call i32 @strerror(i64 %282)
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %285)
  br label %287

287:                                              ; preds = %281, %273
  %288 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %289 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %290 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %291 = call i32 @prctl(i32 %288, i32 %289, i32 %290, i32 0, i32 0, i32 0)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %423

295:                                              ; preds = %287
  %296 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  %297 = load i32, i32* @CAPNG_ADD, align 4
  %298 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %299 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %300 = call i32 @capng_update(i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %302 = call i64 @capng_apply(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %295
  %305 = load i64, i64* @errno, align 8
  %306 = call i32 @strerror(i64 %305)
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i8*
  %309 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %304, %295
  %311 = load i32, i32* %4, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %310
  %314 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %315 = call i64 (...) @fork_wait()
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = call i32 @exec_validate_cap(i32 1, i32 1, i32 1, i32 0)
  br label %319

319:                                              ; preds = %317, %313
  br label %327

320:                                              ; preds = %310
  %321 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %322 = call i64 (...) @fork_wait()
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %320
  %325 = call i32 @exec_validate_cap(i32 0, i32 0, i32 1, i32 0)
  br label %326

326:                                              ; preds = %324, %320
  br label %327

327:                                              ; preds = %326, %319
  %328 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %329 = load i32, i32* @PR_CAP_AMBIENT_RAISE, align 4
  %330 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %331 = call i32 @prctl(i32 %328, i32 %329, i32 %330, i32 0, i32 0, i32 0)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %327
  %334 = load i64, i64* @errno, align 8
  %335 = call i32 @strerror(i64 %334)
  %336 = sext i32 %335 to i64
  %337 = inttoptr i64 %336 to i8*
  %338 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* %337)
  br label %339

339:                                              ; preds = %333, %327
  %340 = load i32, i32* %4, align 4
  %341 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %340)
  %342 = call i64 (...) @fork_wait()
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %339
  %345 = call i32 @exec_validate_cap(i32 1, i32 1, i32 1, i32 1)
  br label %346

346:                                              ; preds = %344, %339
  %347 = load i32, i32* %6, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %346
  %350 = call i32 @ksft_test_result_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  br label %417

351:                                              ; preds = %346
  %352 = load i32, i32* %4, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %394

354:                                              ; preds = %351
  %355 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0))
  %356 = call i64 (...) @fork_wait()
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %354
  %359 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  br label %360

360:                                              ; preds = %358, %354
  %361 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  %362 = call i64 (...) @fork_wait()
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %360
  %365 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 0, i32 1, i32 1, i32 0)
  br label %366

366:                                              ; preds = %364, %360
  %367 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  %368 = call i64 (...) @fork_wait()
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %366
  %371 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 1, i32 1, i32 1, i32 1)
  br label %372

372:                                              ; preds = %370, %366
  %373 = call i64 (...) @fork_wait()
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %387

375:                                              ; preds = %372
  %376 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0))
  %377 = call i64 @setresgid(i32 1, i32 1, i32 1)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load i64, i64* @errno, align 8
  %381 = call i32 @strerror(i64 %380)
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to i8*
  %384 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* %383)
  br label %385

385:                                              ; preds = %379, %375
  %386 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0)
  br label %387

387:                                              ; preds = %385, %372
  %388 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0))
  %389 = call i64 (...) @fork_wait()
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %387
  %392 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0)
  br label %393

393:                                              ; preds = %391, %387
  br label %416

394:                                              ; preds = %351
  %395 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0))
  %396 = call i64 (...) @fork_wait()
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %394
  %399 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i32 0, i32 0, i32 1, i32 0)
  br label %400

400:                                              ; preds = %398, %394
  %401 = call i64 (...) @fork_wait()
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %415

403:                                              ; preds = %400
  %404 = call i32 (i8*, ...) @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  %405 = call i64 @setresgid(i32 1, i32 1, i32 1)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %403
  %408 = load i64, i64* @errno, align 8
  %409 = call i32 @strerror(i64 %408)
  %410 = sext i32 %409 to i64
  %411 = inttoptr i64 %410 to i8*
  %412 = call i32 (i8*, i8*, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* %411)
  br label %413

413:                                              ; preds = %407, %403
  %414 = call i32 @exec_other_validate_cap(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0), i32 0, i32 0, i32 1, i32 0)
  br label %415

415:                                              ; preds = %413, %400
  br label %416

416:                                              ; preds = %415, %393
  br label %417

417:                                              ; preds = %416, %349
  %418 = call i32 (...) @ksft_print_cnts()
  %419 = load i64, i64* @nerrs, align 8
  %420 = icmp ne i64 %419, 0
  %421 = zext i1 %420 to i64
  %422 = select i1 %420, i32 1, i32 0
  store i32 %422, i32* %3, align 4
  br label %423

423:                                              ; preds = %417, %293, %259, %240, %231, %208, %174
  %424 = load i32, i32* %3, align 4
  ret i32 %424
}

declare dso_local i32 @create_and_enter_ns(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @chdir_to_tmpfs(...) #1

declare dso_local i32 @copy_fromat_to(i32, i8*, i8*) #1

declare dso_local i32 @getegid(...) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @capng_get_caps_process(...) #1

declare dso_local i32 @capng_update(i32, i32, i32) #1

declare dso_local i64 @capng_apply(i32) #1

declare dso_local i32 @ksft_print_msg(i8*, ...) #1

declare dso_local i64 @fork_wait(...) #1

declare dso_local i32 @exec_validate_cap(i32, i32, i32, i32) #1

declare dso_local i32 @prctl(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ksft_test_result_fail(i8*) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @ksft_test_result_skip(i8*) #1

declare dso_local i32 @exec_other_validate_cap(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @setresgid(i32, i32, i32) #1

declare dso_local i32 @ksft_print_cnts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
