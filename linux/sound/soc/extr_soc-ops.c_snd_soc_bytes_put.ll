; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32, i32 }
%struct.soc_bytes = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_bytes_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_bytes*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.soc_bytes*
  store %struct.soc_bytes* %19, %struct.soc_bytes** %7, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %26 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %180

32:                                               ; preds = %24
  %33 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %34 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %41 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* @GFP_DMA, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @kmemdup(i32 %44, i32 %45, i32 %48)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %180

55:                                               ; preds = %32
  %56 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %57 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %166

60:                                               ; preds = %55
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %62 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %65 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @regmap_read(i32 %63, i32 %66, i32* %10)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %176

71:                                               ; preds = %60
  %72 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %73 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %78 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %162 [
    i32 1, label %80
    i32 2, label %96
    i32 4, label %129
  ]

80:                                               ; preds = %71
  %81 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %82 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, -1
  %85 = load i8*, i8** %12, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = bitcast i8* %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  br label %165

96:                                               ; preds = %71
  %97 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %98 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, -1
  store i32 %100, i32* %11, align 4
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regmap_parse_val(i32 %103, i32* %11, i32* %11)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %176

108:                                              ; preds = %96
  %109 = load i32, i32* %11, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %109
  store i32 %114, i32* %112, align 4
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %116 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regmap_parse_val(i32 %117, i32* %10, i32* %10)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %176

122:                                              ; preds = %108
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %165

129:                                              ; preds = %71
  %130 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %131 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, -1
  store i32 %133, i32* %11, align 4
  %134 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %135 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @regmap_parse_val(i32 %136, i32* %11, i32* %11)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %176

141:                                              ; preds = %129
  %142 = load i32, i32* %11, align 4
  %143 = load i8*, i8** %12, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %142
  store i32 %147, i32* %145, align 4
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %149 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @regmap_parse_val(i32 %150, i32* %10, i32* %10)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  br label %176

155:                                              ; preds = %141
  %156 = load i32, i32* %10, align 4
  %157 = load i8*, i8** %12, align 8
  %158 = bitcast i8* %157 to i32*
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %156
  store i32 %161, i32* %159, align 4
  br label %165

162:                                              ; preds = %71
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %8, align 4
  br label %176

165:                                              ; preds = %155, %122, %80
  br label %166

166:                                              ; preds = %165, %55
  %167 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %168 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.soc_bytes*, %struct.soc_bytes** %7, align 8
  %171 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @regmap_raw_write(i32 %169, i32 %172, i8* %173, i32 %174)
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %166, %162, %154, %140, %121, %107, %70
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 @kfree(i8* %177)
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %176, %52, %29
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_parse_val(i32, i32*, i32*) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
