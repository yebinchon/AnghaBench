; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_constructor.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ndisc.c_ndisc_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.neighbour = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { %struct.neigh_parms* }
%struct.neigh_parms = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i8* null, align 8
@ndisc_direct_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@neigh_direct_output = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RTN_LOCAL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@ndisc_hh_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ndisc_generic_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neighbour*)* @ndisc_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisc_constructor(%struct.neighbour* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca %struct.neigh_parms*, align 8
  %8 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 7
  %11 = bitcast i32* %10 to %struct.in6_addr*
  store %struct.in6_addr* %11, %struct.in6_addr** %4, align 8
  %12 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %13 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %12, i32 0, i32 6
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %16 = call i32 @ipv6_addr_is_multicast(%struct.in6_addr* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.inet6_dev* @in6_dev_get(%struct.net_device* %17)
  store %struct.inet6_dev* %18, %struct.inet6_dev** %6, align 8
  %19 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %20 = icmp ne %struct.inet6_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %1
  %25 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %26 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %25, i32 0, i32 0
  %27 = load %struct.neigh_parms*, %struct.neigh_parms** %26, align 8
  store %struct.neigh_parms* %27, %struct.neigh_parms** %7, align 8
  %28 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__neigh_parms_put(i32 %30)
  %32 = load %struct.neigh_parms*, %struct.neigh_parms** %7, align 8
  %33 = call i32 @neigh_parms_clone(%struct.neigh_parms* %32)
  %34 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %35 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* @RTN_MULTICAST, align 4
  br label %42

40:                                               ; preds = %24
  %41 = load i32, i32* @RTN_UNICAST, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %45 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** @NUD_NOARP, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %54 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_direct_ops, %struct.TYPE_6__** %56, align 8
  %57 = load i32, i32* @neigh_direct_output, align 4
  %58 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %170

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i8*, i8** @NUD_NOARP, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %67 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %69 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %70 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 @ndisc_mc_map(%struct.in6_addr* %68, i32 %71, %struct.net_device* %72, i32 1)
  br label %133

74:                                               ; preds = %60
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IFF_NOARP, align 4
  %79 = load i32, i32* @IFF_LOOPBACK, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %74
  %84 = load i8*, i8** @NUD_NOARP, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %87 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %89 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @memcpy(i32 %90, i32 %93, i32 %96)
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IFF_LOOPBACK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %83
  %105 = load i32, i32* @RTN_LOCAL, align 4
  %106 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %107 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %104, %83
  br label %132

109:                                              ; preds = %74
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IFF_POINTOPOINT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load i8*, i8** @NUD_NOARP, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %120 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %122 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @memcpy(i32 %123, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %116, %109
  br label %132

132:                                              ; preds = %131, %108
  br label %133

133:                                              ; preds = %132, %63
  %134 = load %struct.net_device*, %struct.net_device** %5, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %142 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %141, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_hh_ops, %struct.TYPE_6__** %142, align 8
  br label %146

143:                                              ; preds = %133
  %144 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %145 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %144, i32 0, i32 1
  store %struct.TYPE_6__* @ndisc_generic_ops, %struct.TYPE_6__** %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %148 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @NUD_VALID, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %155 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %160 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %169

161:                                              ; preds = %146
  %162 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %163 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %168 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %161, %153
  br label %170

170:                                              ; preds = %169, %50
  %171 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %172 = call i32 @in6_dev_put(%struct.inet6_dev* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %170, %21
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.inet6_dev* @in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @__neigh_parms_put(i32) #1

declare dso_local i32 @neigh_parms_clone(%struct.neigh_parms*) #1

declare dso_local i32 @ndisc_mc_map(%struct.in6_addr*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @in6_dev_put(%struct.inet6_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
