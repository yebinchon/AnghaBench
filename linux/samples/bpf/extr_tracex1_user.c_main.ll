; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tracex1_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tracex1_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"taskset 1 ping -c5 localhost\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @snprintf(i8* %8, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %14 = call i64 @load_bpf_file(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** @bpf_log_buf, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 1, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = call i32* @popen(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 (...) @read_trace_pipe()
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @load_bpf_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @read_trace_pipe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
