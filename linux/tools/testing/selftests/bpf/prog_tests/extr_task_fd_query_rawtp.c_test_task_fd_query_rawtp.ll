; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_task_fd_query_rawtp.c_test_task_fd_query_rawtp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_task_fd_query_rawtp.c_test_task_fd_query_rawtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"./test_get_stack_rawtp.o\00", align 1
@BPF_PROG_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"prog_load raw tp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"err %d errno %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"sys_enter\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"raw_tp_open\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"bpf_task_fd_query\00", align 1
@BPF_FD_TYPE_RAW_TRACEPOINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"check_results\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"fd_type %d tp_name %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"bpf_task_fd_query (len = 0)\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"fd_type %d len %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"bpf_task_fd_query (buf = 0)\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"bpf_task_fd_query (len = 3)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"sy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_task_fd_query_rawtp() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %1, align 8
  %14 = load i32, i32* @BPF_PROG_TYPE_RAW_TRACEPOINT, align 4
  %15 = call i32 @bpf_prog_load(i8* %13, i32 %14, %struct.bpf_object** %7, i32* %10)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %178

22:                                               ; preds = %0
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @bpf_raw_tracepoint_open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %175

33:                                               ; preds = %22
  store i32 256, i32* %4, align 4
  %34 = call i32 (...) @getpid()
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %37 = call i32 @bpf_task_fd_query(i32 %34, i32 %35, i32 0, i8* %36, i32* %4, i32* %5, i32* %6, i32* %2, i32* %3)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %175

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BPF_FD_TYPE_RAW_TRACEPOINT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i1 [ false, %46 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %63 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %175

66:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  %67 = call i32 (...) @getpid()
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %70 = call i32 @bpf_task_fd_query(i32 %67, i32 %68, i32 0, i8* %69, i32* %4, i32* %5, i32* %6, i32* %2, i32* %3)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %175

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @BPF_FD_TYPE_RAW_TRACEPOINT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp eq i32 %84, %85
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ false, %79 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %175

99:                                               ; preds = %87
  store i32 256, i32* %4, align 4
  %100 = call i32 (...) @getpid()
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @bpf_task_fd_query(i32 %100, i32 %101, i32 0, i8* null, i32* %4, i32* %5, i32* %6, i32* %2, i32* %3)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @errno, align 4
  %108 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %175

111:                                              ; preds = %99
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @BPF_FD_TYPE_RAW_TRACEPOINT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp eq i32 %116, %117
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i1 [ false, %111 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %175

131:                                              ; preds = %119
  store i32 3, i32* %4, align 4
  %132 = call i32 (...) @getpid()
  %133 = load i32, i32* %8, align 4
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %135 = call i32 @bpf_task_fd_query(i32 %132, i32 %133, i32 0, i8* %134, i32* %4, i32* %5, i32* %6, i32* %2, i32* %3)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* @errno, align 4
  %140 = load i32, i32* @ENOSPC, align 4
  %141 = icmp ne i32 %139, %140
  br label %142

142:                                              ; preds = %138, %131
  %143 = phi i1 [ true, %131 ], [ %141, %138 ]
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @errno, align 4
  %147 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %175

150:                                              ; preds = %142
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @BPF_FD_TYPE_RAW_TRACEPOINT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br label %162

162:                                              ; preds = %158, %154, %150
  %163 = phi i1 [ false, %154 ], [ false, %150 ], [ %161, %158 ]
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i64 (i32, i8*, i8*, i32, ...) @CHECK(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %175

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %173, %149, %130, %110, %98, %78, %65, %45, %32
  %176 = load %struct.bpf_object*, %struct.bpf_object** %7, align 8
  %177 = call i32 @bpf_object__close(%struct.bpf_object* %176)
  br label %178

178:                                              ; preds = %175, %21
  ret void
}

declare dso_local i32 @bpf_prog_load(i8*, i32, %struct.bpf_object**, i32*) #1

declare dso_local i64 @CHECK(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @bpf_raw_tracepoint_open(i8*, i32) #1

declare dso_local i32 @bpf_task_fd_query(i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bpf_object__close(%struct.bpf_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
