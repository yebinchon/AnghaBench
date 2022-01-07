; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_ipv6_flowlabel_mgr.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"cannot get non-existent label\00", align 1
@IPV6_FL_S_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot put non-existent label\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"cannot create label greater than 20 bits\00", align 1
@IPV6_FL_F_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"create a new label (FL_F_CREATE)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"can get the label (without FL_F_CREATE)\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"can get it again with create flag set, too\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"cannot get it again with the exclusive (FL_FL_EXCL) flag\00", align 1
@IPV6_FL_F_EXCL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"can now put exactly three references\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"create a new exclusive label (FL_S_EXCL)\00", align 1
@IPV6_FL_S_EXCL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"cannot get it again in non-exclusive mode\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"cannot get it again in exclusive mode either\00", align 1
@cfg_long_running = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"cannot reuse the label, due to linger\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"after sleep, can reuse\00", align 1
@FL_MIN_LINGER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [44 x i8] c"create a new user-private label (FL_S_USER)\00", align 1
@IPV6_FL_S_USER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"cannot get it again in exclusive mode\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"can get it again in user mode\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"child process can get it too, but not after setuid(nobody)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@USHRT_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"[INFO] skip setuid child test\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"wait: unexpected child result\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"create a new process-private label (FL_S_PROCESS)\00", align 1
@IPV6_FL_S_PROCESS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"can get it again\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"child process cannot can get it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @explain(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %8 = call i32 @flowlabel_get(i32 %6, i32 1, i32 %7, i32 0)
  %9 = call i32 @expect_fail(i32 %8)
  %10 = call i32 @explain(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @flowlabel_put(i32 %11, i32 1)
  %13 = call i32 @expect_fail(i32 %12)
  %14 = call i32 @explain(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %17 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %18 = call i32 @flowlabel_get(i32 %15, i32 2097151, i32 %16, i32 %17)
  %19 = call i32 @expect_fail(i32 %18)
  %20 = call i32 @explain(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %23 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %24 = call i32 @flowlabel_get(i32 %21, i32 1, i32 %22, i32 %23)
  %25 = call i32 @expect_pass(i32 %24)
  %26 = call i32 @explain(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %29 = call i32 @flowlabel_get(i32 %27, i32 1, i32 %28, i32 0)
  %30 = call i32 @expect_pass(i32 %29)
  %31 = call i32 @explain(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %34 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %35 = call i32 @flowlabel_get(i32 %32, i32 1, i32 %33, i32 %34)
  %36 = call i32 @expect_pass(i32 %35)
  %37 = call i32 @explain(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %40 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %41 = load i32, i32* @IPV6_FL_F_EXCL, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @flowlabel_get(i32 %38, i32 1, i32 %39, i32 %42)
  %44 = call i32 @expect_fail(i32 %43)
  %45 = call i32 @explain(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @flowlabel_put(i32 %46, i32 1)
  %48 = call i32 @expect_pass(i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @flowlabel_put(i32 %49, i32 1)
  %51 = call i32 @expect_pass(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @flowlabel_put(i32 %52, i32 1)
  %54 = call i32 @expect_pass(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @flowlabel_put(i32 %55, i32 1)
  %57 = call i32 @expect_fail(i32 %56)
  %58 = call i32 @explain(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @IPV6_FL_S_EXCL, align 4
  %61 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %62 = call i32 @flowlabel_get(i32 %59, i32 2, i32 %60, i32 %61)
  %63 = call i32 @expect_pass(i32 %62)
  %64 = call i32 @explain(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %67 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %68 = call i32 @flowlabel_get(i32 %65, i32 2, i32 %66, i32 %67)
  %69 = call i32 @expect_fail(i32 %68)
  %70 = call i32 @explain(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @IPV6_FL_S_EXCL, align 4
  %73 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %74 = call i32 @flowlabel_get(i32 %71, i32 2, i32 %72, i32 %73)
  %75 = call i32 @expect_fail(i32 %74)
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @flowlabel_put(i32 %76, i32 2)
  %78 = call i32 @expect_pass(i32 %77)
  %79 = load i64, i64* @cfg_long_running, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %1
  %82 = call i32 @explain(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %85 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %86 = call i32 @flowlabel_get(i32 %83, i32 2, i32 %84, i32 %85)
  %87 = call i32 @expect_fail(i32 %86)
  %88 = call i32 @explain(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %89 = load i32, i32* @FL_MIN_LINGER, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 1
  %92 = call i32 @sleep(i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %95 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %96 = call i32 @flowlabel_get(i32 %93, i32 2, i32 %94, i32 %95)
  %97 = call i32 @expect_pass(i32 %96)
  br label %98

98:                                               ; preds = %81, %1
  %99 = call i32 @explain(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @IPV6_FL_S_USER, align 4
  %102 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %103 = call i32 @flowlabel_get(i32 %100, i32 3, i32 %101, i32 %102)
  %104 = call i32 @expect_pass(i32 %103)
  %105 = call i32 @explain(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @IPV6_FL_S_ANY, align 4
  %108 = call i32 @flowlabel_get(i32 %106, i32 3, i32 %107, i32 0)
  %109 = call i32 @expect_fail(i32 %108)
  %110 = call i32 @explain(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @IPV6_FL_S_EXCL, align 4
  %113 = call i32 @flowlabel_get(i32 %111, i32 3, i32 %112, i32 0)
  %114 = call i32 @expect_fail(i32 %113)
  %115 = call i32 @explain(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @IPV6_FL_S_USER, align 4
  %118 = call i32 @flowlabel_get(i32 %116, i32 3, i32 %117, i32 0)
  %119 = call i32 @expect_pass(i32 %118)
  %120 = call i32 @explain(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  %121 = call i32 (...) @fork()
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %98
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @error(i32 1, i32 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %98
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %148, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %2, align 4
  %132 = load i32, i32* @IPV6_FL_S_USER, align 4
  %133 = call i32 @flowlabel_get(i32 %131, i32 3, i32 %132, i32 0)
  %134 = call i32 @expect_pass(i32 %133)
  %135 = load i32, i32* @USHRT_MAX, align 4
  %136 = call i64 @setuid(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0))
  br label %146

141:                                              ; preds = %130
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @IPV6_FL_S_USER, align 4
  %144 = call i32 @flowlabel_get(i32 %142, i32 3, i32 %143, i32 0)
  %145 = call i32 @expect_fail(i32 %144)
  br label %146

146:                                              ; preds = %141, %138
  %147 = call i32 @exit(i32 0) #3
  unreachable

148:                                              ; preds = %127
  %149 = call i32 @wait(i32* %3)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @error(i32 1, i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @WIFEXITED(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %3, align 4
  %160 = call i64 @WEXITSTATUS(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %154
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @error(i32 1, i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %158
  %166 = call i32 @explain(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @IPV6_FL_S_PROCESS, align 4
  %169 = load i32, i32* @IPV6_FL_F_CREATE, align 4
  %170 = call i32 @flowlabel_get(i32 %167, i32 4, i32 %168, i32 %169)
  %171 = call i32 @expect_pass(i32 %170)
  %172 = call i32 @explain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @IPV6_FL_S_PROCESS, align 4
  %175 = call i32 @flowlabel_get(i32 %173, i32 4, i32 %174, i32 0)
  %176 = call i32 @expect_pass(i32 %175)
  %177 = call i32 @explain(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0))
  %178 = call i32 (...) @fork()
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %184

181:                                              ; preds = %165
  %182 = load i32, i32* @errno, align 4
  %183 = call i32 @error(i32 1, i32 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %165
  %185 = load i32, i32* %4, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @IPV6_FL_S_PROCESS, align 4
  %190 = call i32 @flowlabel_get(i32 %188, i32 4, i32 %189, i32 0)
  %191 = call i32 @expect_fail(i32 %190)
  %192 = call i32 @exit(i32 0) #3
  unreachable

193:                                              ; preds = %184
  %194 = call i32 @wait(i32* %3)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* @errno, align 4
  %198 = call i32 @error(i32 1, i32 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @WIFEXITED(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i32, i32* %3, align 4
  %205 = call i64 @WEXITSTATUS(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203, %199
  %208 = load i32, i32* @errno, align 4
  %209 = call i32 @error(i32 1, i32 %208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %203
  ret void
}

declare dso_local i32 @explain(i8*) #1

declare dso_local i32 @expect_fail(i32) #1

declare dso_local i32 @flowlabel_get(i32, i32, i32, i32) #1

declare dso_local i32 @flowlabel_put(i32, i32) #1

declare dso_local i32 @expect_pass(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
