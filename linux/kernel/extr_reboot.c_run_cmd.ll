; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_reboot.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_reboot.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_cmd.envp = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@UMH_WAIT_EXEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i8** @argv_split(i32 %5, i8* %6, i32* null)
  store i8** %7, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %3, align 8
  %15 = load i32, i32* @UMH_WAIT_EXEC, align 4
  %16 = call i32 @call_usermodehelper(i8* %13, i8** %14, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @run_cmd.envp, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32 @argv_free(i8** %17)
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i8** @argv_split(i32, i8*, i32*) #1

declare dso_local i32 @call_usermodehelper(i8*, i8**, i8**, i32) #1

declare dso_local i32 @argv_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
