; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_acct_struct = type { i32, i32 }
%struct.pid_namespace = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsd_acct_struct* (%struct.pid_namespace*)* @acct_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsd_acct_struct* @acct_get(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.bsd_acct_struct*, align 8
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.bsd_acct_struct*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  br label %5

5:                                                ; preds = %37, %22, %1
  %6 = call i32 (...) @smp_rmb()
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %9 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  %12 = call %struct.bsd_acct_struct* @to_acct(i32 %11)
  store %struct.bsd_acct_struct* %12, %struct.bsd_acct_struct** %4, align 8
  %13 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %14 = icmp ne %struct.bsd_acct_struct* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = call i32 (...) @rcu_read_unlock()
  store %struct.bsd_acct_struct* null, %struct.bsd_acct_struct** %2, align 8
  br label %45

17:                                               ; preds = %5
  %18 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %19 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %18, i32 0, i32 1
  %20 = call i32 @atomic_long_inc_not_zero(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = call i32 (...) @cpu_relax()
  br label %5

25:                                               ; preds = %17
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %28 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %32 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  %35 = call %struct.bsd_acct_struct* @to_acct(i32 %34)
  %36 = icmp ne %struct.bsd_acct_struct* %30, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %39 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %42 = call i32 @acct_put(%struct.bsd_acct_struct* %41)
  br label %5

43:                                               ; preds = %25
  %44 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  store %struct.bsd_acct_struct* %44, %struct.bsd_acct_struct** %2, align 8
  br label %45

45:                                               ; preds = %43, %15
  %46 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %2, align 8
  ret %struct.bsd_acct_struct* %46
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bsd_acct_struct* @to_acct(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_long_inc_not_zero(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acct_put(%struct.bsd_acct_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
