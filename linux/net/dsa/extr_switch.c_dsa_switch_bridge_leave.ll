; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_bridge_leave.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_switch.c_dsa_switch_bridge_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64, i32, i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dsa_switch*, i64, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)* }
%struct.dsa_notifier_bridge_info = type { i64, i64, i32 }
%struct.switchdev_trans = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, %struct.dsa_notifier_bridge_info*)* @dsa_switch_bridge_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_switch_bridge_leave(%struct.dsa_switch* %0, %struct.dsa_notifier_bridge_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca %struct.dsa_notifier_bridge_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.switchdev_trans, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store %struct.dsa_notifier_bridge_info* %1, %struct.dsa_notifier_bridge_info** %5, align 8
  %10 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @br_vlan_enabled(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %18 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %23 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %22, i32 0, i32 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (%struct.dsa_switch*, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)** %25, align 8
  %27 = icmp ne i32 (%struct.dsa_switch*, i32, i64)* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %30 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.dsa_switch*, i32, i64)*, i32 (%struct.dsa_switch*, i32, i64)** %32, align 8
  %34 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %35 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %36 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %39 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 %33(%struct.dsa_switch* %34, i32 %37, i64 %40)
  br label %42

42:                                               ; preds = %28, %21, %2
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %44 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %47 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %52 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dsa_switch*, i64, i32, i64)*, i32 (%struct.dsa_switch*, i64, i32, i64)** %54, align 8
  %56 = icmp ne i32 (%struct.dsa_switch*, i64, i32, i64)* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %59 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dsa_switch*, i64, i32, i64)*, i32 (%struct.dsa_switch*, i64, i32, i64)** %61, align 8
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %64 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %65 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %68 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %71 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 %62(%struct.dsa_switch* %63, i64 %66, i32 %69, i64 %72)
  br label %74

74:                                               ; preds = %57, %50, %42
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %79 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %86 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %92 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %108

96:                                               ; preds = %89
  %97 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch* %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %103 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %111

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %95
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %83

111:                                              ; preds = %106, %83
  br label %112

112:                                              ; preds = %111, %77, %74
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = bitcast %struct.switchdev_trans* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 4, i1 false)
  %117 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %118 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.dsa_notifier_bridge_info*, %struct.dsa_notifier_bridge_info** %5, align 8
  %121 = getelementptr inbounds %struct.dsa_notifier_bridge_info, %struct.dsa_notifier_bridge_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = call i32 @dsa_port_vlan_filtering(i32* %124, i32 0, %struct.switchdev_trans* %9)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %136

134:                                              ; preds = %128, %115
  br label %135

135:                                              ; preds = %134, %112
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @br_vlan_enabled(i64) #1

declare dso_local %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dsa_port_vlan_filtering(i32*, i32, %struct.switchdev_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
