; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_chain_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_chain = type { i32, i32, i32 }
%struct.tcf_proto = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_chain*, i32)* @tcf_chain_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_chain_flush(%struct.tcf_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.tcf_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  store %struct.tcf_chain* %0, %struct.tcf_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %14 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %12, %struct.tcf_chain* %13)
  store %struct.tcf_proto* %14, %struct.tcf_proto** %5, align 8
  br label %15

15:                                               ; preds = %18, %2
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %17 = icmp ne %struct.tcf_proto* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %20 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tcf_proto* @rcu_dereference_protected(i32 %21, i32 1)
  store %struct.tcf_proto* %22, %struct.tcf_proto** %6, align 8
  %23 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %25 = call i32 @tcf_proto_signal_destroying(%struct.tcf_chain* %23, %struct.tcf_proto* %24)
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  store %struct.tcf_proto* %26, %struct.tcf_proto** %5, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %29 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %32 = call %struct.tcf_proto* @tcf_chain_dereference(i32 %30, %struct.tcf_chain* %31)
  store %struct.tcf_proto* %32, %struct.tcf_proto** %5, align 8
  %33 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %34 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RCU_INIT_POINTER(i32 %35, i32* null)
  %37 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %38 = call i32 @tcf_chain0_head_change(%struct.tcf_chain* %37, i32* null)
  %39 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %40 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.tcf_chain*, %struct.tcf_chain** %3, align 8
  %42 = getelementptr inbounds %struct.tcf_chain, %struct.tcf_chain* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %47, %27
  %45 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %46 = icmp ne %struct.tcf_proto* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %49 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.tcf_proto* @rcu_dereference_protected(i32 %50, i32 1)
  store %struct.tcf_proto* %51, %struct.tcf_proto** %6, align 8
  %52 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @tcf_proto_put(%struct.tcf_proto* %52, i32 %53, i32* null)
  %55 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  store %struct.tcf_proto* %55, %struct.tcf_proto** %5, align 8
  br label %44

56:                                               ; preds = %44
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tcf_proto* @tcf_chain_dereference(i32, %struct.tcf_chain*) #1

declare dso_local %struct.tcf_proto* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @tcf_proto_signal_destroying(%struct.tcf_chain*, %struct.tcf_proto*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @tcf_chain0_head_change(%struct.tcf_chain*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcf_proto_put(%struct.tcf_proto*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
