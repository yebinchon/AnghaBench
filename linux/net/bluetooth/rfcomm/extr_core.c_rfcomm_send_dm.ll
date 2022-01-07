; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_dm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_cmd = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%p dlci %d\00", align 1
@RFCOMM_DM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32)* @rfcomm_send_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_dm(%struct.rfcomm_session* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_cmd, align 4
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %6, i32 %7)
  %9 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %10 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @__addr(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %5, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @RFCOMM_DM, align 4
  %19 = call i32 @__ctrl(i32 %18, i32 1)
  %20 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %5, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = call i32 @__len8(i32 0)
  %22 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.rfcomm_cmd* %5 to i32*
  %24 = call i32 @__fcs2(i32* %23)
  %25 = getelementptr inbounds %struct.rfcomm_cmd, %struct.rfcomm_cmd* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.rfcomm_session*, %struct.rfcomm_session** %3, align 8
  %27 = call i32 @rfcomm_send_cmd(%struct.rfcomm_session* %26, %struct.rfcomm_cmd* %5)
  ret i32 %27
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i32 @__len8(i32) #1

declare dso_local i32 @__fcs2(i32*) #1

declare dso_local i32 @rfcomm_send_cmd(%struct.rfcomm_session*, %struct.rfcomm_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
