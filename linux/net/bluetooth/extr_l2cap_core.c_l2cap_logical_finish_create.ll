; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_finish_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_logical_finish_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, %struct.TYPE_2__*, %struct.hci_chan* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_chan = type { i32 }
%struct.l2cap_conf_rsp = type { i32 }

@CONF_INPUT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.hci_chan*)* @l2cap_logical_finish_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_logical_finish_create(%struct.l2cap_chan* %0, %struct.hci_chan* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.hci_chan*, align 8
  %5 = alloca %struct.l2cap_conf_rsp, align 4
  %6 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.hci_chan* %1, %struct.hci_chan** %4, align 8
  %7 = load %struct.hci_chan*, %struct.hci_chan** %4, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 4
  store %struct.hci_chan* %7, %struct.hci_chan** %9, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan* %17, %struct.l2cap_conf_rsp* %5, i32 %20, i32 0)
  %22 = load i32, i32* @CONF_INPUT_DONE, align 4
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %2
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %29 = call i32 @set_default_fcs(%struct.l2cap_chan* %28)
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %31 = call i32 @l2cap_ertm_init(%struct.l2cap_chan* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %35, i32 %37)
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %41 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan*, %struct.l2cap_conf_rsp*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_default_fcs(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_ertm_init(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
