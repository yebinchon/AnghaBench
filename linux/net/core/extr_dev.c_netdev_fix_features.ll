; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mixed HW and IP checksum settings.\0A\00", align 1
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Dropping TSO features since no SG feature.\0A\00", align 1
@NETIF_F_TSO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Dropping TSO features since no CSUM feature.\0A\00", align 1
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Dropping TSO6 features since no CSUM feature.\0A\00", align 1
@NETIF_F_TSO_MANGLEID = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Dropping NETIF_F_GSO since no SG feature.\0A\00", align 1
@NETIF_F_GSO_PARTIAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"Dropping partially supported GSO features since no GSO partial.\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Dropping NETIF_F_GRO_HW since no RXCSUM feature.\0A\00", align 1
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Dropping LRO feature since RX-FCS is requested.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Dropping HW-GRO feature since RX-FCS is requested.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netdev_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %12 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_warn(%struct.net_device* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %20 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %9, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @NETIF_F_SG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netdev_dbg(%struct.net_device* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %30, %25
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NETIF_F_TSO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netdev_dbg(%struct.net_device* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @NETIF_F_TSO, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %57, %52, %47, %42
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @NETIF_F_TSO6, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @netdev_dbg(%struct.net_device* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* @NETIF_F_TSO6, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %83, %78, %73, %68
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @NETIF_F_TSO, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %95, %90
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %105
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @NETIF_F_GSO, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @NETIF_F_SG, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %121
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @netdev_dbg(%struct.net_device* %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @NETIF_F_GSO, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %4, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %126, %121, %116
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %133
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @NETIF_F_GSO_PARTIAL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %140
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = call i32 @netdev_dbg(%struct.net_device* %146, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %145, %140, %133
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %172, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.net_device*, %struct.net_device** %3, align 8
  %166 = call i32 @netdev_dbg(%struct.net_device* %165, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %164, %159
  br label %172

172:                                              ; preds = %171, %154
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @NETIF_F_RXFCS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %202

177:                                              ; preds = %172
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @NETIF_F_LRO, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.net_device*, %struct.net_device** %3, align 8
  %184 = call i32 @netdev_dbg(%struct.net_device* %183, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %185 = load i32, i32* @NETIF_F_LRO, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %4, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %182, %177
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = call i32 @netdev_dbg(%struct.net_device* %195, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %197 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %4, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %194, %189
  br label %202

202:                                              ; preds = %201, %172
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
