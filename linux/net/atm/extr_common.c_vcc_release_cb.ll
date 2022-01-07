; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_release_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_common.c_vcc_release_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @vcc_release_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcc_release_cb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.atm_vcc*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.atm_vcc* @atm_sk(%struct.sock* %4)
  store %struct.atm_vcc* %5, %struct.atm_vcc** %3, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %6, i32 0, i32 0
  %8 = load i32 (%struct.atm_vcc*)*, i32 (%struct.atm_vcc*)** %7, align 8
  %9 = icmp ne i32 (%struct.atm_vcc*)* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 0
  %13 = load i32 (%struct.atm_vcc*)*, i32 (%struct.atm_vcc*)** %12, align 8
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %15 = call i32 %13(%struct.atm_vcc* %14)
  br label %16

16:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.atm_vcc* @atm_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
