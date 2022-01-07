; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_remove_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_discover.c_tipc_disc_remove_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_discoverer = type { i32, i32, i32, i32 }

@TIPC_DISC_INACTIVE = common dso_local global i32 0, align 4
@TIPC_DISC_FAST = common dso_local global i32 0, align 4
@TIPC_DISC_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_disc_remove_dest(%struct.tipc_discoverer* %0) #0 {
  %2 = alloca %struct.tipc_discoverer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tipc_discoverer* %0, %struct.tipc_discoverer** %2, align 8
  %5 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %6 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %9 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %13 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %16 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @TIPC_DISC_INACTIVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @TIPC_DISC_FAST, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @TIPC_DISC_INIT, align 4
  %30 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %31 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %33 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %32, i32 0, i32 3
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %36 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = call i32 @mod_timer(i32* %33, i64 %39)
  br label %41

41:                                               ; preds = %28, %24, %1
  %42 = load %struct.tipc_discoverer*, %struct.tipc_discoverer** %2, align 8
  %43 = getelementptr inbounds %struct.tipc_discoverer, %struct.tipc_discoverer* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_bh(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
