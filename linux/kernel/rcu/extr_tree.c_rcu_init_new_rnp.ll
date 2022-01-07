; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_init_new_rnp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_init_new_rnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_node = type { i64, i64, %struct.rcu_node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_node*)* @rcu_init_new_rnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_init_new_rnp(%struct.rcu_node* %0) #0 {
  %2 = alloca %struct.rcu_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rcu_node*, align 8
  store %struct.rcu_node* %0, %struct.rcu_node** %2, align 8
  %6 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  store %struct.rcu_node* %6, %struct.rcu_node** %5, align 8
  %7 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %8 = call i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node* %7)
  %9 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %10 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  br label %13

13:                                               ; preds = %39, %1
  %14 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %15 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %3, align 8
  %17 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %18 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %17, i32 0, i32 2
  %19 = load %struct.rcu_node*, %struct.rcu_node** %18, align 8
  store %struct.rcu_node* %19, %struct.rcu_node** %5, align 8
  %20 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %21 = icmp eq %struct.rcu_node* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %40

23:                                               ; preds = %13
  %24 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %25 = call i32 @raw_spin_lock_rcu_node(%struct.rcu_node* %24)
  %26 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %27 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %31 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %35 = call i32 @raw_spin_unlock_rcu_node(%struct.rcu_node* %34)
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  br label %40

39:                                               ; preds = %23
  br label %13

40:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_spin_lock_rcu_node(%struct.rcu_node*) #1

declare dso_local i32 @raw_spin_unlock_rcu_node(%struct.rcu_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
