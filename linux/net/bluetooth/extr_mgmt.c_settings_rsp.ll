; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_settings_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_settings_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32*, i32, i32 }
%struct.cmd_lookup = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgmt_pending_cmd*, i8*)* @settings_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settings_rsp(%struct.mgmt_pending_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmd_lookup*, align 8
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cmd_lookup*
  store %struct.cmd_lookup* %7, %struct.cmd_lookup** %5, align 8
  %8 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %15 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @send_settings_rsp(i32* %10, i32 %13, i32 %16)
  %18 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %22 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %30 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %32 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @sock_hold(i32* %33)
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %37 = call i32 @mgmt_pending_free(%struct.mgmt_pending_cmd* %36)
  ret void
}

declare dso_local i32 @send_settings_rsp(i32*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @mgmt_pending_free(%struct.mgmt_pending_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
