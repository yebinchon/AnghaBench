; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_init_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.lockd_net = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@lockd_net_id = common dso_local global i32 0, align 4
@grace_ender = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @lockd_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lockd_init_net(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.lockd_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @lockd_net_id, align 4
  %6 = call %struct.lockd_net* @net_generic(%struct.net* %4, i32 %5)
  store %struct.lockd_net* %6, %struct.lockd_net** %3, align 8
  %7 = load %struct.lockd_net*, %struct.lockd_net** %3, align 8
  %8 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %7, i32 0, i32 2
  %9 = load i32, i32* @grace_ender, align 4
  %10 = call i32 @INIT_DELAYED_WORK(i32* %8, i32 %9)
  %11 = load %struct.lockd_net*, %struct.lockd_net** %3, align 8
  %12 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.lockd_net*, %struct.lockd_net** %3, align 8
  %16 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.lockd_net*, %struct.lockd_net** %3, align 8
  %19 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  ret i32 0
}

declare dso_local %struct.lockd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
