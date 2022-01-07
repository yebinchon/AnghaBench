; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_gpnum_ovf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_gpnum_ovf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_node = type { i64 }
%struct.rcu_data = type { i64, i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_node*, %struct.rcu_data*)* @rcu_gpnum_ovf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_gpnum_ovf(%struct.rcu_node* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca %struct.rcu_node*, align 8
  %4 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_node* %0, %struct.rcu_node** %3, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %4, align 8
  %5 = load %struct.rcu_node*, %struct.rcu_node** %3, align 8
  %6 = call i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node* %5)
  %7 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %8 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %7, i32 0, i32 2
  %9 = call i64 @rcu_seq_current(i32* %8)
  %10 = load i32, i32* @ULONG_MAX, align 4
  %11 = sdiv i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = load %struct.rcu_node*, %struct.rcu_node** %3, align 8
  %15 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @ULONG_CMP_LT(i64 %13, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %21 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @WRITE_ONCE(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %26 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @ULONG_MAX, align 4
  %29 = sdiv i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = load %struct.rcu_node*, %struct.rcu_node** %3, align 8
  %33 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ULONG_CMP_LT(i64 %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = load %struct.rcu_node*, %struct.rcu_node** %3, align 8
  %39 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ULONG_MAX, align 4
  %42 = sdiv i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %46 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %37, %24
  ret void
}

declare dso_local i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node*) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i64 @rcu_seq_current(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
