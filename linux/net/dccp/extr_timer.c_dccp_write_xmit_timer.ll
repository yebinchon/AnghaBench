; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_xmit_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_timer.c_dccp_write_xmit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccp_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@dccps_xmit_timer = common dso_local global i32 0, align 4
@dp = common dso_local global %struct.dccp_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dccp_write_xmit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_write_xmit_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dccp_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %6 = ptrtoint %struct.dccp_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @dccps_xmit_timer, align 4
  %9 = call %struct.dccp_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.dccp_sock* %9, %struct.dccp_sock** %3, align 8
  %10 = load %struct.dccp_sock*, %struct.dccp_sock** %3, align 8
  %11 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.sock* %13, %struct.sock** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = ptrtoint %struct.sock* %14 to i64
  %16 = call i32 @dccp_write_xmitlet(i64 %15)
  ret void
}

declare dso_local %struct.dccp_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dccp_write_xmitlet(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
