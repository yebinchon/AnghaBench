; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c___cmd_ftrace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-ftrace.c___cmd_ftrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ftrace = type { i8*, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ftrace only works for %s!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to reset ftrace\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ftrace__workload_exec_failed_signal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to set ftrace pid\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to set tracing cpumask\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to set tracing filters\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to set graph depth\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"current_tracer\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to set current_tracer to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"trace_pipe\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"failed to open trace_pipe\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"tracing_on\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"can't enable tracing\0A\00", align 1
@done = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_ftrace*, i32, i8**)* @__cmd_ftrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_ftrace(%struct.perf_ftrace* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_ftrace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4096 x i8], align 16
  %11 = alloca %struct.pollfd, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.perf_ftrace* %0, %struct.perf_ftrace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 0
  %15 = load i32, i32* @POLLIN, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @perf_cap__capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %186

23:                                               ; preds = %3
  %24 = load i32, i32* @SIGINT, align 4
  %25 = load i32, i32* @sig_handler, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @SIGUSR1, align 4
  %28 = load i32, i32* @sig_handler, align 4
  %29 = call i32 @signal(i32 %27, i32 %28)
  %30 = load i32, i32* @SIGCHLD, align 4
  %31 = load i32, i32* @sig_handler, align 4
  %32 = call i32 @signal(i32 %30, i32 %31)
  %33 = load i32, i32* @SIGPIPE, align 4
  %34 = load i32, i32* @sig_handler, align 4
  %35 = call i32 @signal(i32 %33, i32 %34)
  %36 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %37 = call i64 @reset_tracing_files(%struct.perf_ftrace* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %181

41:                                               ; preds = %23
  %42 = call i64 @write_tracing_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %181

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %50 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %53 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %52, i32 0, i32 2
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* @ftrace__workload_exec_failed_signal, align 4
  %56 = call i64 @perf_evlist__prepare_workload(i32 %51, i32* %53, i8** %54, i32 0, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %181

59:                                               ; preds = %48, %45
  %60 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %61 = call i64 @set_tracing_pid(%struct.perf_ftrace* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %178

65:                                               ; preds = %59
  %66 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %67 = call i64 @set_tracing_cpu(%struct.perf_ftrace* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %178

71:                                               ; preds = %65
  %72 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %73 = call i64 @set_tracing_filters(%struct.perf_ftrace* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %178

77:                                               ; preds = %71
  %78 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %79 = call i64 @set_tracing_depth(%struct.perf_ftrace* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %178

83:                                               ; preds = %77
  %84 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %85 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @write_tracing_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %91 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %92)
  br label %178

94:                                               ; preds = %83
  %95 = call i32 (...) @setup_pager()
  %96 = call i8* @get_tracing_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %178

101:                                              ; preds = %94
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* @O_RDONLY, align 4
  %104 = call i32 @open(i8* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @put_tracing_file(i8* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %178

111:                                              ; preds = %101
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @F_SETFL, align 4
  %114 = load i32, i32* @O_NONBLOCK, align 4
  %115 = call i32 @fcntl(i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = call i64 @write_tracing_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %175

122:                                              ; preds = %111
  %123 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %124 = getelementptr inbounds %struct.perf_ftrace, %struct.perf_ftrace* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @perf_evlist__start_workload(i32 %125)
  br label %127

127:                                              ; preds = %156, %122
  %128 = load i64, i64* @done, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = call i64 @poll(%struct.pollfd* %11, i32 1, i32 -1)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %157

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %11, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @POLLIN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %144 = call i32 @read(i32 %142, i8* %143, i32 4096)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %157

148:                                              ; preds = %141
  %149 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @stdout, align 4
  %152 = call i32 @fwrite(i8* %149, i32 %150, i32 1, i32 %151)
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  br label %157

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %135
  br label %127

157:                                              ; preds = %154, %147, %134, %127
  %158 = call i64 @write_tracing_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %173
  %160 = load i32, i32* %9, align 4
  %161 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %162 = call i32 @read(i32 %160, i8* %161, i32 4096)
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %174

166:                                              ; preds = %159
  %167 = getelementptr inbounds [4096 x i8], [4096 x i8]* %10, i64 0, i64 0
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* @stdout, align 4
  %170 = call i32 @fwrite(i8* %167, i32 %168, i32 1, i32 %169)
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %174

173:                                              ; preds = %166
  br label %159

174:                                              ; preds = %172, %165
  br label %175

175:                                              ; preds = %174, %120
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @close(i32 %176)
  br label %178

178:                                              ; preds = %175, %109, %99, %89, %81, %75, %69, %63
  %179 = load %struct.perf_ftrace*, %struct.perf_ftrace** %5, align 8
  %180 = call i64 @reset_tracing_files(%struct.perf_ftrace* %179)
  br label %181

181:                                              ; preds = %178, %58, %44, %39
  %182 = load i64, i64* @done, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 0, i32 -1
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %181, %21
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @perf_cap__capable(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @reset_tracing_files(%struct.perf_ftrace*) #1

declare dso_local i64 @write_tracing_file(i8*, i8*) #1

declare dso_local i64 @perf_evlist__prepare_workload(i32, i32*, i8**, i32, i32) #1

declare dso_local i64 @set_tracing_pid(%struct.perf_ftrace*) #1

declare dso_local i64 @set_tracing_cpu(%struct.perf_ftrace*) #1

declare dso_local i64 @set_tracing_filters(%struct.perf_ftrace*) #1

declare dso_local i64 @set_tracing_depth(%struct.perf_ftrace*) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i8* @get_tracing_file(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @put_tracing_file(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @perf_evlist__start_workload(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
