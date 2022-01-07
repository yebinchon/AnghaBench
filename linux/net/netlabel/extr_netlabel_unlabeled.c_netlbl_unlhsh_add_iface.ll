; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_unlhsh_iface = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@netlbl_unlhsh_lock = common dso_local global i32 0, align 4
@netlbl_unlhsh = common dso_local global i32 0, align 4
@netlbl_unlhsh_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_unlhsh_iface* (i32)* @netlbl_unlhsh_add_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_add_iface(i32 %0) #0 {
  %2 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netlbl_unlhsh_iface*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.netlbl_unlhsh_iface* @kzalloc(i32 20, i32 %6)
  store %struct.netlbl_unlhsh_iface* %7, %struct.netlbl_unlhsh_iface** %5, align 8
  %8 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %9 = icmp eq %struct.netlbl_unlhsh_iface* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %62

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %14 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %16 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %15, i32 0, i32 4
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %19 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %18, i32 0, i32 3
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %22 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = call i32 @spin_lock(i32* @netlbl_unlhsh_lock)
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @netlbl_unlhsh_hash(i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32* @netlbl_unlhsh_search_iface(i32 %29)
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %58

33:                                               ; preds = %26
  %34 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %35 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %34, i32 0, i32 2
  %36 = load i32, i32* @netlbl_unlhsh, align 4
  %37 = call %struct.TYPE_2__* @netlbl_unlhsh_rcu_deref(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @list_add_tail_rcu(i32* %35, i32* %41)
  br label %55

43:                                               ; preds = %11
  %44 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %45 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %44, i32 0, i32 2
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load i32, i32* @netlbl_unlhsh_def, align 4
  %48 = call %struct.TYPE_2__* @netlbl_unlhsh_rcu_deref(i32 %47)
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @netlbl_unlhsh_def, align 4
  %53 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %54 = call i32 @rcu_assign_pointer(i32 %52, %struct.netlbl_unlhsh_iface* %53)
  br label %55

55:                                               ; preds = %51, %33
  %56 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %57 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  store %struct.netlbl_unlhsh_iface* %57, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %62

58:                                               ; preds = %50, %32
  %59 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %60 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %5, align 8
  %61 = call i32 @kfree(%struct.netlbl_unlhsh_iface* %60)
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %2, align 8
  br label %62

62:                                               ; preds = %58, %55, %10
  %63 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %2, align 8
  ret %struct.netlbl_unlhsh_iface* %63
}

declare dso_local %struct.netlbl_unlhsh_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netlbl_unlhsh_hash(i32) #1

declare dso_local i32* @netlbl_unlhsh_search_iface(i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @netlbl_unlhsh_rcu_deref(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.netlbl_unlhsh_iface*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.netlbl_unlhsh_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
