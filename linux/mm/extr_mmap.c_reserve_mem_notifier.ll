; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_reserve_mem_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_reserve_mem_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@sysctl_user_reserve_kbytes = common dso_local global i64 0, align 8
@sysctl_admin_reserve_kbytes = common dso_local global i64 0, align 8
@NR_FREE_PAGES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vm.user_reserve_kbytes reset to %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"vm.admin_reserve_kbytes reset to %lu\0A\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @reserve_mem_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_mem_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* %5, align 8
  switch i64 %9, label %52 [
    i64 128, label %10
    i64 129, label %29
  ]

10:                                               ; preds = %3
  %11 = load i64, i64* @sysctl_user_reserve_kbytes, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 0, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 131072
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @init_user_reserve()
  br label %19

19:                                               ; preds = %17, %14, %10
  %20 = load i64, i64* @sysctl_admin_reserve_kbytes, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 0, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 8192
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @init_admin_reserve()
  br label %28

28:                                               ; preds = %26, %23, %19
  br label %53

29:                                               ; preds = %3
  %30 = load i32, i32* @NR_FREE_PAGES, align 4
  %31 = call i64 @global_zone_page_state(i32 %30)
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = sub nsw i32 %32, 10
  %34 = zext i32 %33 to i64
  %35 = shl i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @sysctl_user_reserve_kbytes, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = call i32 (...) @init_user_reserve()
  %41 = load i64, i64* @sysctl_user_reserve_kbytes, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i64, i64* @sysctl_admin_reserve_kbytes, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 (...) @init_admin_reserve()
  %49 = load i64, i64* @sysctl_admin_reserve_kbytes, align 8
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %53

52:                                               ; preds = %3
  br label %53

53:                                               ; preds = %52, %51, %28
  %54 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %54
}

declare dso_local i32 @init_user_reserve(...) #1

declare dso_local i32 @init_admin_reserve(...) #1

declare dso_local i64 @global_zone_page_state(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
