; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_setup_cpr_gateway_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_setup_cpr_gateway_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32, i64 }
%struct.skl_module_cfg = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.skl_module_res* }
%struct.skl_module_res = type { i32, i32, i32 }
%struct.skl_cpr_cfg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@SKL_NON_GATEWAY_CPR_NODE_ID = common dso_local global i64 0, align 8
@SKL_DEVICE_HDAHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wrong connection type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_cpr_cfg*)* @skl_setup_cpr_gateway_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_setup_cpr_gateway_cfg(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_cpr_cfg* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_cpr_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.skl_module_res*, align 8
  %9 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_cpr_cfg* %2, %struct.skl_cpr_cfg** %6, align 8
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %14 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %15 = call i64 @skl_get_node_id(%struct.skl_dev* %13, %struct.skl_module_cfg* %14)
  %16 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %17 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %20 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SKL_NON_GATEWAY_CPR_NODE_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %147

28:                                               ; preds = %3
  %29 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %30 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %34, i32 0, i32 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.skl_module_res*, %struct.skl_module_res** %37, align 8
  %39 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %38, i64 %42
  store %struct.skl_module_res* %43, %struct.skl_module_res** %8, align 8
  %44 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %45 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %48 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  br label %138

50:                                               ; preds = %28
  %51 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %51, i32 0, i32 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.skl_module_res*, %struct.skl_module_res** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %55, i64 %57
  store %struct.skl_module_res* %58, %struct.skl_module_res** %8, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %93 [
    i32 128, label %63
    i32 129, label %78
  ]

63:                                               ; preds = %59
  %64 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %65 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SKL_DEVICE_HDAHOST, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %71 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %75 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %101

78:                                               ; preds = %59
  %79 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %80 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SKL_DEVICE_HDAHOST, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %86 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  br label %92

88:                                               ; preds = %78
  %89 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %90 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %101

93:                                               ; preds = %59
  %94 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %95 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %98 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_warn(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %147

101:                                              ; preds = %92, %77
  %102 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %103 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %108 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %111 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %101
  %116 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %117 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %122 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 2, %123
  %125 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %126 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  br label %136

128:                                              ; preds = %115
  %129 = load %struct.skl_module_res*, %struct.skl_module_res** %8, align 8
  %130 = getelementptr inbounds %struct.skl_module_res, %struct.skl_module_res* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 2, %131
  %133 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %134 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 8
  br label %136

136:                                              ; preds = %128, %120
  br label %137

137:                                              ; preds = %136, %101
  br label %138

138:                                              ; preds = %137, %33
  %139 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %140 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %142 = getelementptr inbounds %struct.skl_cpr_cfg, %struct.skl_cpr_cfg* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %145 = load %struct.skl_cpr_cfg*, %struct.skl_cpr_cfg** %6, align 8
  %146 = call i32 @skl_copy_copier_caps(%struct.skl_module_cfg* %144, %struct.skl_cpr_cfg* %145)
  br label %147

147:                                              ; preds = %138, %93, %25
  ret void
}

declare dso_local i64 @skl_get_node_id(%struct.skl_dev*, %struct.skl_module_cfg*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @skl_copy_copier_caps(%struct.skl_module_cfg*, %struct.skl_cpr_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
