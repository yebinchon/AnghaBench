; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_word_tokens.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_word_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sof_topology_token = type { i64, i32, i64, i32, i32 (%struct.snd_soc_tplg_vendor_value_elem*, i8*, i64, i32)* }
%struct.snd_soc_tplg_vendor_value_elem = type opaque
%struct.snd_soc_tplg_vendor_array = type { %struct.snd_soc_tplg_vendor_value_elem.0*, i32 }
%struct.snd_soc_tplg_vendor_value_elem.0 = type { i32 }
%struct.snd_sof_dev = type { i64*, i32 }

@SND_SOC_TPLG_TUPLE_TYPE_WORD = common dso_local global i64 0, align 8
@SND_SOC_TPLG_TUPLE_TYPE_SHORT = common dso_local global i64 0, align 8
@SND_SOC_TPLG_TUPLE_TYPE_BYTE = common dso_local global i64 0, align 8
@SND_SOC_TPLG_TUPLE_TYPE_BOOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"error: invalid array offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*)* @sof_parse_word_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_parse_word_tokens(%struct.snd_soc_component* %0, i8* %1, %struct.sof_topology_token* %2, i32 %3, %struct.snd_soc_tplg_vendor_array* %4) #0 {
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sof_topology_token*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %11 = alloca %struct.snd_sof_dev*, align 8
  %12 = alloca %struct.snd_soc_tplg_vendor_value_elem.0*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sof_topology_token* %2, %struct.sof_topology_token** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.snd_soc_tplg_vendor_array* %4, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %19 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.snd_sof_dev* %19, %struct.snd_sof_dev** %11, align 8
  store i64 4, i64* %13, align 8
  store i64* null, i64** %17, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %161, %5
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %23 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %164

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %28, i32 0, i32 0
  %30 = load %struct.snd_soc_tplg_vendor_value_elem.0*, %struct.snd_soc_tplg_vendor_value_elem.0** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem.0, %struct.snd_soc_tplg_vendor_value_elem.0* %30, i64 %32
  store %struct.snd_soc_tplg_vendor_value_elem.0* %33, %struct.snd_soc_tplg_vendor_value_elem.0** %12, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %157, %27
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %160

38:                                               ; preds = %34
  %39 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %39, i64 %41
  %43 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SND_SOC_TPLG_TUPLE_TYPE_WORD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %75, label %47

47:                                               ; preds = %38
  %48 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %48, i64 %50
  %52 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SND_SOC_TPLG_TUPLE_TYPE_SHORT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %75, label %56

56:                                               ; preds = %47
  %57 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %57, i64 %59
  %61 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SND_SOC_TPLG_TUPLE_TYPE_BYTE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %56
  %66 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %66, i64 %68
  %70 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SND_SOC_TPLG_TUPLE_TYPE_BOOL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %65
  br label %157

75:                                               ; preds = %65, %56, %47, %38
  %76 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %76, i64 %78
  %80 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_soc_tplg_vendor_value_elem.0*, %struct.snd_soc_tplg_vendor_value_elem.0** %12, align 8
  %83 = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem.0, %struct.snd_soc_tplg_vendor_value_elem.0* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le32_to_cpu(i32 %84)
  %86 = icmp ne i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %157

88:                                               ; preds = %75
  %89 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %11, align 8
  %90 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %11, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  store i64* %96, i64** %17, align 8
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %98, i64 %100
  %102 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %131 [
    i32 133, label %104
    i32 132, label %112
    i32 131, label %112
    i32 130, label %112
    i32 129, label %112
    i32 134, label %112
    i32 128, label %112
  ]

104:                                              ; preds = %97
  %105 = load i64*, i64** %17, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i64*, i64** %17, align 8
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %97, %97, %97, %97, %97, %97, %111
  %113 = load i64*, i64** %17, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i64*, i64** %17, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %112
  %120 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %11, align 8
  %121 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %157

124:                                              ; preds = %115
  %125 = load i64, i64* %13, align 8
  %126 = load i64*, i64** %17, align 8
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, 1
  %129 = mul i64 %125, %128
  store i64 %129, i64* %16, align 8
  br label %130

130:                                              ; preds = %124
  br label %132

131:                                              ; preds = %97
  store i64 0, i64* %16, align 8
  br label %132

132:                                              ; preds = %131, %130
  %133 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %133, i64 %135
  %137 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %136, i32 0, i32 4
  %138 = load i32 (%struct.snd_soc_tplg_vendor_value_elem*, i8*, i64, i32)*, i32 (%struct.snd_soc_tplg_vendor_value_elem*, i8*, i64, i32)** %137, align 8
  %139 = load %struct.snd_soc_tplg_vendor_value_elem.0*, %struct.snd_soc_tplg_vendor_value_elem.0** %12, align 8
  %140 = bitcast %struct.snd_soc_tplg_vendor_value_elem.0* %139 to %struct.snd_soc_tplg_vendor_value_elem*
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %143, i64 %145
  %147 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %142, %148
  %150 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %150, i64 %152
  %154 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 %138(%struct.snd_soc_tplg_vendor_value_elem* %140, i8* %141, i64 %149, i32 %155)
  br label %157

157:                                              ; preds = %132, %119, %87, %74
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  br label %34

160:                                              ; preds = %34
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %20

164:                                              ; preds = %20
  ret void
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
