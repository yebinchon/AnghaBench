; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_syscall_tp_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_syscall_tp_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"i:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  %11 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %13 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %13, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %25 [
    i32 105, label %21
    i32 104, label %24
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @optarg, align 4
  %23 = call i32 @atoi(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %30

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %19, %24
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @usage(i8* %28)
  store i32 0, i32* %3, align 4
  br label %42

30:                                               ; preds = %21
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %33 = call i32 @setrlimit(i32 %32, %struct.rlimit* %6)
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @test(i8* %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @test(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
