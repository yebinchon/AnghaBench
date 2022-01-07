; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_can_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_can_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_ogm_packet = type { i32, i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type opaque
%struct.batadv_forw_packet = type { i32, %struct.batadv_hard_iface*, i64, %struct.batadv_hard_iface*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BATADV_MAX_AGGREGATION_MS = common dso_local global i32 0, align 4
@BATADV_MAX_AGGREGATION_BYTES = common dso_local global i32 0, align 4
@BATADV_DIRECTLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_ogm_packet*, %struct.batadv_priv*, i32, i64, i32, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, %struct.batadv_forw_packet*)* @batadv_iv_ogm_can_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_ogm_can_aggregate(%struct.batadv_ogm_packet* %0, %struct.batadv_priv* %1, i32 %2, i64 %3, i32 %4, %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface* %6, %struct.batadv_forw_packet* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_ogm_packet*, align 8
  %11 = alloca %struct.batadv_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.batadv_hard_iface*, align 8
  %16 = alloca %struct.batadv_hard_iface*, align 8
  %17 = alloca %struct.batadv_forw_packet*, align 8
  %18 = alloca %struct.batadv_ogm_packet*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.batadv_hard_iface*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.batadv_ogm_packet* %0, %struct.batadv_ogm_packet** %10, align 8
  store %struct.batadv_priv* %1, %struct.batadv_priv** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface** %15, align 8
  store %struct.batadv_hard_iface* %6, %struct.batadv_hard_iface** %16, align 8
  store %struct.batadv_forw_packet* %7, %struct.batadv_forw_packet** %17, align 8
  %23 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %24 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %19, align 4
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %20, align 8
  store i32 0, i32* %21, align 4
  %28 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %29 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %33, %struct.batadv_ogm_packet** %18, align 8
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %22, align 8
  %35 = load i32, i32* @BATADV_MAX_AGGREGATION_MS, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  %37 = load i64, i64* %22, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %22, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %41 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @time_before(i64 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %8
  %46 = load i64, i64* %22, align 8
  %47 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %48 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @time_after_eq(i64 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45, %8
  store i32 0, i32* %9, align 4
  br label %140

53:                                               ; preds = %45
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @BATADV_MAX_AGGREGATION_BYTES, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %140

58:                                               ; preds = %53
  %59 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %60 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %59, i32 0, i32 3
  %61 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %60, align 8
  %62 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %16, align 8
  %63 = icmp ne %struct.batadv_hard_iface* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %140

65:                                               ; preds = %58
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %67 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %66)
  store %struct.batadv_hard_iface* %67, %struct.batadv_hard_iface** %20, align 8
  %68 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %20, align 8
  %69 = icmp ne %struct.batadv_hard_iface* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %140

71:                                               ; preds = %65
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %18, align 8
  %76 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %74
  %82 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %18, align 8
  %83 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %88 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %93 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %92, i32 0, i32 1
  %94 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %93, align 8
  %95 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %20, align 8
  %96 = icmp eq %struct.batadv_hard_iface* %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91, %86
  store i32 1, i32* %21, align 4
  br label %132

98:                                               ; preds = %91, %81, %74, %71
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %10, align 8
  %103 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %108 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %107, i32 0, i32 1
  %109 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %108, align 8
  %110 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %111 = icmp eq %struct.batadv_hard_iface* %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %18, align 8
  %114 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %112
  %120 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %121 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %17, align 8
  %126 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %125, i32 0, i32 1
  %127 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %126, align 8
  %128 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %20, align 8
  %129 = icmp ne %struct.batadv_hard_iface* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %112
  store i32 1, i32* %21, align 4
  br label %132

131:                                              ; preds = %124, %119, %106, %101, %98
  br label %132

132:                                              ; preds = %131, %130, %97
  %133 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %20, align 8
  %134 = icmp ne %struct.batadv_hard_iface* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %20, align 8
  %137 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %21, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %138, %70, %64, %57, %52
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_before(i64, i32) #1

declare dso_local i32 @time_after_eq(i64, i32) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
