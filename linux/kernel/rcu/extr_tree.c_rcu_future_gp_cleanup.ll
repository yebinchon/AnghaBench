; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_future_gp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_future_gp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_node = type { i32, i32 }
%struct.rcu_data = type { i32 }

@rcu_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"CleanupMore\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Cleanup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcu_node*)* @rcu_future_gp_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_future_gp_cleanup(%struct.rcu_node* %0) #0 {
  %2 = alloca %struct.rcu_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_node* %0, %struct.rcu_node** %2, align 8
  %5 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %5, %struct.rcu_data** %4, align 8
  %6 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %7 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %10 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ULONG_CMP_LT(i32 %8, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %17 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %20 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %23 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %24 = load %struct.rcu_node*, %struct.rcu_node** %2, align 8
  %25 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

31:                                               ; preds = %21
  %32 = call i32 @TPS(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %22, %struct.rcu_data* %23, i32 %26, i32 %34)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @ULONG_CMP_LT(i32, i32) #1

declare dso_local i32 @trace_rcu_this_gp(%struct.rcu_node*, %struct.rcu_data*, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
