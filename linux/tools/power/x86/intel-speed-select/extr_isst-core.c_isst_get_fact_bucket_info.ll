; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_fact_bucket_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_get_fact_bucket_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_fact_bucket_info = type { i32, i32, i32, i32 }

@CONFIG_TDP = common dso_local global i32 0, align 4
@CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_NUMCORES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"cpu:%d CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_NUMCORES index:%d level:%d resp:%x\0A\00", align 1
@CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_RATIOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"cpu:%d CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_RATIOS index:%d level:%d avx:%d resp:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_get_fact_bucket_info(i32 %0, i32 %1, %struct.isst_fact_bucket_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isst_fact_bucket_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.isst_fact_bucket_info* %2, %struct.isst_fact_bucket_info** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %57, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CONFIG_TDP, align 4
  %20 = load i32, i32* @CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_NUMCORES, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @isst_send_mbox_command(i32 %18, i32 %19, i32 %20, i32 0, i32 %24, i32* %8)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %152

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i8*, i32, i32, i32, i32, ...) @debug_printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %53, %30
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 8
  %43 = lshr i32 %40, %42
  %44 = and i32 %43, 255
  %45 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 4
  %49 = add nsw i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %45, i64 %50
  %52 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %51, i32 0, i32 0
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %14

60:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %148, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %151

64:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %144, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %147

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @CONFIG_TDP, align 4
  %71 = load i32, i32* @CONFIG_TDP_GET_FACT_HP_TURBO_LIMIT_RATIOS, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %73, %75
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @isst_send_mbox_command(i32 %69, i32 %70, i32 %71, i32 0, i32 %78, i32* %8)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %152

84:                                               ; preds = %68
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, i32, i32, i32, i32, ...) @debug_printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %140, %84
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %143

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  switch i32 %95, label %138 [
    i32 0, label %96
    i32 1, label %110
    i32 2, label %124
  ]

96:                                               ; preds = %94
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %98, 8
  %100 = lshr i32 %97, %99
  %101 = and i32 %100, 255
  %102 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 %104, 4
  %106 = add nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %102, i64 %107
  %109 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %108, i32 0, i32 1
  store i32 %101, i32* %109, align 4
  br label %139

110:                                              ; preds = %94
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %112, 8
  %114 = lshr i32 %111, %113
  %115 = and i32 %114, 255
  %116 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %116, i64 %121
  %123 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %122, i32 0, i32 2
  store i32 %115, i32* %123, align 4
  br label %139

124:                                              ; preds = %94
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %13, align 4
  %127 = mul nsw i32 %126, 8
  %128 = lshr i32 %125, %127
  %129 = and i32 %128, 255
  %130 = load %struct.isst_fact_bucket_info*, %struct.isst_fact_bucket_info** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 4
  %134 = add nsw i32 %131, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %130, i64 %135
  %137 = getelementptr inbounds %struct.isst_fact_bucket_info, %struct.isst_fact_bucket_info* %136, i32 0, i32 3
  store i32 %129, i32* %137, align 4
  br label %139

138:                                              ; preds = %94
  br label %139

139:                                              ; preds = %138, %124, %110, %96
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %91

143:                                              ; preds = %91
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %65

147:                                              ; preds = %65
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %61

151:                                              ; preds = %61
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %82, %28
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @isst_send_mbox_command(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @debug_printf(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
