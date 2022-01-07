; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_slow_acct_process.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_slow_acct_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { %struct.pid_namespace* }
%struct.bsd_acct_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_namespace*)* @slow_acct_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slow_acct_process(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca %struct.bsd_acct_struct*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %6 = icmp ne %struct.pid_namespace* %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %9 = call %struct.bsd_acct_struct* @acct_get(%struct.pid_namespace* %8)
  store %struct.bsd_acct_struct* %9, %struct.bsd_acct_struct** %3, align 8
  %10 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %3, align 8
  %11 = icmp ne %struct.bsd_acct_struct* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %3, align 8
  %14 = call i32 @do_acct_process(%struct.bsd_acct_struct* %13)
  %15 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %3, align 8
  %16 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %3, align 8
  %19 = call i32 @acct_put(%struct.bsd_acct_struct* %18)
  br label %20

20:                                               ; preds = %12, %7
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %23 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %22, i32 0, i32 0
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %23, align 8
  store %struct.pid_namespace* %24, %struct.pid_namespace** %2, align 8
  br label %4

25:                                               ; preds = %4
  ret void
}

declare dso_local %struct.bsd_acct_struct* @acct_get(%struct.pid_namespace*) #1

declare dso_local i32 @do_acct_process(%struct.bsd_acct_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @acct_put(%struct.bsd_acct_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
