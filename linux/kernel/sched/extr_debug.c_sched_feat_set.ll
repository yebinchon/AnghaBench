; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_sched_feat_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_debug.c_sched_feat_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"NO_\00", align 1
@sched_feat_names = common dso_local global i32 0, align 4
@__SCHED_FEAT_NR = common dso_local global i32 0, align 4
@sysctl_sched_features = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sched_feat_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_feat_set(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strncmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  store i32 1, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @sched_feat_names, align 4
  %14 = load i32, i32* @__SCHED_FEAT_NR, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @match_string(i32 %13, i32 %14, i8* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = shl i64 1, %26
  %28 = xor i64 %27, -1
  %29 = load i64, i64* @sysctl_sched_features, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* @sysctl_sched_features, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @sched_feat_disable(i32 %31)
  br label %41

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = load i64, i64* @sysctl_sched_features, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* @sysctl_sched_features, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @sched_feat_enable(i32 %39)
  br label %41

41:                                               ; preds = %33, %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @sched_feat_disable(i32) #1

declare dso_local i32 @sched_feat_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
