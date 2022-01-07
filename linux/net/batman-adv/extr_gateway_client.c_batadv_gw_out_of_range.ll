; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_out_of_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_out_of_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_neigh_node = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_gw_node = type { %struct.batadv_orig_node* }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ethhdr = type { i32, i32 }

@BATADV_TQ_MAX_VALUE = common dso_local global i64 0, align 8
@BATADV_IF_DEFAULT = common dso_local global i32 0, align 4
@BATADV_GW_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_gw_out_of_range(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_neigh_node*, align 8
  %6 = alloca %struct.batadv_neigh_node*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_gw_node*, align 8
  %9 = alloca %struct.batadv_gw_node*, align 8
  %10 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %11 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %5, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %6, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %7, align 8
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %8, align 8
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ethhdr*
  store %struct.ethhdr* %19, %struct.ethhdr** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call zeroext i16 @batadv_get_vid(%struct.sk_buff* %20, i32 0)
  store i16 %21, i16* %15, align 2
  %22 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_multicast_ether_addr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %120

28:                                               ; preds = %2
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %34 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i16, i16* %15, align 2
  %37 = call %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv* %29, i32 %32, i32 %35, i16 zeroext %36)
  store %struct.batadv_orig_node* %37, %struct.batadv_orig_node** %7, align 8
  %38 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %39 = icmp ne %struct.batadv_orig_node* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %120

41:                                               ; preds = %28
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %43 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %44 = call %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv* %42, %struct.batadv_orig_node* %43)
  store %struct.batadv_gw_node* %44, %struct.batadv_gw_node** %8, align 8
  %45 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %46 = icmp ne %struct.batadv_gw_node* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %120

48:                                               ; preds = %41
  %49 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %50 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @atomic_read(i32* %51)
  switch i32 %52, label %92 [
    i32 128, label %53
    i32 130, label %55
    i32 129, label %91
  ]

53:                                               ; preds = %48
  %54 = load i64, i64* @BATADV_TQ_MAX_VALUE, align 8
  store i64 %54, i64* %14, align 8
  br label %93

55:                                               ; preds = %48
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %57 = call %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %56)
  store %struct.batadv_gw_node* %57, %struct.batadv_gw_node** %9, align 8
  %58 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %9, align 8
  %59 = icmp ne %struct.batadv_gw_node* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %120

61:                                               ; preds = %55
  %62 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %9, align 8
  %63 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %62, i32 0, i32 0
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %63, align 8
  %65 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %66 = icmp eq %struct.batadv_orig_node* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %120

68:                                               ; preds = %61
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %70 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %9, align 8
  %71 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %70, i32 0, i32 0
  %72 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %71, align 8
  %73 = call %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv* %69, %struct.batadv_orig_node* %72, i32* null)
  store %struct.batadv_neigh_node* %73, %struct.batadv_neigh_node** %5, align 8
  %74 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %75 = icmp ne %struct.batadv_neigh_node* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  br label %120

77:                                               ; preds = %68
  %78 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %79 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %80 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %78, i32 %79)
  store %struct.batadv_neigh_ifinfo* %80, %struct.batadv_neigh_ifinfo** %10, align 8
  %81 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %82 = icmp ne %struct.batadv_neigh_ifinfo* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %120

84:                                               ; preds = %77
  %85 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %86 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %10, align 8
  %90 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %89)
  br label %93

91:                                               ; preds = %48
  br label %92

92:                                               ; preds = %48, %91
  br label %120

93:                                               ; preds = %84, %53
  %94 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %95 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %96 = call %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv* %94, %struct.batadv_orig_node* %95, i32* null)
  store %struct.batadv_neigh_node* %96, %struct.batadv_neigh_node** %6, align 8
  %97 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %98 = icmp ne %struct.batadv_neigh_node* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %120

100:                                              ; preds = %93
  %101 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %102 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %103 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %101, i32 %102)
  store %struct.batadv_neigh_ifinfo* %103, %struct.batadv_neigh_ifinfo** %11, align 8
  %104 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %105 = icmp ne %struct.batadv_neigh_ifinfo* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %120

107:                                              ; preds = %100
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %110 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %108, %112
  %114 = load i64, i64* @BATADV_GW_THRESHOLD, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %107
  %118 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %11, align 8
  %119 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %118)
  br label %120

120:                                              ; preds = %117, %106, %99, %92, %83, %76, %67, %60, %47, %40, %27
  %121 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %122 = icmp ne %struct.batadv_orig_node* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %125 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %9, align 8
  %128 = icmp ne %struct.batadv_gw_node* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %9, align 8
  %131 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %134 = icmp ne %struct.batadv_gw_node* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %137 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %140 = icmp ne %struct.batadv_neigh_node* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %6, align 8
  %143 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %146 = icmp ne %struct.batadv_neigh_node* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %5, align 8
  %149 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %13, align 4
  ret i32 %151
}

declare dso_local zeroext i16 @batadv_get_vid(%struct.sk_buff*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_transtable_search(%struct.batadv_priv*, i32, i32, i16 zeroext) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv*, %struct.batadv_orig_node*, i32*) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, i32) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
