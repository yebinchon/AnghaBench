; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_select_out_quirk_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_select_out_quirk_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32 }

@R3DI_LINE_OUT = common dso_local global i32 0, align 4
@FLOAT_ZERO = common dso_local global i32 0, align 4
@R3DI_HEADPHONE_OUT = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_alt_select_out_quirk_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_select_out_quirk_handler(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %9 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %173 [
    i32 129, label %11
    i32 135, label %63
    i32 128, label %121
  ]

11:                                               ; preds = %1
  %12 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %13 = call i32 @ca0132_quirk(%struct.ca0132_spec* %12)
  switch i32 %13, label %61 [
    i32 131, label %14
    i32 130, label %23
    i32 132, label %34
    i32 133, label %40
    i32 134, label %45
  ]

14:                                               ; preds = %11
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %15, i32 7, i32 0)
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %17, i32 4, i32 1)
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %19, i32 1, i32 1)
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @chipio_set_control_param(%struct.hda_codec* %21, i32 13, i32 24)
  br label %62

23:                                               ; preds = %11
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %24, i32 2, i32 1)
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %26, i32 3, i32 1)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %28, i32 5, i32 0)
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @zxr_headphone_gain_set(%struct.hda_codec* %30, i32 0)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @chipio_set_control_param(%struct.hda_codec* %32, i32 13, i32 36)
  br label %62

34:                                               ; preds = %11
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @chipio_set_control_param(%struct.hda_codec* %35, i32 13, i32 36)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load i32, i32* @R3DI_LINE_OUT, align 4
  %39 = call i32 @r3di_gpio_out_set(%struct.hda_codec* %37, i32 %38)
  br label %62

40:                                               ; preds = %11
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = call i32 @chipio_set_control_param(%struct.hda_codec* %41, i32 13, i32 36)
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %43, i32 1, i32 1)
  br label %62

45:                                               ; preds = %11
  %46 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %47 = call i32 @ae5_mmio_select_out(%struct.hda_codec* %46)
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = call i32 @ae5_headphone_gain_set(%struct.hda_codec* %48, i32 2)
  %50 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dspio_set_uint_param(%struct.hda_codec* %51, i32 150, i32 41, i32 %52)
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dspio_set_uint_param(%struct.hda_codec* %54, i32 150, i32 42, i32 %55)
  %57 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %58 = call i32 @chipio_set_control_param(%struct.hda_codec* %57, i32 13, i32 164)
  %59 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %60 = call i32 @chipio_write(%struct.hda_codec* %59, i32 1617980, i32 18)
  br label %62

61:                                               ; preds = %11
  br label %62

62:                                               ; preds = %61, %45, %40, %34, %23, %14
  br label %173

63:                                               ; preds = %1
  %64 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %65 = call i32 @ca0132_quirk(%struct.ca0132_spec* %64)
  switch i32 %65, label %119 [
    i32 131, label %66
    i32 130, label %75
    i32 132, label %89
    i32 133, label %95
    i32 134, label %100
  ]

66:                                               ; preds = %63
  %67 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %68 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %67, i32 7, i32 1)
  %69 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %70 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %69, i32 4, i32 1)
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %71, i32 1, i32 0)
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = call i32 @chipio_set_control_param(%struct.hda_codec* %73, i32 13, i32 18)
  br label %120

75:                                               ; preds = %63
  %76 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %77 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %76, i32 2, i32 0)
  %78 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %79 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %78, i32 3, i32 0)
  %80 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %81 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %80, i32 5, i32 1)
  %82 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %83 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %84 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @zxr_headphone_gain_set(%struct.hda_codec* %82, i32 %85)
  %87 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %88 = call i32 @chipio_set_control_param(%struct.hda_codec* %87, i32 13, i32 33)
  br label %120

89:                                               ; preds = %63
  %90 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %91 = call i32 @chipio_set_control_param(%struct.hda_codec* %90, i32 13, i32 33)
  %92 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %93 = load i32, i32* @R3DI_HEADPHONE_OUT, align 4
  %94 = call i32 @r3di_gpio_out_set(%struct.hda_codec* %92, i32 %93)
  br label %120

