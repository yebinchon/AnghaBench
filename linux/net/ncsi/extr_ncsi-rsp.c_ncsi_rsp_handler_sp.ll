; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_sp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_pkt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_package = type { i32 }

@NCSI_DEV_PROBED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_sp(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca i8, align 1
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %8 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %9 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %8, i32 0, i32 1
  %10 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %9, align 8
  store %struct.ncsi_dev_priv* %10, %struct.ncsi_dev_priv** %5, align 8
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %12 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @skb_network_header(i32 %13)
  %15 = inttoptr i64 %14 to %struct.ncsi_rsp_pkt*
  store %struct.ncsi_rsp_pkt* %15, %struct.ncsi_rsp_pkt** %4, align 8
  %16 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %17 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %16, i32 %21, %struct.ncsi_package** %6, i32* null)
  %23 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %24 = icmp ne %struct.ncsi_package* %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %1
  %26 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NCSI_DEV_PROBED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %52

35:                                               ; preds = %25
  %36 = load %struct.ncsi_rsp_pkt*, %struct.ncsi_rsp_pkt** %4, align 8
  %37 = getelementptr inbounds %struct.ncsi_rsp_pkt, %struct.ncsi_rsp_pkt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call zeroext i8 @NCSI_PACKAGE_INDEX(i32 %40)
  store i8 %41, i8* %7, align 1
  %42 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %43 = load i8, i8* %7, align 1
  %44 = call %struct.ncsi_package* @ncsi_add_package(%struct.ncsi_dev_priv* %42, i8 zeroext %43)
  store %struct.ncsi_package* %44, %struct.ncsi_package** %6, align 8
  %45 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %46 = icmp ne %struct.ncsi_package* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47, %32
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, %struct.ncsi_package**, i32*) #1

declare dso_local zeroext i8 @NCSI_PACKAGE_INDEX(i32) #1

declare dso_local %struct.ncsi_package* @ncsi_add_package(%struct.ncsi_dev_priv*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
