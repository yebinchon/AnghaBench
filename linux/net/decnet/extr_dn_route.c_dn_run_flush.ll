; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_run_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_run_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.timer_list = type { i32 }
%struct.dn_route = type { i32, i32 }

@dn_rt_hash_mask = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dn_run_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_run_flush(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_route*, align 8
  %5 = alloca %struct.dn_route*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %55, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @dn_rt_hash_mask, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dn_rt_hash_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dn_rt_hash_table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = bitcast i32* %21 to %struct.dn_route**
  %23 = call %struct.dn_route* @xchg(%struct.dn_route** %22, i32* null)
  store %struct.dn_route* %23, %struct.dn_route** %4, align 8
  %24 = icmp eq %struct.dn_route* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  br label %48

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %45, %26
  %28 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %29 = icmp ne %struct.dn_route* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %32 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.dn_route* @rcu_dereference_raw(i32 %33)
  store %struct.dn_route* %34, %struct.dn_route** %5, align 8
  %35 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %36 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @RCU_INIT_POINTER(i32 %37, i32* null)
  %39 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %40 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %39, i32 0, i32 0
  %41 = call i32 @dst_dev_put(i32* %40)
  %42 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %43 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %42, i32 0, i32 0
  %44 = call i32 @dst_release(i32* %43)
  br label %45

45:                                               ; preds = %30
  %46 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  store %struct.dn_route* %46, %struct.dn_route** %4, align 8
  br label %27

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dn_rt_hash_table, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %6

58:                                               ; preds = %6
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.dn_route* @xchg(%struct.dn_route**, i32*) #1

declare dso_local %struct.dn_route* @rcu_dereference_raw(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @dst_dev_put(i32*) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
