; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_get_dn.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfmuxl.c_get_dn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i64 }
%struct.cfmuxl = type { i32, i32*, i32 }
%struct.dev_info = type { i32 }

@DN_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cflayer* (%struct.cfmuxl*, %struct.dev_info*)* @get_dn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cflayer* @get_dn(%struct.cfmuxl* %0, %struct.dev_info* %1) #0 {
  %3 = alloca %struct.cfmuxl*, align 8
  %4 = alloca %struct.dev_info*, align 8
  %5 = alloca %struct.cflayer*, align 8
  %6 = alloca i32, align 4
  store %struct.cfmuxl* %0, %struct.cfmuxl** %3, align 8
  store %struct.dev_info* %1, %struct.dev_info** %4, align 8
  %7 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %8 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DN_CACHE_SIZE, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cfmuxl*, %struct.cfmuxl** %3, align 8
  %13 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.cflayer* @rcu_dereference(i32 %18)
  store %struct.cflayer* %19, %struct.cflayer** %5, align 8
  %20 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %21 = icmp eq %struct.cflayer* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %24 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %27 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %25, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %22, %2
  %32 = load %struct.cfmuxl*, %struct.cfmuxl** %3, align 8
  %33 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.cfmuxl*, %struct.cfmuxl** %3, align 8
  %36 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %35, i32 0, i32 2
  %37 = load %struct.dev_info*, %struct.dev_info** %4, align 8
  %38 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = call %struct.cflayer* @get_from_id(i32* %36, i64 %40)
  store %struct.cflayer* %41, %struct.cflayer** %5, align 8
  %42 = load %struct.cfmuxl*, %struct.cfmuxl** %3, align 8
  %43 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  %50 = call i32 @rcu_assign_pointer(i32 %48, %struct.cflayer* %49)
  %51 = load %struct.cfmuxl*, %struct.cfmuxl** %3, align 8
  %52 = getelementptr inbounds %struct.cfmuxl, %struct.cfmuxl* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  br label %54

54:                                               ; preds = %31, %22
  %55 = load %struct.cflayer*, %struct.cflayer** %5, align 8
  ret %struct.cflayer* %55
}

declare dso_local %struct.cflayer* @rcu_dereference(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.cflayer* @get_from_id(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cflayer*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
