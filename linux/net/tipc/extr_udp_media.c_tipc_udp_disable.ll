; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_udp_media.c_tipc_udp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_bearer = type { i32 }
%struct.udp_bearer = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"UDP bearer instance not found\0A\00", align 1
@SOCK_DEAD = common dso_local global i32 0, align 4
@cleanup_bearer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_bearer*)* @tipc_udp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_udp_disable(%struct.tipc_bearer* %0) #0 {
  %2 = alloca %struct.tipc_bearer*, align 8
  %3 = alloca %struct.udp_bearer*, align 8
  store %struct.tipc_bearer* %0, %struct.tipc_bearer** %2, align 8
  %4 = load %struct.tipc_bearer*, %struct.tipc_bearer** %2, align 8
  %5 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.udp_bearer* @rtnl_dereference(i32 %6)
  store %struct.udp_bearer* %7, %struct.udp_bearer** %3, align 8
  %8 = load %struct.udp_bearer*, %struct.udp_bearer** %3, align 8
  %9 = icmp ne %struct.udp_bearer* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.udp_bearer*, %struct.udp_bearer** %3, align 8
  %14 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SOCK_DEAD, align 4
  %19 = call i32 @sock_set_flag(i32 %17, i32 %18)
  %20 = load %struct.udp_bearer*, %struct.udp_bearer** %3, align 8
  %21 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @RCU_INIT_POINTER(i32 %22, i32* null)
  %24 = load %struct.udp_bearer*, %struct.udp_bearer** %3, align 8
  %25 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %24, i32 0, i32 0
  %26 = load i32, i32* @cleanup_bearer, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.udp_bearer*, %struct.udp_bearer** %3, align 8
  %29 = getelementptr inbounds %struct.udp_bearer, %struct.udp_bearer* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  br label %31

31:                                               ; preds = %12, %10
  ret void
}

declare dso_local %struct.udp_bearer* @rtnl_dereference(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sock_set_flag(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
