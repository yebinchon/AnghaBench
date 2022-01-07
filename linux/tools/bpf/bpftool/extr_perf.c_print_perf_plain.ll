; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_print_perf_plain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_print_perf_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"pid %d  fd %d: prog_id %u  \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"raw_tracepoint  %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tracepoint  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"kprobe  func %s  offset %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"kprobe  addr %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"kretprobe  func %s  offset %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"kretprobe  addr %llu\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"uprobe  filename %s  offset %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"uretprobe  filename %s  offset %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i8*, i32, i32)* @print_perf_plain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_perf_plain(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %62 [
    i32 131, label %20
    i32 130, label %23
    i32 133, label %26
    i32 132, label %40
    i32 129, label %54
    i32 128, label %58
  ]

20:                                               ; preds = %7
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %63

23:                                               ; preds = %7
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %63

26:                                               ; preds = %7
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %34)
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %63

40:                                               ; preds = %7
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %47, i32 %48)
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %63

54:                                               ; preds = %7
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %55, i32 %56)
  br label %63

58:                                               ; preds = %7
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %59, i32 %60)
  br label %63

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %62, %58, %54, %53, %39, %23, %20
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
