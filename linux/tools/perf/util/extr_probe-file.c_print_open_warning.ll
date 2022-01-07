; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_print_open_warning.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_print_open_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CONFIG_UPROBE_EVENTS\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CONFIG_KPROBE_EVENTS\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"%cprobe_events file does not exist - please rebuild kernel with %s.\0A\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Tracefs or debugfs is not mounted.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to open %cprobe_events: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_open_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_open_warning(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @STRERR_BUFSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 117, i32 107
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* %26)
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %45

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 117, i32 107
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 0, %40
  %42 = trunc i64 %9 to i32
  %43 = call i8* @str_error_r(i32 %41, i8* %11, i32 %42)
  %44 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %39, i8* %43)
  br label %45

45:                                               ; preds = %35, %33
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_warning(i8*, ...) #2

declare dso_local i8* @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
