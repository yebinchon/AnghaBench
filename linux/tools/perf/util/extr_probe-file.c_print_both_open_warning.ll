; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_print_both_open_warning.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_print_both_open_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Tracefs or debugfs is not mounted.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Please rebuild kernel with CONFIG_KPROBE_EVENTS or/and CONFIG_UPROBE_EVENTS.\0A\00", align 1
@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open kprobe events: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open uprobe events: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @print_both_open_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_both_open_warning(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ENOTSUP, align 4
  %9 = sub nsw i32 0, %8
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ENOTSUP, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %46

30:                                               ; preds = %23, %18
  %31 = load i32, i32* @STRERR_BUFSIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %5, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %6, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 0, %35
  %37 = trunc i64 %32 to i32
  %38 = call i32 @str_error_r(i32 %36, i8* %34, i32 %37)
  %39 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 0, %40
  %42 = trunc i64 %32 to i32
  %43 = call i32 @str_error_r(i32 %41, i8* %34, i32 %42)
  %44 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %45)
  br label %46

46:                                               ; preds = %30, %28
  br label %47

47:                                               ; preds = %46, %16
  ret void
}

declare dso_local i32 @pr_warning(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
