; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_swapon.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_swapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i64, i32*, i32 }

@do_swap_account = common dso_local global i32 0, align 4
@SC_PER_PAGE = common dso_local global i32 0, align 4
@swap_cgroup_ctrl = common dso_local global %struct.swap_cgroup_ctrl* null, align 8
@swap_cgroup_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"couldn't allocate enough memory for swap_cgroup\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"swap_cgroup can be disabled by swapaccount=0 boot option\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_cgroup_swapon(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.swap_cgroup_ctrl*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @do_swap_account, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @SC_PER_PAGE, align 4
  %16 = call i64 @DIV_ROUND_UP(i64 %14, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = mul i64 %17, 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i8* @vzalloc(i64 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %53

24:                                               ; preds = %13
  %25 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** @swap_cgroup_ctrl, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %25, i64 %27
  store %struct.swap_cgroup_ctrl* %28, %struct.swap_cgroup_ctrl** %9, align 8
  %29 = call i32 @mutex_lock(i32* @swap_cgroup_mutex)
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %9, align 8
  %32 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %9, align 8
  %36 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %9, align 8
  %38 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %37, i32 0, i32 2
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @swap_cgroup_prepare(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %24
  %44 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %9, align 8
  %45 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %9, align 8
  %47 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = call i32 @mutex_unlock(i32* @swap_cgroup_mutex)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @vfree(i8* %49)
  br label %53

51:                                               ; preds = %24
  %52 = call i32 @mutex_unlock(i32* @swap_cgroup_mutex)
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %43, %23
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %51, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i8* @vzalloc(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @swap_cgroup_prepare(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
