; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_boot_loader_config_emif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_boot_loader_config_emif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i32 }

@HPI6205_ERROR_DSP_EMIF1 = common dso_local global i32 0, align 4
@HPI6205_ERROR_DSP_EMIF2 = common dso_local global i32 0, align 4
@HPI6205_ERROR_DSP_EMIF3 = common dso_local global i32 0, align 4
@HPI6205_ERROR_DSP_EMIF4 = common dso_local global i32 0, align 4
@HPICL_ADDR = common dso_local global i32 0, align 4
@HPICH_ADDR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"HPICL %x %x\0A\00", align 1
@HPI6205_ERROR_C6713_HPIC = common dso_local global i32 0, align 4
@HPIAL_ADDR = common dso_local global i32 0, align 4
@HPIAH_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"HPIA %x %x\0A\00", align 1
@HPI6205_ERROR_C6713_HPIA = common dso_local global i32 0, align 4
@HPI6205_ERROR_C6713_PLL = common dso_local global i32 0, align 4
@C6713_EMIF_GCTL = common dso_local global i32 0, align 4
@C6713_EMIF_CE0 = common dso_local global i32 0, align 4
@C6713_EMIF_SDRAMEXT = common dso_local global i32 0, align 4
@C6713_EMIF_SDRAMCTL = common dso_local global i32 0, align 4
@C6713_EMIF_SDRAMTIMING = common dso_local global i32 0, align 4
@MTYPE_OFS = common dso_local global i64 0, align 8
@RH_OFS = common dso_local global i64 0, align 8
@RST_OFS = common dso_local global i64 0, align 8
@RS_OFS = common dso_local global i64 0, align 8
@WH_OFS = common dso_local global i64 0, align 8
@WST_OFS = common dso_local global i64 0, align 8
@WS_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpi_adapter_obj*, i32)* @boot_loader_config_emif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_loader_config_emif(%struct.hpi_adapter_obj* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %2
  %13 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %13, i32 %14, i32 25165824, i32 14201)
  store i32 48, i32* %6, align 4
  %16 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %16, i32 %17, i32 25165832, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %21, i32 %22, i32 25165832)
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @HPI6205_ERROR_DSP_EMIF1, align 4
  store i32 %26, i32* %3, align 4
  br label %197

27:                                               ; preds = %12
  store i32 533806881, i32* %6, align 4
  %28 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %28, i32 %29, i32 25165828, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %33, i32 %34, i32 25165828)
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @HPI6205_ERROR_DSP_EMIF2, align 4
  store i32 %38, i32* %3, align 4
  br label %197

39:                                               ; preds = %27
  store i32 387006241, i32* %6, align 4
  %40 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %40, i32 %41, i32 25165840, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %45, i32 %46, i32 25165840)
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @HPI6205_ERROR_DSP_EMIF3, align 4
  store i32 %50, i32* %3, align 4
  br label %197

51:                                               ; preds = %39
  store i32 311495201, i32* %6, align 4
  %52 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %52, i32 %53, i32 25165844, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %57, i32 %58, i32 25165844)
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @HPI6205_ERROR_DSP_EMIF4, align 4
  store i32 %62, i32* %3, align 4
  br label %197

63:                                               ; preds = %51
  %64 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %64, i32 %65, i32 25165848, i32 118583296)
  %67 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %67, i32 %68, i32 25165852, i32 1040)
  br label %196

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %190

73:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %7, align 4
  %74 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %75 = load i32, i32* @HPICL_ADDR, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %74, i32 0, i32 %75, i32 %76)
  %78 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %79 = load i32, i32* @HPICH_ADDR, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %78, i32 0, i32 %79, i32 %80)
  %82 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %83 = load i32, i32* @HPICL_ADDR, align 4
  %84 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %82, i32 0, i32 %83)
  %85 = and i32 65527, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @HPI_DEBUG_LOG(i32 %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @HPI6205_ERROR_C6713_HPIC, align 4
  store i32 %94, i32* %3, align 4
  br label %197

95:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %132, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 32
  br i1 %98, label %99, label %135

99:                                               ; preds = %96
  %100 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %101 = load i32, i32* @HPIAL_ADDR, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %100, i32 0, i32 %101, i32 %102)
  %104 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %105 = load i32, i32* @HPIAH_ADDR, align 4
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %106, 16
  %108 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %104, i32 0, i32 %105, i32 %107)
  %109 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %110 = load i32, i32* @HPIAL_ADDR, align 4
  %111 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %109, i32 0, i32 %110)
  %112 = and i32 65535, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %115 = load i32, i32* @HPIAH_ADDR, align 4
  %116 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %114, i32 0, i32 %115)
  %117 = and i32 65535, %116
  %118 = shl i32 %117, 16
  %119 = or i32 %113, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %99
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @HPI_DEBUG_LOG(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* @HPI6205_ERROR_C6713_HPIA, align 4
  store i32 %128, i32* %3, align 4
  br label %197

129:                                              ; preds = %99
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %96

135:                                              ; preds = %96
  %136 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %136, i32 %137, i32 28819712, i32 0)
  %139 = call i32 @hpios_delay_micro_seconds(i32 1000)
  %140 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %140, i32 %141, i32 28819744, i32 32770)
  %143 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %143, i32 %144, i32 28819740, i32 32769)
  %146 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %146, i32 %147, i32 28819736, i32 32768)
  %149 = call i32 @hpios_delay_micro_seconds(i32 1000)
  %150 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %151 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %150, i32 0, i32 25952292, i32 10762)
  %152 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %152, i32 %153, i32 28819712, i32 1)
  %155 = call i32 @hpios_delay_micro_seconds(i32 1000)
  %156 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %157 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %156, i32 0, i32 25952292, i32 10754)
  %158 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %159 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %158, i32 0, i32 25165828, i32 303107105)
  %160 = call i32 @hpios_delay_micro_seconds(i32 1000)
  %161 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj* %161, i32 %162, i32 28819712)
  %164 = and i32 %163, 15
  %165 = icmp ne i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %135
  %167 = load i32, i32* @HPI6205_ERROR_C6713_PLL, align 4
  store i32 %167, i32* %3, align 4
  br label %197

168:                                              ; preds = %135
  %169 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @C6713_EMIF_GCTL, align 4
  %172 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %169, i32 %170, i32 %171, i32 13480)
  %173 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @C6713_EMIF_CE0, align 4
  %176 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %173, i32 %174, i32 %175, i32 48)
  %177 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @C6713_EMIF_SDRAMEXT, align 4
  %180 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %177, i32 %178, i32 %179, i32 1826601)
  %181 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @C6713_EMIF_SDRAMCTL, align 4
  %184 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %181, i32 %182, i32 %183, i32 1192321024)
  %185 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @C6713_EMIF_SDRAMTIMING, align 4
  %188 = call i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj* %185, i32 %186, i32 %187, i32 1040)
  %189 = call i32 @hpios_delay_micro_seconds(i32 1000)
  br label %195

190:                                              ; preds = %70
  %191 = load i32, i32* %5, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %193, %190
  br label %195

195:                                              ; preds = %194, %168
  br label %196

196:                                              ; preds = %195, %63
  store i32 0, i32* %3, align 4
  br label %197

197:                                              ; preds = %196, %166, %123, %89, %61, %49, %37, %25
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @boot_loader_write_mem32(%struct.hpi_adapter_obj*, i32, i32, i32) #1

declare dso_local i32 @boot_loader_read_mem32(%struct.hpi_adapter_obj*, i32, i32) #1

declare dso_local i32 @HPI_DEBUG_LOG(i32, i8*, i32, i32) #1

declare dso_local i32 @hpios_delay_micro_seconds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
