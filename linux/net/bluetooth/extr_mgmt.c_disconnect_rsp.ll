; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_disconnect_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_disconnect_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { %struct.sock*, i32 (%struct.mgmt_pending_cmd*, i32)* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgmt_pending_cmd*, i8*)* @disconnect_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect_rsp(%struct.mgmt_pending_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock**, align 8
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sock**
  store %struct.sock** %7, %struct.sock*** %5, align 8
  %8 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %8, i32 0, i32 1
  %10 = load i32 (%struct.mgmt_pending_cmd*, i32)*, i32 (%struct.mgmt_pending_cmd*, i32)** %9, align 8
  %11 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %12 = call i32 %10(%struct.mgmt_pending_cmd* %11, i32 0)
  %13 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %13, i32 0, i32 0
  %15 = load %struct.sock*, %struct.sock** %14, align 8
  %16 = load %struct.sock**, %struct.sock*** %5, align 8
  store %struct.sock* %15, %struct.sock** %16, align 8
  %17 = load %struct.sock**, %struct.sock*** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  %19 = call i32 @sock_hold(%struct.sock* %18)
  %20 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %21 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %20)
  ret void
}

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
