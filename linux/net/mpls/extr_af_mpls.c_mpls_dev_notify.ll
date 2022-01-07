; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_dev_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_dev_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32 }
%struct.mpls_dev = type { i32 }

@NETDEV_REGISTER = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_LOOPBACK = common dso_local global i64 0, align 8
@ARPHRD_IPGRE = common dso_local global i64 0, align 8
@ARPHRD_IP6GRE = common dso_local global i64 0, align 8
@ARPHRD_SIT = common dso_local global i64 0, align 8
@ARPHRD_TUNNEL = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@IFF_LOWER_UP = common dso_local global i32 0, align 4
@RTNH_F_DEAD = common dso_local global i32 0, align 4
@RTNH_F_LINKDOWN = common dso_local global i32 0, align 4
@mpls_dev_destroy_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @mpls_dev_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_dev_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mpls_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NETDEV_REGISTER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARPHRD_ETHER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %53, label %23

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ARPHRD_LOOPBACK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARPHRD_IPGRE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_IP6GRE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ARPHRD_SIT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ARPHRD_TUNNEL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47, %41, %35, %29, %23, %17
  %54 = load %struct.net_device*, %struct.net_device** %8, align 8
  %55 = call %struct.mpls_dev* @mpls_add_dev(%struct.net_device* %54)
  store %struct.mpls_dev* %55, %struct.mpls_dev** %9, align 8
  %56 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %57 = call i64 @IS_ERR(%struct.mpls_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %61 = call i32 @PTR_ERR(%struct.mpls_dev* %60)
  %62 = call i32 @notifier_from_errno(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %161

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %65, i32* %4, align 4
  br label %161

66:                                               ; preds = %3
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = call %struct.mpls_dev* @mpls_dev_get(%struct.net_device* %67)
  store %struct.mpls_dev* %68, %struct.mpls_dev** %9, align 8
  %69 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %70 = icmp ne %struct.mpls_dev* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %161

73:                                               ; preds = %66
  %74 = load i64, i64* %6, align 8
  switch i64 %74, label %159 [
    i64 130, label %75
    i64 128, label %79
    i64 132, label %99
    i64 129, label %119
    i64 131, label %140
  ]

75:                                               ; preds = %73
  %76 = load %struct.net_device*, %struct.net_device** %8, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @mpls_ifdown(%struct.net_device* %76, i64 %77)
  br label %159

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %8, align 8
  %81 = call i32 @dev_get_flags(%struct.net_device* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @IFF_RUNNING, align 4
  %84 = load i32, i32* @IFF_LOWER_UP, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = load i32, i32* @RTNH_F_DEAD, align 4
  %91 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @mpls_ifup(%struct.net_device* %89, i32 %92)
  br label %98

94:                                               ; preds = %79
  %95 = load %struct.net_device*, %struct.net_device** %8, align 8
  %96 = load i32, i32* @RTNH_F_DEAD, align 4
  %97 = call i32 @mpls_ifup(%struct.net_device* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %88
  br label %159

99:                                               ; preds = %73
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = call i32 @dev_get_flags(%struct.net_device* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @IFF_RUNNING, align 4
  %104 = load i32, i32* @IFF_LOWER_UP, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.net_device*, %struct.net_device** %8, align 8
  %110 = load i32, i32* @RTNH_F_DEAD, align 4
  %111 = load i32, i32* @RTNH_F_LINKDOWN, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @mpls_ifup(%struct.net_device* %109, i32 %112)
  br label %118

114:                                              ; preds = %99
  %115 = load %struct.net_device*, %struct.net_device** %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @mpls_ifdown(%struct.net_device* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %108
  br label %159

119:                                              ; preds = %73
  %120 = load %struct.net_device*, %struct.net_device** %8, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @mpls_ifdown(%struct.net_device* %120, i64 %121)
  %123 = load %struct.net_device*, %struct.net_device** %8, align 8
  %124 = call %struct.mpls_dev* @mpls_dev_get(%struct.net_device* %123)
  store %struct.mpls_dev* %124, %struct.mpls_dev** %9, align 8
  %125 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %126 = icmp ne %struct.mpls_dev* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %119
  %128 = load %struct.net_device*, %struct.net_device** %8, align 8
  %129 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %130 = call i32 @mpls_dev_sysctl_unregister(%struct.net_device* %128, %struct.mpls_dev* %129)
  %131 = load %struct.net_device*, %struct.net_device** %8, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @RCU_INIT_POINTER(i32 %133, i32* null)
  %135 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %136 = getelementptr inbounds %struct.mpls_dev, %struct.mpls_dev* %135, i32 0, i32 0
  %137 = load i32, i32* @mpls_dev_destroy_rcu, align 4
  %138 = call i32 @call_rcu(i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %127, %119
  br label %159

140:                                              ; preds = %73
  %141 = load %struct.net_device*, %struct.net_device** %8, align 8
  %142 = call %struct.mpls_dev* @mpls_dev_get(%struct.net_device* %141)
  store %struct.mpls_dev* %142, %struct.mpls_dev** %9, align 8
  %143 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %144 = icmp ne %struct.mpls_dev* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load %struct.net_device*, %struct.net_device** %8, align 8
  %147 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %148 = call i32 @mpls_dev_sysctl_unregister(%struct.net_device* %146, %struct.mpls_dev* %147)
  %149 = load %struct.net_device*, %struct.net_device** %8, align 8
  %150 = load %struct.mpls_dev*, %struct.mpls_dev** %9, align 8
  %151 = call i32 @mpls_dev_sysctl_register(%struct.net_device* %149, %struct.mpls_dev* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @notifier_from_errno(i32 %155)
  store i32 %156, i32* %4, align 4
  br label %161

157:                                              ; preds = %145
  br label %158

158:                                              ; preds = %157, %140
  br label %159

159:                                              ; preds = %73, %158, %139, %118, %98, %75
  %160 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %159, %154, %71, %64, %59
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.mpls_dev* @mpls_add_dev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.mpls_dev*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.mpls_dev*) #1

declare dso_local %struct.mpls_dev* @mpls_dev_get(%struct.net_device*) #1

declare dso_local i32 @mpls_ifdown(%struct.net_device*, i64) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i32 @mpls_ifup(%struct.net_device*, i32) #1

declare dso_local i32 @mpls_dev_sysctl_unregister(%struct.net_device*, %struct.mpls_dev*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @mpls_dev_sysctl_register(%struct.net_device*, %struct.mpls_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
