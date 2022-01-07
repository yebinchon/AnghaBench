; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_dsp_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_dsp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.TYPE_2__*, %struct.snd_pcxhr** }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcxhr = type { i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"loading dsp [%d] size = %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong file index\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"pcxhr could not be set up\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"pcxhr pipes could not be set up\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"pcxhr pipes could not be started\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"pcxhr firmware downloaded and successfully set up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, %struct.firmware*)* @pcxhr_dsp_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_dsp_load(%struct.pcxhr_mgr* %0, i32 %1, %struct.firmware* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pcxhr*, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.firmware* %2, %struct.firmware** %7, align 8
  %11 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %12 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.firmware*, %struct.firmware** %7, align 8
  %17 = getelementptr inbounds %struct.firmware, %struct.firmware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %52 [
    i32 128, label %21
    i32 129, label %27
    i32 131, label %33
    i32 132, label %39
    i32 130, label %43
  ]

21:                                               ; preds = %3
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %23 = call i32 @pcxhr_reset_xilinx_com(%struct.pcxhr_mgr* %22)
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %25 = load %struct.firmware*, %struct.firmware** %7, align 8
  %26 = call i32 @pcxhr_load_xilinx_binary(%struct.pcxhr_mgr* %24, %struct.firmware* %25, i32 0)
  store i32 %26, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %29 = call i32 @pcxhr_reset_xilinx_com(%struct.pcxhr_mgr* %28)
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %31 = load %struct.firmware*, %struct.firmware** %7, align 8
  %32 = call i32 @pcxhr_load_xilinx_binary(%struct.pcxhr_mgr* %30, %struct.firmware* %31, i32 1)
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %3
  %34 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %35 = call i32 @pcxhr_reset_dsp(%struct.pcxhr_mgr* %34)
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %37 = load %struct.firmware*, %struct.firmware** %7, align 8
  %38 = call i32 @pcxhr_load_eeprom_binary(%struct.pcxhr_mgr* %36, %struct.firmware* %37)
  store i32 %38, i32* %4, align 4
  br label %146

39:                                               ; preds = %3
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %41 = load %struct.firmware*, %struct.firmware** %7, align 8
  %42 = call i32 @pcxhr_load_boot_binary(%struct.pcxhr_mgr* %40, %struct.firmware* %41)
  store i32 %42, i32* %4, align 4
  br label %146

43:                                               ; preds = %3
  %44 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %45 = load %struct.firmware*, %struct.firmware** %7, align 8
  %46 = call i32 @pcxhr_load_dsp_binary(%struct.pcxhr_mgr* %44, %struct.firmware* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %146

51:                                               ; preds = %43
  br label %60

52:                                               ; preds = %3
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %54 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %146

60:                                               ; preds = %51
  %61 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %62 = call i32 @pcxhr_init_board(%struct.pcxhr_mgr* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %67 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %146

72:                                               ; preds = %60
  %73 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %74 = call i32 @pcxhr_config_pipes(%struct.pcxhr_mgr* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %79 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %146

84:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %125, %84
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %88 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %85
  %92 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %93 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %92, i32 0, i32 2
  %94 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %94, i64 %96
  %98 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %97, align 8
  store %struct.snd_pcxhr* %98, %struct.snd_pcxhr** %10, align 8
  %99 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %100 = call i32 @pcxhr_create_pcm(%struct.snd_pcxhr* %99)
  store i32 %100, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %146

104:                                              ; preds = %91
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %109 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pcxhr_create_mixer(i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %146

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %104
  %117 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %10, align 8
  %118 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_card_register(i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %8, align 4
  store i32 %123, i32* %4, align 4
  br label %146

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %85

128:                                              ; preds = %85
  %129 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %130 = call i32 @pcxhr_start_pipes(%struct.pcxhr_mgr* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %135 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %4, align 4
  br label %146

140:                                              ; preds = %128
  %141 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %142 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %144, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %140, %133, %122, %113, %102, %77, %65, %52, %49, %39, %33, %27, %21
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcxhr_reset_xilinx_com(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_load_xilinx_binary(%struct.pcxhr_mgr*, %struct.firmware*, i32) #1

declare dso_local i32 @pcxhr_reset_dsp(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_load_eeprom_binary(%struct.pcxhr_mgr*, %struct.firmware*) #1

declare dso_local i32 @pcxhr_load_boot_binary(%struct.pcxhr_mgr*, %struct.firmware*) #1

declare dso_local i32 @pcxhr_load_dsp_binary(%struct.pcxhr_mgr*, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pcxhr_init_board(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_config_pipes(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_create_pcm(%struct.snd_pcxhr*) #1

declare dso_local i32 @pcxhr_create_mixer(i32) #1

declare dso_local i32 @snd_card_register(i32) #1

declare dso_local i32 @pcxhr_start_pipes(%struct.pcxhr_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