95:                                               ; preds = %63
  %96 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %97 = call i32 @chipio_set_control_param(%struct.hda_codec* %96, i32 13, i32 33)
  %98 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %99 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %98, i32 1, i32 0)
  br label %120

100:                                              ; preds = %63
  %101 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %102 = call i32 @ae5_mmio_select_out(%struct.hda_codec* %101)
  %103 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %104 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %105 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ae5_headphone_gain_set(%struct.hda_codec* %103, i32 %106)
  %108 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %108, i32* %4, align 4
  %109 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @dspio_set_uint_param(%struct.hda_codec* %109, i32 150, i32 41, i32 %110)
  %112 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @dspio_set_uint_param(%struct.hda_codec* %112, i32 150, i32 42, i32 %113)
  %115 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %116 = call i32 @chipio_set_control_param(%struct.hda_codec* %115, i32 13, i32 161)
  %117 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %118 = call i32 @chipio_write(%struct.hda_codec* %117, i32 1617980, i32 18)
  br label %120

119:                                              ; preds = %63
  br label %120

120:                                              ; preds = %119, %100, %95, %89, %75, %66
  br label %173

121:                                              ; preds = %1
  %122 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %123 = call i32 @ca0132_quirk(%struct.ca0132_spec* %122)
  switch i32 %123, label %171 [
    i32 131, label %124
    i32 130, label %133
    i32 132, label %144
    i32 133, label %150
    i32 134, label %155
  ]

124:                                              ; preds = %121
  %125 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %126 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %125, i32 7, i32 0)
  %127 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %128 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %127, i32 4, i32 1)
  %129 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %130 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %129, i32 1, i32 1)
  %131 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %132 = call i32 @chipio_set_control_param(%struct.hda_codec* %131, i32 13, i32 24)
  br label %172

133:                                              ; preds = %121
  %134 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %135 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %134, i32 2, i32 1)
  %136 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %137 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %136, i32 3, i32 1)
  %138 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %139 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %138, i32 5, i32 0)
  %140 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %141 = call i32 @zxr_headphone_gain_set(%struct.hda_codec* %140, i32 0)
  %142 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %143 = call i32 @chipio_set_control_param(%struct.hda_codec* %142, i32 13, i32 36)
  br label %172

144:                                              ; preds = %121
  %145 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %146 = call i32 @chipio_set_control_param(%struct.hda_codec* %145, i32 13, i32 36)
  %147 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %148 = load i32, i32* @R3DI_LINE_OUT, align 4
  %149 = call i32 @r3di_gpio_out_set(%struct.hda_codec* %147, i32 %148)
  br label %172

150:                                              ; preds = %121
  %151 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %152 = call i32 @ca0113_mmio_gpio_set(%struct.hda_codec* %151, i32 1, i32 1)
  %153 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %154 = call i32 @chipio_set_control_param(%struct.hda_codec* %153, i32 13, i32 36)
  br label %172

155:                                              ; preds = %121
  %156 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %157 = call i32 @ae5_mmio_select_out(%struct.hda_codec* %156)
  %158 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %159 = call i32 @ae5_headphone_gain_set(%struct.hda_codec* %158, i32 2)
  %160 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %160, i32* %4, align 4
  %161 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @dspio_set_uint_param(%struct.hda_codec* %161, i32 150, i32 41, i32 %162)
  %164 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @dspio_set_uint_param(%struct.hda_codec* %164, i32 150, i32 42, i32 %165)
  %167 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %168 = call i32 @chipio_set_control_param(%struct.hda_codec* %167, i32 13, i32 164)
  %169 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %170 = call i32 @chipio_write(%struct.hda_codec* %169, i32 1617980, i32 18)
  br label %172

171:                                              ; preds = %121
  br label %172

172:                                              ; preds = %171, %155, %150, %144, %133, %124
  br label %173

173:                                              ; preds = %1, %172, %120, %62
  ret void
}

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @ca0113_mmio_gpio_set(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @chipio_set_control_param(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @zxr_headphone_gain_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @r3di_gpio_out_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @ae5_mmio_select_out(%struct.hda_codec*) #1

declare dso_local i32 @ae5_headphone_gain_set(%struct.hda_codec*, i32) #1

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @chipio_write(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
