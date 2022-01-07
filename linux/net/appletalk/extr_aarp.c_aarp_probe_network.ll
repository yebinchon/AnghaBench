; ModuleID = '/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_probe_network.c'
source_filename = "/home/carl/AnghaBench/linux/net/appletalk/extr_aarp.c_aarp_probe_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ARPHRD_LOCALTLK = common dso_local global i64 0, align 8
@ARPHRD_PPP = common dso_local global i64 0, align 8
@AARP_RETRANSMIT_LIMIT = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aarp_probe_network(%struct.atalk_iface* %0) #0 {
  %2 = alloca %struct.atalk_iface*, align 8
  %3 = alloca i32, align 4
  store %struct.atalk_iface* %0, %struct.atalk_iface** %2, align 8
  %4 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %5 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ARPHRD_LOCALTLK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %13 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARPHRD_PPP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11, %1
  %20 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %21 = call i32 @aarp_send_probe_phase1(%struct.atalk_iface* %20)
  br label %47

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @AARP_RETRANSMIT_LIMIT, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %29 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %32 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %31, i32 0, i32 1
  %33 = call i32 @aarp_send_probe(%struct.TYPE_2__* %30, i32* %32)
  %34 = call i32 @msleep(i32 100)
  %35 = load %struct.atalk_iface*, %struct.atalk_iface** %2, align 8
  %36 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %23

46:                                               ; preds = %41, %23
  br label %47

47:                                               ; preds = %46, %19
  ret void
}

declare dso_local i32 @aarp_send_probe_phase1(%struct.atalk_iface*) #1

declare dso_local i32 @aarp_send_probe(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
