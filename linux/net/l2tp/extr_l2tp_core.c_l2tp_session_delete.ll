; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { {}*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2tp_session_delete(%struct.l2tp_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2tp_session*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  %4 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %5 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %4, i32 0, i32 1
  %6 = call i64 @test_and_set_bit(i32 0, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %11 = call i32 @__l2tp_session_unhash(%struct.l2tp_session* %10)
  %12 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %13 = call i32 @l2tp_session_queue_purge(%struct.l2tp_session* %12)
  %14 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %15 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.l2tp_session*)**
  %17 = load i32 (%struct.l2tp_session*)*, i32 (%struct.l2tp_session*)** %16, align 8
  %18 = icmp ne i32 (%struct.l2tp_session*)* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %21 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.l2tp_session*)**
  %23 = load i32 (%struct.l2tp_session*)*, i32 (%struct.l2tp_session*)** %22, align 8
  %24 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %25 = call i32 %23(%struct.l2tp_session* %24)
  br label %26

26:                                               ; preds = %19, %9
  %27 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %28 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__l2tp_session_unhash(%struct.l2tp_session*) #1

declare dso_local i32 @l2tp_session_queue_purge(%struct.l2tp_session*) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
