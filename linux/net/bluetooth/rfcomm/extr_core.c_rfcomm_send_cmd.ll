; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_cmd = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%p cmd %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, %struct.rfcomm_cmd*)* @rfcomm_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_cmd(%struct.rfcomm_session* %0, %struct.rfcomm_cmd* %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca %struct.rfcomm_cmd*, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store %struct.rfcomm_cmd* %1, %struct.rfcomm_cmd** %4, align 8
  %5 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %6 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %5, i32 %8)
  %10 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %11 = load %struct.rfcomm_cmd*, %struct.rfcomm_cmd** %4, align 8
  %12 = bitcast %struct.rfcomm_cmd* %11 to i8*
  %13 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %10, i8* %12, i32 4)
  ret i32 %13
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
