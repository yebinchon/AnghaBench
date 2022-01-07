; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_pppoatm.c_pppoatm_unassign_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_pppoatm.c_pppoatm_unassign_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32*, i32, i32, i32 }
%struct.pppoatm_vcc = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @pppoatm_unassign_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppoatm_unassign_vcc(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.pppoatm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %4 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %5 = call %struct.pppoatm_vcc* @atmvcc_to_pvcc(%struct.atm_vcc* %4)
  store %struct.pppoatm_vcc* %5, %struct.pppoatm_vcc** %3, align 8
  %6 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %7 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %12 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %15 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %17 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %20 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %22 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %21, i32 0, i32 1
  %23 = call i32 @tasklet_kill(i32* %22)
  %24 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %25 = getelementptr inbounds %struct.pppoatm_vcc, %struct.pppoatm_vcc* %24, i32 0, i32 0
  %26 = call i32 @ppp_unregister_channel(i32* %25)
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.pppoatm_vcc*, %struct.pppoatm_vcc** %3, align 8
  %30 = call i32 @kfree(%struct.pppoatm_vcc* %29)
  ret void
}

declare dso_local %struct.pppoatm_vcc* @atmvcc_to_pvcc(%struct.atm_vcc*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ppp_unregister_channel(i32*) #1

declare dso_local i32 @kfree(%struct.pppoatm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
