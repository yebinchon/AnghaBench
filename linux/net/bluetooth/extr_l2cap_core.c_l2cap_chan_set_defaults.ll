; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i64, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i32 }

@L2CAP_FCS_CRC16 = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MAX_TX = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_TX_WINDOW = common dso_local global i8* null, align 8
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_RETRANS_TO = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MONITOR_TO = common dso_local global i32 0, align 4
@FLAG_FORCE_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_chan_set_defaults(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load i32, i32* @L2CAP_FCS_CRC16, align 4
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %4, i32 0, i32 12
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @L2CAP_DEFAULT_MAX_TX, align 4
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 9
  store i32 %6, i32* %8, align 8
  %9 = load i8*, i8** @L2CAP_DEFAULT_TX_WINDOW, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @L2CAP_DEFAULT_TX_WINDOW, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @L2CAP_DEFAULT_TX_WINDOW, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @BT_SECURITY_LOW, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @L2CAP_DEFAULT_FLUSH_TO, align 4
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @L2CAP_DEFAULT_RETRANS_TO, align 4
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @L2CAP_DEFAULT_MONITOR_TO, align 4
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @FLAG_FORCE_ACTIVE, align 4
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
