; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64 }

@L2TP_TUNNEL_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2tp_session_free(%struct.l2tp_session* %0) #0 {
  %2 = alloca %struct.l2tp_session*, align 8
  %3 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %2, align 8
  %4 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %5 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %4, i32 0, i32 1
  %6 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %5, align 8
  store %struct.l2tp_tunnel* %6, %struct.l2tp_tunnel** %3, align 8
  %7 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %8 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %7, i32 0, i32 0
  %9 = call i64 @refcount_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %14 = icmp ne %struct.l2tp_tunnel* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %17 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @L2TP_TUNNEL_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %24 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %27 = call i32 @kfree(%struct.l2tp_session* %26)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @kfree(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
