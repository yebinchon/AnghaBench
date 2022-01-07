; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_my_tt_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_my_tt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.batadv_tvlv_tt_data = type { float, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_tvlv_tt_change = type { i32 }
%struct.batadv_orig_node = type { float* }

@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Received TT_REQUEST from %pM for ttvn: %u (me) [%c]\0A\00", align 1
@BATADV_TT_FULL_TABLE = common dso_local global i32 0, align 4
@batadv_tt_local_valid = common dso_local global i32 0, align 4
@BATADV_TT_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Sending TT_RESPONSE to %pM [%c] (ttvn: %u)\0A\00", align 1
@BATADV_CNT_TT_RESPONSE_TX = common dso_local global i32 0, align 4
@BATADV_TVLV_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, float*)* @batadv_send_my_tt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_send_my_tt_response(%struct.batadv_priv* %0, %struct.batadv_tvlv_tt_data* %1, float* %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca %struct.batadv_tvlv_tt_change*, align 8
  %10 = alloca %struct.batadv_orig_node*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_tvlv_tt_data* %1, %struct.batadv_tvlv_tt_data** %5, align 8
  store float* %2, float** %6, align 8
  store %struct.batadv_tvlv_tt_data* null, %struct.batadv_tvlv_tt_data** %7, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %8, align 8
  %16 = load i32, i32* @BATADV_DBG_TT, align 4
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %18 = load float*, float** %6, align 8
  %19 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %5, align 8
  %20 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %5, align 8
  %23 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 70, i32 46
  %30 = sitofp i32 %29 to float
  %31 = call i32 @batadv_dbg(i32 %16, %struct.batadv_priv* %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), float* %18, float %21, float %30)
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %33 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %37 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = call i64 @atomic_read(i32* %38)
  %40 = sitofp i64 %39 to float
  store float %40, float* %11, align 4
  %41 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %5, align 8
  %42 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  store float %43, float* %12, align 4
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %45 = load float*, float** %6, align 8
  %46 = call %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv* %44, float* %45)
  store %struct.batadv_orig_node* %46, %struct.batadv_orig_node** %10, align 8
  %47 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %48 = icmp ne %struct.batadv_orig_node* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %3
  br label %181

50:                                               ; preds = %3
  %51 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %52 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %51)
  store %struct.batadv_hard_iface* %52, %struct.batadv_hard_iface** %8, align 8
  %53 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %54 = icmp ne %struct.batadv_hard_iface* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %181

56:                                               ; preds = %50
  %57 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %5, align 8
  %58 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load float, float* %11, align 4
  %65 = load float, float* %12, align 4
  %66 = fcmp une float %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %69 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67, %63, %56
  store i32 1, i32* %14, align 4
  br label %75

74:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %75
  %79 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %80 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = call i32 @spin_lock_bh(i32* %81)
  %83 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %84 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %15, align 4
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %88 = call i64 @batadv_tt_prepare_tvlv_local_data(%struct.batadv_priv* %87, %struct.batadv_tvlv_tt_data** %7, %struct.batadv_tvlv_tt_change** %9, i32* %15)
  store i64 %88, i64* %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %78
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91, %78
  br label %176

95:                                               ; preds = %91
  %96 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %9, align 8
  %97 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %98 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %102 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(%struct.batadv_tvlv_tt_change* %96, i32 %100, i32 %104)
  %106 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %107 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock_bh(i32* %108)
  br label %134

110:                                              ; preds = %75
  %111 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %112 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = call i64 @atomic_read(i32* %113)
  %115 = sitofp i64 %114 to float
  store float %115, float* %12, align 4
  store i32 -1, i32* %15, align 4
  %116 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %117 = call i64 @batadv_tt_prepare_tvlv_local_data(%struct.batadv_priv* %116, %struct.batadv_tvlv_tt_data** %7, %struct.batadv_tvlv_tt_change** %9, i32* %15)
  store i64 %117, i64* %13, align 8
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120, %110
  br label %181

124:                                              ; preds = %120
  %125 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %126 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %127 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %9, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @batadv_tt_local_valid, align 4
  %133 = call i32 @batadv_tt_tvlv_generate(%struct.batadv_priv* %125, i32 %129, %struct.batadv_tvlv_tt_change* %130, i32 %131, i32 %132, i32* null)
  br label %134

134:                                              ; preds = %124, %95
  %135 = load i32, i32* @BATADV_TT_RESPONSE, align 4
  %136 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %137 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load float, float* %12, align 4
  %139 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %140 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %139, i32 0, i32 0
  store float %138, float* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %134
  %144 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %145 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %146 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %134
  %150 = load i32, i32* @BATADV_DBG_TT, align 4
  %151 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %152 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %153 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %152, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 70, i32 46
  %159 = sitofp i32 %158 to float
  %160 = load float, float* %12, align 4
  %161 = call i32 @batadv_dbg(i32 %150, %struct.batadv_priv* %151, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), float* %154, float %159, float %160)
  %162 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %163 = load i32, i32* @BATADV_CNT_TT_RESPONSE_TX, align 4
  %164 = call i32 @batadv_inc_counter(%struct.batadv_priv* %162, i32 %163)
  %165 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %166 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %167 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %166, i32 0, i32 0
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load float*, float** %6, align 8
  %172 = load i32, i32* @BATADV_TVLV_TT, align 4
  %173 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i32 @batadv_tvlv_unicast_send(%struct.batadv_priv* %165, i32 %170, float* %171, i32 %172, i32 1, %struct.batadv_tvlv_tt_data* %173, i64 %174)
  br label %181

176:                                              ; preds = %94
  %177 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %178 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = call i32 @spin_unlock_bh(i32* %179)
  br label %181

181:                                              ; preds = %176, %149, %123, %55, %49
  %182 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %183 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = call i32 @spin_unlock_bh(i32* %184)
  %186 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %187 = icmp ne %struct.batadv_orig_node* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %10, align 8
  %190 = call i32 @batadv_orig_node_put(%struct.batadv_orig_node* %189)
  br label %191

191:                                              ; preds = %188, %181
  %192 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %193 = icmp ne %struct.batadv_hard_iface* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %196 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %199 = call i32 @kfree(%struct.batadv_tvlv_tt_data* %198)
  ret i32 1
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, float*, float, float) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.batadv_orig_node* @batadv_orig_hash_find(%struct.batadv_priv*, float*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_tt_prepare_tvlv_local_data(%struct.batadv_priv*, %struct.batadv_tvlv_tt_data**, %struct.batadv_tvlv_tt_change**, i32*) #1

declare dso_local i32 @memcpy(%struct.batadv_tvlv_tt_change*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_tt_tvlv_generate(%struct.batadv_priv*, i32, %struct.batadv_tvlv_tt_change*, i32, i32, i32*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_tvlv_unicast_send(%struct.batadv_priv*, i32, float*, i32, i32, %struct.batadv_tvlv_tt_data*, i64) #1

declare dso_local i32 @batadv_orig_node_put(%struct.batadv_orig_node*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @kfree(%struct.batadv_tvlv_tt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
