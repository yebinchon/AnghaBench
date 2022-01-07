; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_shared_policy_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mpol_shared_policy_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32 }
%struct.shared_policy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sp_node = type { %struct.mempolicy* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @mpol_shared_policy_lookup(%struct.shared_policy* %0, i64 %1) #0 {
  %3 = alloca %struct.mempolicy*, align 8
  %4 = alloca %struct.shared_policy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mempolicy*, align 8
  %7 = alloca %struct.sp_node*, align 8
  store %struct.shared_policy* %0, %struct.shared_policy** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mempolicy* null, %struct.mempolicy** %6, align 8
  %8 = load %struct.shared_policy*, %struct.shared_policy** %4, align 8
  %9 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.mempolicy* null, %struct.mempolicy** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.shared_policy*, %struct.shared_policy** %4, align 8
  %16 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %15, i32 0, i32 0
  %17 = call i32 @read_lock(i32* %16)
  %18 = load %struct.shared_policy*, %struct.shared_policy** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  %22 = call %struct.sp_node* @sp_lookup(%struct.shared_policy* %18, i64 %19, i64 %21)
  store %struct.sp_node* %22, %struct.sp_node** %7, align 8
  %23 = load %struct.sp_node*, %struct.sp_node** %7, align 8
  %24 = icmp ne %struct.sp_node* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.sp_node*, %struct.sp_node** %7, align 8
  %27 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %26, i32 0, i32 0
  %28 = load %struct.mempolicy*, %struct.mempolicy** %27, align 8
  %29 = call i32 @mpol_get(%struct.mempolicy* %28)
  %30 = load %struct.sp_node*, %struct.sp_node** %7, align 8
  %31 = getelementptr inbounds %struct.sp_node, %struct.sp_node* %30, i32 0, i32 0
  %32 = load %struct.mempolicy*, %struct.mempolicy** %31, align 8
  store %struct.mempolicy* %32, %struct.mempolicy** %6, align 8
  br label %33

33:                                               ; preds = %25, %14
  %34 = load %struct.shared_policy*, %struct.shared_policy** %4, align 8
  %35 = getelementptr inbounds %struct.shared_policy, %struct.shared_policy* %34, i32 0, i32 0
  %36 = call i32 @read_unlock(i32* %35)
  %37 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  store %struct.mempolicy* %37, %struct.mempolicy** %3, align 8
  br label %38

38:                                               ; preds = %33, %13
  %39 = load %struct.mempolicy*, %struct.mempolicy** %3, align 8
  ret %struct.mempolicy* %39
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sp_node* @sp_lookup(%struct.shared_policy*, i64, i64) #1

declare dso_local i32 @mpol_get(%struct.mempolicy*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
