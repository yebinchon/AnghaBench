; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_skb_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_skb_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i8* }
%struct.sockaddr_pn = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.pn_sock = type { i64, i64, i64 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@PACKET_LOOPBACK = common dso_local global i8* null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@PN_NO_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pn_skb_send(%struct.sock* %0, %struct.sk_buff* %1, %struct.sockaddr_pn* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sockaddr_pn*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.pn_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sockaddr_pn* %2, %struct.sockaddr_pn** %7, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = call %struct.pn_sock* @pn_sk(%struct.sock* %20)
  store %struct.pn_sock* %21, %struct.pn_sock** %10, align 8
  %22 = load %struct.pn_sock*, %struct.pn_sock** %10, align 8
  %23 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %26 = icmp ne %struct.sockaddr_pn* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %29 = call i64 @pn_sockaddr_get_object(%struct.sockaddr_pn* %28)
  store i64 %29, i64* %13, align 8
  %30 = load %struct.sockaddr_pn*, %struct.sockaddr_pn** %7, align 8
  %31 = call i64 @pn_sockaddr_get_resource(%struct.sockaddr_pn* %30)
  store i64 %31, i64* %16, align 8
  br label %39

32:                                               ; preds = %3
  %33 = load %struct.pn_sock*, %struct.pn_sock** %10, align 8
  %34 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load %struct.pn_sock*, %struct.pn_sock** %10, align 8
  %37 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %16, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i64, i64* %13, align 8
  %41 = call i64 @pn_addr(i64 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* @EHOSTUNREACH, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = load %struct.sock*, %struct.sock** %5, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.net_device* @dev_get_by_index(%struct.net* %49, i32 %52)
  store %struct.net_device* %53, %struct.net_device** %9, align 8
  br label %93

54:                                               ; preds = %39
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i64 @phonet_address_lookup(%struct.net* %55, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = call %struct.net_device* @phonet_device_get(%struct.net* %60)
  store %struct.net_device* %61, %struct.net_device** %9, align 8
  %62 = load i8*, i8** @PACKET_LOOPBACK, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %92

65:                                               ; preds = %54
  %66 = load i64, i64* %13, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.net*, %struct.net** %8, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call %struct.sock* @pn_find_sock_by_res(%struct.net* %69, i64 %70)
  store %struct.sock* %71, %struct.sock** %17, align 8
  %72 = load %struct.sock*, %struct.sock** %17, align 8
  %73 = icmp ne %struct.sock* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.sock*, %struct.sock** %17, align 8
  %76 = call i32 @sock_put(%struct.sock* %75)
  %77 = load %struct.net*, %struct.net** %8, align 8
  %78 = call %struct.net_device* @phonet_device_get(%struct.net* %77)
  store %struct.net_device* %78, %struct.net_device** %9, align 8
  %79 = load i8*, i8** @PACKET_LOOPBACK, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %86

82:                                               ; preds = %68
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = load i64, i64* %14, align 8
  %85 = call %struct.net_device* @phonet_route_output(%struct.net* %83, i64 %84)
  store %struct.net_device* %85, %struct.net_device** %9, align 8
  br label %86

86:                                               ; preds = %82, %74
  br label %91

87:                                               ; preds = %65
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call %struct.net_device* @phonet_route_output(%struct.net* %88, i64 %89)
  store %struct.net_device* %90, %struct.net_device** %9, align 8
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %48
  %94 = load %struct.net_device*, %struct.net_device** %9, align 8
  %95 = icmp ne %struct.net_device* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IFF_UP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96, %93
  br label %131

104:                                              ; preds = %96
  %105 = load %struct.net_device*, %struct.net_device** %9, align 8
  %106 = load i64, i64* %14, align 8
  %107 = call i64 @phonet_address_get(%struct.net_device* %105, i64 %106)
  store i64 %107, i64* %15, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* @PN_NO_ADDR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %131

112:                                              ; preds = %104
  %113 = load i64, i64* %12, align 8
  %114 = call i64 @pn_addr(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @pn_obj(i64 %118)
  %120 = call i64 @pn_object(i64 %117, i32 %119)
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load %struct.net_device*, %struct.net_device** %9, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %16, align 8
  %127 = call i32 @pn_send(%struct.sk_buff* %122, %struct.net_device* %123, i64 %124, i64 %125, i64 %126, i32 0)
  store i32 %127, i32* %11, align 4
  %128 = load %struct.net_device*, %struct.net_device** %9, align 8
  %129 = call i32 @dev_put(%struct.net_device* %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %4, align 4
  br label %141

131:                                              ; preds = %111, %103
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load %struct.net_device*, %struct.net_device** %9, align 8
  %135 = icmp ne %struct.net_device* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.net_device*, %struct.net_device** %9, align 8
  %138 = call i32 @dev_put(%struct.net_device* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %121
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i64 @pn_sockaddr_get_object(%struct.sockaddr_pn*) #1

declare dso_local i64 @pn_sockaddr_get_resource(%struct.sockaddr_pn*) #1

declare dso_local i64 @pn_addr(i64) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i64 @phonet_address_lookup(%struct.net*, i64) #1

declare dso_local %struct.net_device* @phonet_device_get(%struct.net*) #1

declare dso_local %struct.sock* @pn_find_sock_by_res(%struct.net*, i64) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.net_device* @phonet_route_output(%struct.net*, i64) #1

declare dso_local i64 @phonet_address_get(%struct.net_device*, i64) #1

declare dso_local i64 @pn_object(i64, i32) #1

declare dso_local i32 @pn_obj(i64) #1

declare dso_local i32 @pn_send(%struct.sk_buff*, %struct.net_device*, i64, i64, i64, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
