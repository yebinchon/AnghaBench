; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_dev_mc.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_packet_dev_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.packet_mclist = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.packet_mclist*, i32)* @packet_dev_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_dev_mc(%struct.net_device* %0, %struct.packet_mclist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.packet_mclist*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.packet_mclist* %1, %struct.packet_mclist** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %9 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %71 [
    i32 130, label %11
    i32 129, label %37
    i32 131, label %41
    i32 128, label %45
  ]

11:                                               ; preds = %3
  %12 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %13 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %73

22:                                               ; preds = %11
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %28 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_mc_add(%struct.net_device* %26, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %34 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_mc_del(%struct.net_device* %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %3
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_set_promiscuity(%struct.net_device* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %3
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_set_allmulti(%struct.net_device* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %3
  %46 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %47 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %73

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %62 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_uc_add(%struct.net_device* %60, i32 %63)
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load %struct.packet_mclist*, %struct.packet_mclist** %6, align 8
  %68 = getelementptr inbounds %struct.packet_mclist, %struct.packet_mclist* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_uc_del(%struct.net_device* %66, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %3
  br label %72

72:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %65, %59, %53, %41, %37, %31, %25, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_mc_del(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_uc_add(%struct.net_device*, i32) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
