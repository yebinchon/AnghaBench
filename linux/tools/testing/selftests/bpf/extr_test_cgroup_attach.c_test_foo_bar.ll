; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_foo_bar.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_foo_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FOO = common dso_local global i32 0, align 4
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@BPF_F_ALLOW_OVERRIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Attaching prog to /foo\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Attached DROP prog. This ping in cgroup /foo should fail...\0A\00", align 1
@PING_CMD = common dso_local global i32 0, align 4
@BAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Attached DROP prog. This ping in cgroup /foo/bar should fail...\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Attaching prog to /foo/bar\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Attached PASS prog. This ping in cgroup /foo/bar should pass...\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Detaching program from /foo/bar\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"Detached PASS from /foo/bar while DROP is attached to /foo.\0AThis ping in cgroup /foo/bar should fail...\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Detaching program from /foo\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"Attached PASS from /foo/bar and detached DROP from /foo.\0AThis ping in cgroup /foo/bar should pass...\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [46 x i8] c"Unexpected success attaching prog to /foo/bar\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Unexpected success in double detach from /foo\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"Attaching non-overridable prog to /foo\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Unexpected success attaching non-overridable prog to /foo/bar\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"Unexpected success attaching overridable prog to /foo/bar\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"Unexpected success attaching overridable prog to /foo\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Attaching different non-overridable prog to /foo\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"#override:PASS\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"#override:FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_foo_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_foo_bar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @prog_load(i32 1)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %186

10:                                               ; preds = %0
  %11 = call i32 @prog_load(i32 0)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %186

15:                                               ; preds = %10
  %16 = call i64 (...) @setup_cgroup_environment()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %186

19:                                               ; preds = %15
  %20 = load i32, i32* @FOO, align 4
  %21 = call i32 @create_and_get_cgroup(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %186

25:                                               ; preds = %19
  %26 = load i32, i32* @FOO, align 4
  %27 = call i64 @join_cgroup(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %186

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %34 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %35 = call i64 @bpf_prog_attach(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %186

39:                                               ; preds = %30
  %40 = call i32 @debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @PING_CMD, align 4
  %42 = call i64 @system(i32 %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* @BAR, align 4
  %47 = call i32 @create_and_get_cgroup(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %186

51:                                               ; preds = %39
  %52 = load i32, i32* @BAR, align 4
  %53 = call i64 @join_cgroup(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %186

56:                                               ; preds = %51
  %57 = call i32 @debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @PING_CMD, align 4
  %59 = call i64 @system(i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %66 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %67 = call i64 @bpf_prog_attach(i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %186

71:                                               ; preds = %56
  %72 = call i32 @debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @PING_CMD, align 4
  %74 = call i64 @system(i32 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %80 = call i64 @bpf_prog_detach(i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %186

84:                                               ; preds = %71
  %85 = call i32 @debug(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* @PING_CMD, align 4
  %87 = call i64 @system(i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %94 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %95 = call i64 @bpf_prog_attach(i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %186

99:                                               ; preds = %84
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %102 = call i64 @bpf_prog_detach(i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %186

106:                                              ; preds = %99
  %107 = call i32 @debug(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32, i32* @PING_CMD, align 4
  %109 = call i64 @system(i32 %108)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %116 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %117 = call i64 @bpf_prog_attach(i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %186

121:                                              ; preds = %106
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %125 = call i64 @bpf_prog_attach(i32 %122, i32 %123, i32 %124, i32 0)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  store i64 0, i64* @errno, align 8
  %128 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %186

129:                                              ; preds = %121
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %132 = call i64 @bpf_prog_detach(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %186

136:                                              ; preds = %129
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %139 = call i64 @bpf_prog_detach(i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  store i64 0, i64* @errno, align 8
  %142 = call i32 @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  br label %186

143:                                              ; preds = %136
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %147 = call i64 @bpf_prog_attach(i32 %144, i32 %145, i32 %146, i32 0)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  br label %186

151:                                              ; preds = %143
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %155 = call i64 @bpf_prog_attach(i32 %152, i32 %153, i32 %154, i32 0)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %151
  store i64 0, i64* @errno, align 8
  %158 = call i32 @log_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  br label %186

159:                                              ; preds = %151
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %163 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %164 = call i64 @bpf_prog_attach(i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  store i64 0, i64* @errno, align 8
  %167 = call i32 @log_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  br label %186

168:                                              ; preds = %159
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* %3, align 4
  %171 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %172 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %173 = call i64 @bpf_prog_attach(i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %168
  store i64 0, i64* @errno, align 8
  %176 = call i32 @log_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0))
  br label %186

177:                                              ; preds = %168
  %178 = load i32, i32* %1, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %181 = call i64 @bpf_prog_attach(i32 %178, i32 %179, i32 %180, i32 0)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = call i32 @log_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  br label %186

185:                                              ; preds = %177
  br label %187

186:                                              ; preds = %183, %175, %166, %157, %149, %141, %134, %127, %119, %104, %97, %82, %69, %55, %50, %37, %29, %24, %18, %14, %9
  store i32 1, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @close(i32 %188)
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @close(i32 %190)
  %192 = call i32 (...) @cleanup_cgroup_environment()
  %193 = load i32, i32* %5, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %187
  %196 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %199

197:                                              ; preds = %187
  %198 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %195
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @prog_load(i32) #1

declare dso_local i64 @setup_cgroup_environment(...) #1

declare dso_local i32 @create_and_get_cgroup(i32) #1

declare dso_local i64 @join_cgroup(i32) #1

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @system(i32) #1

declare dso_local i64 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cleanup_cgroup_environment(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
