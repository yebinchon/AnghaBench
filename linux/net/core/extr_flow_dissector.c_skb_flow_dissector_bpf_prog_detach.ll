; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissector_bpf_prog_detach.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_skb_flow_dissector_bpf_prog_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net* }
%struct.net = type { i32 }
%union.bpf_attr = type { i32 }
%struct.bpf_prog = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@flow_dissector_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_flow_dissector_bpf_prog_detach(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.net*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %5, align 8
  %11 = call i32 @mutex_lock(i32* @flow_dissector_mutex)
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = getelementptr inbounds %struct.net, %struct.net* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @lockdep_is_held(i32* @flow_dissector_mutex)
  %16 = call %struct.bpf_prog* @rcu_dereference_protected(i32 %14, i32 %15)
  store %struct.bpf_prog* %16, %struct.bpf_prog** %4, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %18 = icmp ne %struct.bpf_prog* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = call i32 @mutex_unlock(i32* @flow_dissector_mutex)
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @RCU_INIT_POINTER(i32 %26, i32* null)
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %29 = call i32 @bpf_prog_put(%struct.bpf_prog* %28)
  %30 = call i32 @mutex_unlock(i32* @flow_dissector_mutex)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bpf_prog* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @bpf_prog_put(%struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
