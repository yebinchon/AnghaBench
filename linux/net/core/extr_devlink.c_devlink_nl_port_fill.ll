; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_port_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_port_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_port = type { i64, i64, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32 }
%struct.ib_device = type { i32, i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_TYPE = common dso_local global i32 0, align 4
@DEVLINK_PORT_TYPE_NOTSET = common dso_local global i64 0, align 8
@DEVLINK_ATTR_PORT_DESIRED_TYPE = common dso_local global i32 0, align 4
@DEVLINK_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@DEVLINK_ATTR_PORT_NETDEV_IFINDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PORT_NETDEV_NAME = common dso_local global i32 0, align 4
@DEVLINK_PORT_TYPE_IB = common dso_local global i64 0, align 8
@DEVLINK_ATTR_PORT_IBDEV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, %struct.devlink_port*, i32, i32, i32, i32)* @devlink_nl_port_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_port_fill(%struct.sk_buff* %0, %struct.devlink* %1, %struct.devlink_port* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca %struct.devlink_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca %struct.ib_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store %struct.devlink_port* %2, %struct.devlink_port** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i8* @genlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32* @devlink_nl_family, i32 %22, i32 %23)
  store i8* %24, i8** %16, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %148

30:                                               ; preds = %7
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = load %struct.devlink*, %struct.devlink** %10, align 8
  %33 = call i64 @devlink_nl_put_handle(%struct.sk_buff* %31, %struct.devlink* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %142

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* @DEVLINK_ATTR_PORT_INDEX, align 4
  %39 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %40 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %142

45:                                               ; preds = %36
  %46 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %47 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %46, i32 0, i32 2
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = load i32, i32* @DEVLINK_ATTR_PORT_TYPE, align 4
  %51 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %52 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @nla_put_u16(%struct.sk_buff* %49, i32 %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %138

57:                                               ; preds = %45
  %58 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %59 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DEVLINK_PORT_TYPE_NOTSET, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load i32, i32* @DEVLINK_ATTR_PORT_DESIRED_TYPE, align 4
  %66 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %67 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @nla_put_u16(%struct.sk_buff* %64, i32 %65, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %138

72:                                               ; preds = %63, %57
  %73 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %74 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DEVLINK_PORT_TYPE_ETH, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %80 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %79, i32 0, i32 3
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  store %struct.net_device* %81, %struct.net_device** %17, align 8
  %82 = load %struct.net_device*, %struct.net_device** %17, align 8
  %83 = icmp ne %struct.net_device* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = load i32, i32* @DEVLINK_ATTR_PORT_NETDEV_IFINDEX, align 4
  %87 = load %struct.net_device*, %struct.net_device** %17, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @nla_put_u32(%struct.sk_buff* %85, i32 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = load i32, i32* @DEVLINK_ATTR_PORT_NETDEV_NAME, align 4
  %95 = load %struct.net_device*, %struct.net_device** %17, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @nla_put_string(%struct.sk_buff* %93, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92, %84
  br label %138

101:                                              ; preds = %92, %78
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %104 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DEVLINK_PORT_TYPE_IB, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %102
  %109 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %110 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %109, i32 0, i32 3
  %111 = load %struct.net_device*, %struct.net_device** %110, align 8
  %112 = bitcast %struct.net_device* %111 to %struct.ib_device*
  store %struct.ib_device* %112, %struct.ib_device** %18, align 8
  %113 = load %struct.ib_device*, %struct.ib_device** %18, align 8
  %114 = icmp ne %struct.ib_device* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = load i32, i32* @DEVLINK_ATTR_PORT_IBDEV_NAME, align 4
  %118 = load %struct.ib_device*, %struct.ib_device** %18, align 8
  %119 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @nla_put_string(%struct.sk_buff* %116, i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %138

124:                                              ; preds = %115, %108
  br label %125

125:                                              ; preds = %124, %102
  %126 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %127 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %126, i32 0, i32 2
  %128 = call i32 @spin_unlock_bh(i32* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %131 = call i64 @devlink_nl_port_attrs_put(%struct.sk_buff* %129, %struct.devlink_port* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %142

134:                                              ; preds = %125
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = call i32 @genlmsg_end(%struct.sk_buff* %135, i8* %136)
  store i32 0, i32* %8, align 4
  br label %148

138:                                              ; preds = %123, %100, %71, %56
  %139 = load %struct.devlink_port*, %struct.devlink_port** %11, align 8
  %140 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock_bh(i32* %140)
  br label %142

142:                                              ; preds = %138, %133, %44, %35
  %143 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = call i32 @genlmsg_cancel(%struct.sk_buff* %143, i8* %144)
  %146 = load i32, i32* @EMSGSIZE, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %134, %27
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @devlink_nl_port_attrs_put(%struct.sk_buff*, %struct.devlink_port*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
