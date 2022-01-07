; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_shutdown_net.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_shutdown_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.svc_serv*, %struct.net*)* }
%struct.net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_shutdown_net(%struct.svc_serv* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %5 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %6 = load %struct.net*, %struct.net** %4, align 8
  %7 = call i32 @svc_close_net(%struct.svc_serv* %5, %struct.net* %6)
  %8 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %9 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.svc_serv*, %struct.net*)*, i32 (%struct.svc_serv*, %struct.net*)** %11, align 8
  %13 = icmp ne i32 (%struct.svc_serv*, %struct.net*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %16 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.svc_serv*, %struct.net*)*, i32 (%struct.svc_serv*, %struct.net*)** %18, align 8
  %20 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = call i32 %19(%struct.svc_serv* %20, %struct.net* %21)
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @svc_close_net(%struct.svc_serv*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
