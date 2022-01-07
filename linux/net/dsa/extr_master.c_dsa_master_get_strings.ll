; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_master.c_dsa_master_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.dsa_port* }
%struct.dsa_port = type { i32, %struct.dsa_switch*, %struct.ethtool_ops* }
%struct.dsa_switch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32, i8*)* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32, i8*)*, i32 }

@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"p%.2d\00", align 1
@ETH_SS_PHY_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*)* @dsa_master_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsa_master_get_strings(%struct.net_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsa_port*, align 8
  %8 = alloca %struct.ethtool_ops*, align 8
  %9 = alloca %struct.dsa_switch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load %struct.dsa_port*, %struct.dsa_port** %18, align 8
  store %struct.dsa_port* %19, %struct.dsa_port** %7, align 8
  %20 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %21 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %20, i32 0, i32 2
  %22 = load %struct.ethtool_ops*, %struct.ethtool_ops** %21, align 8
  store %struct.ethtool_ops* %22, %struct.ethtool_ops** %8, align 8
  %23 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %24 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %23, i32 0, i32 1
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %24, align 8
  store %struct.dsa_switch* %25, %struct.dsa_switch** %9, align 8
  %26 = load %struct.dsa_port*, %struct.dsa_port** %7, align 8
  %27 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @ETH_GSTRING_LEN, align 4
  store i32 %29, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @snprintf(i8* %30, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  store i8 95, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ETH_SS_PHY_STATS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %3
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %44 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @phy_ethtool_get_sset_count(i64 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %61

55:                                               ; preds = %47
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @phy_ethtool_get_strings(i64 %58, i8* %59)
  br label %61

61:                                               ; preds = %55, %54
  br label %91

62:                                               ; preds = %42, %37, %3
  %63 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %64 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %63, i32 0, i32 0
  %65 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %64, align 8
  %66 = icmp ne i32 (%struct.net_device*, i32)* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %69 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %68, i32 0, i32 1
  %70 = load i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8*)** %69, align 8
  %71 = icmp ne i32 (%struct.net_device*, i32, i8*)* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %74 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %73, i32 0, i32 0
  %75 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %75(%struct.net_device* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %72
  %83 = load %struct.ethtool_ops*, %struct.ethtool_ops** %8, align 8
  %84 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %83, i32 0, i32 1
  %85 = load i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8*)** %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 %85(%struct.net_device* %86, i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %82, %67, %62
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %93 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32 (%struct.dsa_switch*, i32, i32, i8*)*, i32 (%struct.dsa_switch*, i32, i32, i8*)** %95, align 8
  %97 = icmp ne i32 (%struct.dsa_switch*, i32, i32, i8*)* %96, null
  br i1 %97, label %98, label %159

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8* %104, i8** %16, align 8
  %105 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %106 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32 (%struct.dsa_switch*, i32, i32, i8*)*, i32 (%struct.dsa_switch*, i32, i32, i8*)** %108, align 8
  %110 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 %109(%struct.dsa_switch* %110, i32 %111, i32 %112, i8* %113)
  %115 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %116 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32 (%struct.dsa_switch*, i32, i32)*, i32 (%struct.dsa_switch*, i32, i32)** %118, align 8
  %120 = load %struct.dsa_switch*, %struct.dsa_switch** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 %119(%struct.dsa_switch* %120, i32 %121, i32 %122)
  store i32 %123, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %155, %98
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  %129 = load i8*, i8** %16, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul i32 %130, %131
  %133 = zext i32 %132 to i64
  %134 = add i64 %133, 4
  %135 = getelementptr inbounds i8, i8* %129, i64 %134
  %136 = load i8*, i8** %16, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %11, align 4
  %139 = mul i32 %137, %138
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memmove(i8* %135, i8* %141, i32 %145)
  %147 = load i8*, i8** %16, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %11, align 4
  %150 = mul i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %154 = call i32 @memcpy(i8* %152, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %128
  %156 = load i32, i32* %14, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %124

158:                                              ; preds = %124
  br label %159

159:                                              ; preds = %158, %91
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @phy_ethtool_get_sset_count(i64) #1

declare dso_local i32 @phy_ethtool_get_strings(i64, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
