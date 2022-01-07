; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_deactivate_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_deactivate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_session = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@J1939_SESSION_ACTIVE = common dso_local global i64 0, align 8
@J1939_SESSION_ACTIVE_MAX = common dso_local global i64 0, align 8
@J1939_SESSION_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_session*)* @j1939_session_deactivate_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_session_deactivate_locked(%struct.j1939_session* %0) #0 {
  %2 = alloca %struct.j1939_session*, align 8
  %3 = alloca i32, align 4
  store %struct.j1939_session* %0, %struct.j1939_session** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %5 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %10 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @J1939_SESSION_ACTIVE, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %16 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @J1939_SESSION_ACTIVE_MAX, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  %21 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %22 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %21, i32 0, i32 1
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load i64, i64* @J1939_SESSION_DONE, align 8
  %25 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %26 = getelementptr inbounds %struct.j1939_session, %struct.j1939_session* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.j1939_session*, %struct.j1939_session** %2, align 8
  %28 = call i32 @j1939_session_put(%struct.j1939_session* %27)
  br label %29

29:                                               ; preds = %20, %14, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @j1939_session_put(%struct.j1939_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
