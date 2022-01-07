; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_test_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_test_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"register_kprobe returned %d\0A\00", align 1
@rand1 = common dso_local global i32 0, align 4
@preh_val = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"kprobe pre_handler not called\0A\00", align 1
@handler_errors = common dso_local global i32 0, align 4
@posth_val = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"kprobe post_handler not called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kprobe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @register_kprobe(i32* @kp)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %28

10:                                               ; preds = %0
  %11 = load i32, i32* @rand1, align 4
  %12 = call i32 @target(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = call i32 @unregister_kprobe(i32* @kp)
  %14 = load i64, i64* @preh_val, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @handler_errors, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @handler_errors, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = load i64, i64* @posth_val, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @handler_errors, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @handler_errors, align 4
  br label %27

27:                                               ; preds = %23, %20
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %6
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @register_kprobe(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @target(i32) #1

declare dso_local i32 @unregister_kprobe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
