; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_rcu_putref.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipc_rcu_putref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_ipc_perm = type { i32, i32 }
%struct.rcu_head = type opaque
%struct.rcu_head.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_rcu_putref(%struct.kern_ipc_perm* %0, void (%struct.rcu_head*)* %1) #0 {
  %3 = alloca %struct.kern_ipc_perm*, align 8
  %4 = alloca void (%struct.rcu_head*)*, align 8
  store %struct.kern_ipc_perm* %0, %struct.kern_ipc_perm** %3, align 8
  store void (%struct.rcu_head*)* %1, void (%struct.rcu_head*)** %4, align 8
  %5 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %6 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %5, i32 0, i32 1
  %7 = call i32 @refcount_dec_and_test(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %12 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %11, i32 0, i32 0
  %13 = load void (%struct.rcu_head*)*, void (%struct.rcu_head*)** %4, align 8
  %14 = bitcast void (%struct.rcu_head*)* %13 to void (%struct.rcu_head.0*)*
  %15 = call i32 @call_rcu(i32* %12, void (%struct.rcu_head.0*)* %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @call_rcu(i32*, void (%struct.rcu_head.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
