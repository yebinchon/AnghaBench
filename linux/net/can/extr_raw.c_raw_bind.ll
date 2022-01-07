; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_raw.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_can = type { i64, i32 }
%struct.raw_sock = type { i32, i32 }
%struct.net_device = type { i64, i32, i32 }

@can_ifindex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_can*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.raw_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_can*
  store %struct.sockaddr_can* %17, %struct.sockaddr_can** %8, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %9, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.raw_sock* @raw_sk(%struct.sock* %21)
  store %struct.raw_sock* %22, %struct.raw_sock** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %25 = load i32, i32* @can_ifindex, align 4
  %26 = bitcast %struct.sockaddr_can* %24 to { i64, i32 }*
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CAN_REQUIRED_SIZE(i64 %28, i32 %30, i32 %25)
  %32 = icmp slt i32 %23, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %179

36:                                               ; preds = %3
  %37 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_CAN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %179

45:                                               ; preds = %36
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = call i32 @lock_sock(%struct.sock* %46)
  %48 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %49 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %57 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %157

61:                                               ; preds = %52, %45
  %62 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %63 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %61
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = call i32 @sock_net(%struct.sock* %67)
  %69 = load %struct.sockaddr_can*, %struct.sockaddr_can** %8, align 8
  %70 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.net_device* @dev_get_by_index(i32 %68, i32 %71)
  store %struct.net_device* %72, %struct.net_device** %14, align 8
  %73 = load %struct.net_device*, %struct.net_device** %14, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  br label %157

78:                                               ; preds = %66
  %79 = load %struct.net_device*, %struct.net_device** %14, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ARPHRD_CAN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.net_device*, %struct.net_device** %14, align 8
  %86 = call i32 @dev_put(%struct.net_device* %85)
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %12, align 4
  br label %157

89:                                               ; preds = %78
  %90 = load %struct.net_device*, %struct.net_device** %14, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFF_UP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.net_device*, %struct.net_device** %14, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  %101 = load %struct.sock*, %struct.sock** %9, align 8
  %102 = call i32 @sock_net(%struct.sock* %101)
  %103 = load %struct.net_device*, %struct.net_device** %14, align 8
  %104 = load %struct.sock*, %struct.sock** %9, align 8
  %105 = call i32 @raw_enable_allfilters(i32 %102, %struct.net_device* %103, %struct.sock* %104)
  store i32 %105, i32* %12, align 4
  %106 = load %struct.net_device*, %struct.net_device** %14, align 8
  %107 = call i32 @dev_put(%struct.net_device* %106)
  br label %113

108:                                              ; preds = %61
  store i32 0, i32* %11, align 4
  %109 = load %struct.sock*, %struct.sock** %9, align 8
  %110 = call i32 @sock_net(%struct.sock* %109)
  %111 = load %struct.sock*, %struct.sock** %9, align 8
  %112 = call i32 @raw_enable_allfilters(i32 %110, %struct.net_device* null, %struct.sock* %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %108, %97
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %156, label %116

116:                                              ; preds = %113
  %117 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %118 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %116
  %122 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %123 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load %struct.sock*, %struct.sock** %9, align 8
  %128 = call i32 @sock_net(%struct.sock* %127)
  %129 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %130 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call %struct.net_device* @dev_get_by_index(i32 %128, i32 %131)
  store %struct.net_device* %132, %struct.net_device** %15, align 8
  %133 = load %struct.net_device*, %struct.net_device** %15, align 8
  %134 = icmp ne %struct.net_device* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load %struct.net_device*, %struct.net_device** %15, align 8
  %137 = call i32 @dev_net(%struct.net_device* %136)
  %138 = load %struct.net_device*, %struct.net_device** %15, align 8
  %139 = load %struct.sock*, %struct.sock** %9, align 8
  %140 = call i32 @raw_disable_allfilters(i32 %137, %struct.net_device* %138, %struct.sock* %139)
  %141 = load %struct.net_device*, %struct.net_device** %15, align 8
  %142 = call i32 @dev_put(%struct.net_device* %141)
  br label %143

143:                                              ; preds = %135, %126
  br label %149

144:                                              ; preds = %121
  %145 = load %struct.sock*, %struct.sock** %9, align 8
  %146 = call i32 @sock_net(%struct.sock* %145)
  %147 = load %struct.sock*, %struct.sock** %9, align 8
  %148 = call i32 @raw_disable_allfilters(i32 %146, %struct.net_device* null, %struct.sock* %147)
  br label %149

149:                                              ; preds = %144, %143
  br label %150

150:                                              ; preds = %149, %116
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %153 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.raw_sock*, %struct.raw_sock** %10, align 8
  %155 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %113
  br label %157

157:                                              ; preds = %156, %84, %75, %60
  %158 = load %struct.sock*, %struct.sock** %9, align 8
  %159 = call i32 @release_sock(%struct.sock* %158)
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load i32, i32* @ENETDOWN, align 4
  %164 = load %struct.sock*, %struct.sock** %9, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.sock*, %struct.sock** %9, align 8
  %167 = load i32, i32* @SOCK_DEAD, align 4
  %168 = call i32 @sock_flag(%struct.sock* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %162
  %171 = load %struct.sock*, %struct.sock** %9, align 8
  %172 = getelementptr inbounds %struct.sock, %struct.sock* %171, i32 0, i32 0
  %173 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %172, align 8
  %174 = load %struct.sock*, %struct.sock** %9, align 8
  %175 = call i32 %173(%struct.sock* %174)
  br label %176

176:                                              ; preds = %170, %162
  br label %177

177:                                              ; preds = %176, %157
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %42, %33
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @CAN_REQUIRED_SIZE(i64, i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @raw_enable_allfilters(i32, %struct.net_device*, %struct.sock*) #1

declare dso_local i32 @raw_disable_allfilters(i32, %struct.net_device*, %struct.sock*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
