; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_expire_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_expire_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@aarp_lock = common dso_local global i32 0, align 4
@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@resolved = common dso_local global i32* null, align 8
@unresolved = common dso_local global i32* null, align 8
@proxies = common dso_local global i32* null, align 8
@aarp_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@unresolved_count = common dso_local global i64 0, align 8
@sysctl_aarp_tick_time = common dso_local global i64 0, align 8
@sysctl_aarp_expiry_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @aarp_expire_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aarp_expire_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = call i32 @write_lock_bh(i32* @aarp_lock)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AARP_HASH_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load i32*, i32** @resolved, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @__aarp_expire_timer(i32* %13)
  %15 = load i32*, i32** @unresolved, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @__aarp_kick(i32* %18)
  %20 = load i32*, i32** @unresolved, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @__aarp_expire_timer(i32* %23)
  %25 = load i32*, i32** @proxies, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @__aarp_expire_timer(i32* %28)
  br label %30

30:                                               ; preds = %9
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  %34 = call i32 @write_unlock_bh(i32* @aarp_lock)
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @unresolved_count, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @sysctl_aarp_tick_time, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @sysctl_aarp_expiry_time, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  %44 = add nsw i64 %35, %43
  %45 = call i32 @mod_timer(i32* @aarp_timer, i64 %44)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__aarp_expire_timer(i32*) #1

declare dso_local i32 @__aarp_kick(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
