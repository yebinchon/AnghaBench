; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_port_attrs_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_port_attrs_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_port = type { %struct.devlink_port_attrs }
%struct.devlink_port_attrs = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DEVLINK_ATTR_PORT_FLAVOUR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_PCI_PF_NUMBER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_PCI_VF_NUMBER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_NUMBER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_SPLIT_GROUP = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_SPLIT_SUBPORT_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_port*)* @devlink_nl_port_attrs_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_port_attrs_put(%struct.sk_buff* %0, %struct.devlink_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_port*, align 8
  %6 = alloca %struct.devlink_port_attrs*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_port* %1, %struct.devlink_port** %5, align 8
  %7 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %8 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %7, i32 0, i32 0
  store %struct.devlink_port_attrs* %8, %struct.devlink_port_attrs** %6, align 8
  %9 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %10 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @DEVLINK_ATTR_PORT_FLAVOUR, align 4
  %17 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %18 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @nla_put_u16(%struct.sk_buff* %15, i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %14
  %26 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %27 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %108 [
    i32 130, label %30
    i32 129, label %43
    i32 128, label %65
    i32 132, label %65
    i32 131, label %65
  ]

30:                                               ; preds = %25
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @DEVLINK_ATTR_PORT_PCI_PF_NUMBER, align 4
  %33 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %34 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u16(%struct.sk_buff* %31, i32 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EMSGSIZE, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %110

42:                                               ; preds = %30
  br label %109

43:                                               ; preds = %25
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @DEVLINK_ATTR_PORT_PCI_PF_NUMBER, align 4
  %46 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %47 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nla_put_u16(%struct.sk_buff* %44, i32 %45, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @DEVLINK_ATTR_PORT_PCI_VF_NUMBER, align 4
  %55 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %56 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u16(%struct.sk_buff* %53, i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52, %43
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %110

64:                                               ; preds = %52
  br label %109

65:                                               ; preds = %25, %25, %25
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i32, i32* @DEVLINK_ATTR_PORT_NUMBER, align 4
  %68 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %69 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nla_put_u32(%struct.sk_buff* %66, i32 %67, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %110

77:                                               ; preds = %65
  %78 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %79 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %110

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i32, i32* @DEVLINK_ATTR_PORT_SPLIT_GROUP, align 4
  %86 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %87 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nla_put_u32(%struct.sk_buff* %84, i32 %85, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* @EMSGSIZE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %110

95:                                               ; preds = %83
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* @DEVLINK_ATTR_PORT_SPLIT_SUBPORT_NUMBER, align 4
  %98 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %6, align 8
  %99 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nla_put_u32(%struct.sk_buff* %96, i32 %97, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @EMSGSIZE, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %110

107:                                              ; preds = %95
  br label %109

108:                                              ; preds = %25
  br label %109

109:                                              ; preds = %108, %107, %64, %42
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %104, %92, %82, %74, %61, %39, %22, %13
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
