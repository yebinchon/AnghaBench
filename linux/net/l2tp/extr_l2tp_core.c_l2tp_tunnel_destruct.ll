; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_tunnel_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_tunnel_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*)*, i32* }
%struct.l2tp_tunnel = type { i32, i32 (%struct.sock*)*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32 }

@L2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: closing...\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @l2tp_tunnel_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_tunnel_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.l2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.l2tp_tunnel* @l2tp_tunnel(%struct.sock* %4)
  store %struct.l2tp_tunnel* %5, %struct.l2tp_tunnel** %3, align 8
  %6 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %7 = icmp eq %struct.l2tp_tunnel* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %11 = load i32, i32* @L2TP_MSG_CONTROL, align 4
  %12 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %13 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @l2tp_info(%struct.l2tp_tunnel* %10, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %17 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %30 [
    i32 128, label %19
    i32 129, label %29
  ]

19:                                               ; preds = %9
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %30

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %9, %29, %19
  %31 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %32 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %31, i32 0, i32 1
  %33 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %32, align 8
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  store i32 (%struct.sock*)* %33, i32 (%struct.sock*)** %35, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %39, align 8
  %41 = icmp ne i32 (%struct.sock*)* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %44, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 %45(%struct.sock* %46)
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %3, align 8
  %50 = load i32, i32* @rcu, align 4
  %51 = call i32 @kfree_rcu(%struct.l2tp_tunnel* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %8
  ret void
}

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel(%struct.sock*) #1

declare dso_local i32 @l2tp_info(%struct.l2tp_tunnel*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @kfree_rcu(%struct.l2tp_tunnel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
