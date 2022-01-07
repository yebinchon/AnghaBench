; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_svc.c_svc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.atm_vcc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @svc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %11)
  store %struct.atm_vcc* %12, %struct.atm_vcc** %4, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %13)
  %15 = load i32, i32* @ATM_VF_READY, align 4
  %16 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %17 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %20 = call i32 @svc_disconnect(%struct.atm_vcc* %19)
  %21 = load %struct.socket*, %struct.socket** %2, align 8
  %22 = call i32 @vcc_release(%struct.socket* %21)
  br label %23

23:                                               ; preds = %10, %1
  ret i32 0
}

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @pr_debug(i8*, %struct.atm_vcc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @svc_disconnect(%struct.atm_vcc*) #1

declare dso_local i32 @vcc_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
