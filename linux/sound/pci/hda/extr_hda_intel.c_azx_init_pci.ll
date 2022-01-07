; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_init_pci.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AZX_DCAPS_NO_TCSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Clearing TCSEL\0A\00", align 1
@AZX_PCIREG_TCSEL = common dso_local global i32 0, align 4
@AZX_SNOOP_TYPE_ATI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting ATI snoop: %d\0A\00", align 1
@ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR = common dso_local global i32 0, align 4
@ATI_SB450_HDAUDIO_ENABLE_SNOOP = common dso_local global i32 0, align 4
@AZX_SNOOP_TYPE_NVIDIA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Setting Nvidia snoop: %d\0A\00", align 1
@NVIDIA_HDA_TRANSREG_ADDR = common dso_local global i32 0, align 4
@NVIDIA_HDA_ENABLE_COHBITS = common dso_local global i32 0, align 4
@NVIDIA_HDA_ISTRM_COH = common dso_local global i32 0, align 4
@NVIDIA_HDA_ENABLE_COHBIT = common dso_local global i32 0, align 4
@NVIDIA_HDA_OSTRM_COH = common dso_local global i32 0, align 4
@AZX_SNOOP_TYPE_SCH = common dso_local global i32 0, align 4
@INTEL_SCH_HDA_DEVC = common dso_local global i32 0, align 4
@INTEL_SCH_HDA_DEVC_NOSNOOP = common dso_local global i16 0, align 2
@.str.3 = private unnamed_addr constant [15 x i8] c"SCH snoop: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @azx_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_init_pci(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.azx* %0, %struct.azx** %2, align 8
  %5 = load %struct.azx*, %struct.azx** %2, align 8
  %6 = call i32 @azx_get_snoop_type(%struct.azx* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.azx*, %struct.azx** %2, align 8
  %8 = getelementptr inbounds %struct.azx, %struct.azx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AZX_DCAPS_NO_TCSEL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.azx*, %struct.azx** %2, align 8
  %15 = getelementptr inbounds %struct.azx, %struct.azx* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.azx*, %struct.azx** %2, align 8
  %21 = getelementptr inbounds %struct.azx, %struct.azx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @AZX_PCIREG_TCSEL, align 4
  %24 = call i32 @update_pci_byte(i32 %22, i32 %23, i32 7, i32 0)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @AZX_SNOOP_TYPE_ATI, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load %struct.azx*, %struct.azx** %2, align 8
  %31 = getelementptr inbounds %struct.azx, %struct.azx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.azx*, %struct.azx** %2, align 8
  %36 = call i8* @azx_snoop(%struct.azx* %35)
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.azx*, %struct.azx** %2, align 8
  %39 = getelementptr inbounds %struct.azx, %struct.azx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ATI_SB450_HDAUDIO_MISC_CNTR2_ADDR, align 4
  %42 = load %struct.azx*, %struct.azx** %2, align 8
  %43 = call i8* @azx_snoop(%struct.azx* %42)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @ATI_SB450_HDAUDIO_ENABLE_SNOOP, align 4
  br label %48

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = call i32 @update_pci_byte(i32 %40, i32 %41, i32 7, i32 %49)
  br label %51

51:                                               ; preds = %48, %25
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @AZX_SNOOP_TYPE_NVIDIA, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = load %struct.azx*, %struct.azx** %2, align 8
  %57 = getelementptr inbounds %struct.azx, %struct.azx* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.azx*, %struct.azx** %2, align 8
  %62 = call i8* @azx_snoop(%struct.azx* %61)
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load %struct.azx*, %struct.azx** %2, align 8
  %65 = getelementptr inbounds %struct.azx, %struct.azx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NVIDIA_HDA_TRANSREG_ADDR, align 4
  %68 = load i32, i32* @NVIDIA_HDA_ENABLE_COHBITS, align 4
  %69 = call i32 @update_pci_byte(i32 %66, i32 %67, i32 15, i32 %68)
  %70 = load %struct.azx*, %struct.azx** %2, align 8
  %71 = getelementptr inbounds %struct.azx, %struct.azx* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NVIDIA_HDA_ISTRM_COH, align 4
  %74 = load i32, i32* @NVIDIA_HDA_ENABLE_COHBIT, align 4
  %75 = call i32 @update_pci_byte(i32 %72, i32 %73, i32 1, i32 %74)
  %76 = load %struct.azx*, %struct.azx** %2, align 8
  %77 = getelementptr inbounds %struct.azx, %struct.azx* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NVIDIA_HDA_OSTRM_COH, align 4
  %80 = load i32, i32* @NVIDIA_HDA_ENABLE_COHBIT, align 4
  %81 = call i32 @update_pci_byte(i32 %78, i32 %79, i32 1, i32 %80)
  br label %82

82:                                               ; preds = %55, %51
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @AZX_SNOOP_TYPE_SCH, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %158

86:                                               ; preds = %82
  %87 = load %struct.azx*, %struct.azx** %2, align 8
  %88 = getelementptr inbounds %struct.azx, %struct.azx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @INTEL_SCH_HDA_DEVC, align 4
  %91 = call i32 @pci_read_config_word(i32 %89, i32 %90, i16* %4)
  %92 = load %struct.azx*, %struct.azx** %2, align 8
  %93 = call i8* @azx_snoop(%struct.azx* %92)
  %94 = icmp ne i8* %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load i16, i16* %4, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* @INTEL_SCH_HDA_DEVC_NOSNOOP, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95, %86
  %103 = load %struct.azx*, %struct.azx** %2, align 8
  %104 = call i8* @azx_snoop(%struct.azx* %103)
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %143

106:                                              ; preds = %102
  %107 = load i16, i16* %4, align 2
  %108 = zext i16 %107 to i32
  %109 = load i16, i16* @INTEL_SCH_HDA_DEVC_NOSNOOP, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %143

113:                                              ; preds = %106, %95
  %114 = load i16, i16* @INTEL_SCH_HDA_DEVC_NOSNOOP, align 2
  %115 = zext i16 %114 to i32
  %116 = xor i32 %115, -1
  %117 = load i16, i16* %4, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, %116
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %4, align 2
  %121 = load %struct.azx*, %struct.azx** %2, align 8
  %122 = call i8* @azx_snoop(%struct.azx* %121)
  %123 = icmp ne i8* %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %113
  %125 = load i16, i16* @INTEL_SCH_HDA_DEVC_NOSNOOP, align 2
  %126 = zext i16 %125 to i32
  %127 = load i16, i16* %4, align 2
  %128 = zext i16 %127 to i32
  %129 = or i32 %128, %126
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %4, align 2
  br label %131

131:                                              ; preds = %124, %113
  %132 = load %struct.azx*, %struct.azx** %2, align 8
  %133 = getelementptr inbounds %struct.azx, %struct.azx* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @INTEL_SCH_HDA_DEVC, align 4
  %136 = load i16, i16* %4, align 2
  %137 = call i32 @pci_write_config_word(i32 %134, i32 %135, i16 zeroext %136)
  %138 = load %struct.azx*, %struct.azx** %2, align 8
  %139 = getelementptr inbounds %struct.azx, %struct.azx* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @INTEL_SCH_HDA_DEVC, align 4
  %142 = call i32 @pci_read_config_word(i32 %140, i32 %141, i16* %4)
  br label %143

143:                                              ; preds = %131, %106, %102
  %144 = load %struct.azx*, %struct.azx** %2, align 8
  %145 = getelementptr inbounds %struct.azx, %struct.azx* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i16, i16* %4, align 2
  %150 = zext i16 %149 to i32
  %151 = load i16, i16* @INTEL_SCH_HDA_DEVC_NOSNOOP, align 2
  %152 = zext i16 %151 to i32
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %157 = call i32 (i32, i8*, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %143, %82
  ret void
}

declare dso_local i32 @azx_get_snoop_type(%struct.azx*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @update_pci_byte(i32, i32, i32, i32) #1

declare dso_local i8* @azx_snoop(%struct.azx*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
