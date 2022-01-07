; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_purge_vcc.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_signaling.c_purge_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.TYPE_2__ = type { i64 }

@PF_ATMSVC = common dso_local global i64 0, align 8
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @purge_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @purge_vcc(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %3 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %4 = call %struct.TYPE_2__* @sk_atm(%struct.atm_vcc* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PF_ATMSVC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @ATM_VF_META, align 4
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @ATM_VF_RELEASED, align 4
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @ATM_VF_REGIS, align 4
  %21 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %22 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %21, i32 0, i32 0
  %23 = call i32 @clear_bit(i32 %20, i32* %22)
  %24 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %25 = load i32, i32* @EUNATCH, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @vcc_release_async(%struct.atm_vcc* %24, i32 %26)
  br label %28

28:                                               ; preds = %15, %9, %1
  ret void
}

declare dso_local %struct.TYPE_2__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vcc_release_async(%struct.atm_vcc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
