; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_test_kprobes.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_test_kprobes.c_test_kprobes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i64, i32* }

@kp = common dso_local global %struct.kprobe zeroinitializer, align 8
@kp2 = common dso_local global %struct.kprobe zeroinitializer, align 8
@__const.test_kprobes.kps = private unnamed_addr constant [2 x %struct.kprobe*] [%struct.kprobe* @kp, %struct.kprobe* @kp2], align 16
@.str = private unnamed_addr constant [30 x i8] c"register_kprobes returned %d\0A\00", align 1
@preh_val = common dso_local global i64 0, align 8
@posth_val = common dso_local global i64 0, align 8
@rand1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"kprobe pre_handler not called\0A\00", align 1
@handler_errors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"kprobe post_handler not called\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"kprobe pre_handler2 not called\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"kprobe post_handler2 not called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_kprobes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kprobes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x %struct.kprobe*], align 16
  %4 = bitcast [2 x %struct.kprobe*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([2 x %struct.kprobe*]* @__const.test_kprobes.kps to i8*), i64 16, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.kprobe, %struct.kprobe* @kp, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.kprobe, %struct.kprobe* @kp, i32 0, i32 0), align 8
  %5 = getelementptr inbounds [2 x %struct.kprobe*], [2 x %struct.kprobe*]* %3, i64 0, i64 0
  %6 = call i32 @register_kprobes(%struct.kprobe** %5, i32 2)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* %1, align 4
  br label %48

13:                                               ; preds = %0
  store i64 0, i64* @preh_val, align 8
  store i64 0, i64* @posth_val, align 8
  %14 = load i32, i32* @rand1, align 4
  %15 = call i32 @target(i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i64, i64* @preh_val, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @handler_errors, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @handler_errors, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i64, i64* @posth_val, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @handler_errors, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @handler_errors, align 4
  br label %29

29:                                               ; preds = %25, %22
  store i64 0, i64* @preh_val, align 8
  store i64 0, i64* @posth_val, align 8
  %30 = load i32, i32* @rand1, align 4
  %31 = call i32 @target2(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i64, i64* @preh_val, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @handler_errors, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @handler_errors, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i64, i64* @posth_val, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @handler_errors, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @handler_errors, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = getelementptr inbounds [2 x %struct.kprobe*], [2 x %struct.kprobe*]* %3, i64 0, i64 0
  %47 = call i32 @unregister_kprobes(%struct.kprobe** %46, i32 2)
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %45, %9
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @register_kprobes(%struct.kprobe**, i32) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @target(i32) #2

declare dso_local i32 @target2(i32) #2

declare dso_local i32 @unregister_kprobes(%struct.kprobe**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
