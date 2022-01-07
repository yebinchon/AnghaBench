; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.l2tp_session = type { i32, i32 }
%struct.pppol2tp_session = type { i32, i32 }

@pppol2tp_recv = common dso_local global i32 0, align 4
@CONFIG_L2TP_DEBUGFS = common dso_local global i32 0, align 4
@pppol2tp_show = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_session*)* @pppol2tp_session_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_session_init(%struct.l2tp_session* %0) #0 {
  %2 = alloca %struct.l2tp_session*, align 8
  %3 = alloca %struct.pppol2tp_session*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %2, align 8
  %4 = load i32, i32* @pppol2tp_recv, align 4
  %5 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %6 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @CONFIG_L2TP_DEBUGFS, align 4
  %8 = call i64 @IS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @pppol2tp_show, align 4
  %12 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %13 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %16 = call %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session* %15)
  store %struct.pppol2tp_session* %16, %struct.pppol2tp_session** %3, align 8
  %17 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %18 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %24 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.pppol2tp_session* @l2tp_session_priv(%struct.l2tp_session*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
