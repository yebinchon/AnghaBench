; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_send_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_send_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { i32 }
%struct.bnep_control_rsp = type { i32, i32, i32 }

@BNEP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnep_session*, i32, i32)* @bnep_send_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_send_rsp(%struct.bnep_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnep_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnep_control_rsp, align 4
  store %struct.bnep_session* %0, %struct.bnep_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @BNEP_CONTROL, align 4
  %9 = getelementptr inbounds %struct.bnep_control_rsp, %struct.bnep_control_rsp* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.bnep_control_rsp, %struct.bnep_control_rsp* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = getelementptr inbounds %struct.bnep_control_rsp, %struct.bnep_control_rsp* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.bnep_session*, %struct.bnep_session** %4, align 8
  %16 = call i32 @bnep_send(%struct.bnep_session* %15, %struct.bnep_control_rsp* %7, i32 12)
  ret i32 %16
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bnep_send(%struct.bnep_session*, %struct.bnep_control_rsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
