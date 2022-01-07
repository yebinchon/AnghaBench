; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lecd_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lecd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.atm_vcc = type { i32, %struct.TYPE_7__*, i32* }
%struct.lec_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atm_vcc* }

@MAX_LEC_ITF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dev_lec = common dso_local global %struct.TYPE_7__** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@lec_netdev_ops = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lec%d\00", align 1
@EADDRINUSE = common dso_local global i32 0, align 4
@lecatm_dev = common dso_local global i32 0, align 4
@ATM_VF_META = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, i32)* @lecd_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lecd_attach(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lec_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MAX_LEC_ITF, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %190

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX_LEC_ITF, align 4
  %22 = call i32 @array_index_nospec(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %91, label %29

29:                                               ; preds = %19
  store i32 56, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.TYPE_7__* @alloc_etherdev(i32 %30)
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %36, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %190

45:                                               ; preds = %29
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %46, i64 %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store i32* @lec_netdev_ops, i32** %51, align 8
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 18190, i32* %57, align 8
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %58, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IFNAMSIZ, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @snprintf(i32 %64, i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = call i64 @register_netdev(%struct.TYPE_7__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %45
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %76, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @free_netdev(%struct.TYPE_7__* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %190

84:                                               ; preds = %45
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %85, i64 %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_7__* %89)
  store %struct.lec_priv* %90, %struct.lec_priv** %7, align 8
  br label %106

91:                                               ; preds = %19
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %92, i64 %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = call %struct.lec_priv* @netdev_priv(%struct.TYPE_7__* %96)
  store %struct.lec_priv* %97, %struct.lec_priv** %7, align 8
  %98 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %99 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %98, i32 0, i32 11
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %99, align 8
  %101 = icmp ne %struct.atm_vcc* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load i32, i32* @EADDRINUSE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %190

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %84
  %107 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %108 = call i32 @lec_arp_init(%struct.lec_priv* %107)
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %111 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %113 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %114 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %113, i32 0, i32 11
  store %struct.atm_vcc* %112, %struct.atm_vcc** %114, align 8
  %115 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %116 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %115, i32 0, i32 2
  store i32* @lecatm_dev, i32** %116, align 8
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %118 = call i32 @sk_atm(%struct.atm_vcc* %117)
  %119 = call i32 @vcc_insert_socket(i32 %118)
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 %122
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %126 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %125, i32 0, i32 1
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %126, align 8
  %127 = load i32, i32* @ATM_VF_META, align 4
  %128 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %129 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %128, i32 0, i32 0
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  %131 = load i32, i32* @ATM_VF_READY, align 4
  %132 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %133 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %132, i32 0, i32 0
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  %135 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %136 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* @HZ, align 4
  %138 = mul nsw i32 1, %137
  %139 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %140 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @HZ, align 4
  %142 = mul nsw i32 1200, %141
  %143 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %144 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %146 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %145, i32 0, i32 4
  store i32 1, i32* %146, align 8
  %147 = load i32, i32* @HZ, align 4
  %148 = mul nsw i32 300, %147
  %149 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %150 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @HZ, align 4
  %152 = mul nsw i32 15, %151
  %153 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %154 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  %155 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %156 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %155, i32 0, i32 10
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @HZ, align 4
  %158 = mul nsw i32 1, %157
  %159 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %160 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @HZ, align 4
  %162 = mul nsw i32 4, %161
  %163 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %164 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %163, i32 0, i32 8
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @HZ, align 4
  %166 = mul nsw i32 6, %165
  %167 = load %struct.lec_priv*, %struct.lec_priv** %7, align 8
  %168 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %169, i64 %171
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IFF_UP, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %106
  %180 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @dev_lec, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %180, i64 %182
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = call i32 @netif_start_queue(%struct.TYPE_7__* %184)
  br label %186

186:                                              ; preds = %179, %106
  %187 = load i32, i32* @THIS_MODULE, align 4
  %188 = call i32 @__module_get(i32 %187)
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %186, %102, %75, %42, %16
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local %struct.TYPE_7__* @alloc_etherdev(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @register_netdev(%struct.TYPE_7__*) #1

declare dso_local i32 @free_netdev(%struct.TYPE_7__*) #1

declare dso_local %struct.lec_priv* @netdev_priv(%struct.TYPE_7__*) #1

declare dso_local i32 @lec_arp_init(%struct.lec_priv*) #1

declare dso_local i32 @vcc_insert_socket(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_start_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
