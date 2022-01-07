; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.j1939_sock = type { i32, i64, %struct.TYPE_6__, i32, %struct.j1939_priv* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.j1939_priv = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i64 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @j1939_sk_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_can*, align 8
  %9 = alloca %struct.j1939_sock*, align 8
  %10 = alloca %struct.j1939_priv*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %16, %struct.sockaddr_can** %8, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  %20 = call %struct.j1939_sock* @j1939_sk(%struct.sock* %19)
  store %struct.j1939_sock* %20, %struct.j1939_sock** %9, align 8
  %21 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %22 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %21, i32 0, i32 4
  %23 = load %struct.j1939_priv*, %struct.j1939_priv** %22, align 8
  store %struct.j1939_priv* %23, %struct.j1939_priv** %10, align 8
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %11, align 8
  %27 = load %struct.sock*, %struct.sock** %11, align 8
  %28 = call %struct.net* @sock_net(%struct.sock* %27)
  store %struct.net* %28, %struct.net** %12, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @j1939_sk_sanity_check(%struct.sockaddr_can* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %169

36:                                               ; preds = %3
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.sock*, %struct.sock** %38, align 8
  %40 = call i32 @lock_sock(%struct.sock* %39)
  %41 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %42 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %36
  %48 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %49 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %163

58:                                               ; preds = %47
  %59 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %60 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %61 = call i32 @j1939_jsk_del(%struct.j1939_priv* %59, %struct.j1939_sock* %60)
  %62 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %63 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %64 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %68 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @j1939_local_ecu_put(%struct.j1939_priv* %62, i32 %66, i32 %70)
  br label %111

72:                                               ; preds = %36
  %73 = load %struct.net*, %struct.net** %12, align 8
  %74 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %75 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call %struct.net_device* @dev_get_by_index(%struct.net* %73, i64 %76)
  store %struct.net_device* %77, %struct.net_device** %14, align 8
  %78 = load %struct.net_device*, %struct.net_device** %14, align 8
  %79 = icmp ne %struct.net_device* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %163

83:                                               ; preds = %72
  %84 = load %struct.net_device*, %struct.net_device** %14, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ARPHRD_CAN, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.net_device*, %struct.net_device** %14, align 8
  %91 = call i32 @dev_put(%struct.net_device* %90)
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %163

94:                                               ; preds = %83
  %95 = load %struct.net_device*, %struct.net_device** %14, align 8
  %96 = call %struct.j1939_priv* @j1939_netdev_start(%struct.net_device* %95)
  store %struct.j1939_priv* %96, %struct.j1939_priv** %10, align 8
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = call i32 @dev_put(%struct.net_device* %97)
  %99 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %100 = call i64 @IS_ERR(%struct.j1939_priv* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %104 = call i32 @PTR_ERR(%struct.j1939_priv* %103)
  store i32 %104, i32* %13, align 4
  br label %163

105:                                              ; preds = %94
  %106 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %107 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %110 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %58
  %112 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %113 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @j1939_pgn_is_valid(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %121 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %126 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %119, %111
  %128 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %129 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %134 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %137 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %142 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %145 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %146 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %150 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @j1939_local_ecu_get(%struct.j1939_priv* %144, i32 %148, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %127
  %157 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %158 = call i32 @j1939_netdev_stop(%struct.j1939_priv* %157)
  br label %163

159:                                              ; preds = %127
  %160 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %161 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %162 = call i32 @j1939_jsk_add(%struct.j1939_priv* %160, %struct.j1939_sock* %161)
  br label %163

163:                                              ; preds = %159, %156, %102, %89, %80, %55
  %164 = load %struct.socket*, %struct.socket** %5, align 8
  %165 = getelementptr inbounds %struct.socket, %struct.socket* %164, i32 0, i32 0
  %166 = load %struct.sock*, %struct.sock** %165, align 8
  %167 = call i32 @release_sock(%struct.sock* %166)
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %163, %34
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.j1939_sock* @j1939_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @j1939_sk_sanity_check(%struct.sockaddr_can*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @j1939_jsk_del(%struct.j1939_priv*, %struct.j1939_sock*) #1

declare dso_local i32 @j1939_local_ecu_put(%struct.j1939_priv*, i32, i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.j1939_priv* @j1939_netdev_start(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.j1939_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.j1939_priv*) #1

declare dso_local i64 @j1939_pgn_is_valid(i32) #1

declare dso_local i32 @j1939_local_ecu_get(%struct.j1939_priv*, i32, i32) #1

declare dso_local i32 @j1939_netdev_stop(%struct.j1939_priv*) #1

declare dso_local i32 @j1939_jsk_add(%struct.j1939_priv*, %struct.j1939_sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
