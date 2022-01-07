; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_ltc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_proc_ltc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_pcxhr* }
%struct.snd_pcxhr = type { %struct.pcxhr_mgr* }
%struct.pcxhr_mgr = type { i32, i32, i64 }
%struct.snd_info_buffer = type { i32 }
%struct.pcxhr_rmh = type { i32*, i32* }

@PCXHR_FIRMWARE_DSP_MAIN_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no firmware loaded\0A\00", align 1
@CMD_MANAGE_SIGNAL = common dso_local global i32 0, align 4
@MANAGE_SIGNAL_TIME_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ltc not activated (%d)\0A\00", align 1
@REG_CONT_VALSMPTE = common dso_local global i32 0, align 4
@CMD_GET_TIME_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ltc read error (err=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"timecode: %02u:%02u:%02u-%02u\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"raw: 0x%04x%06x%06x\0A\00", align 1
@TIME_CODE_VALID_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"warning: linear timecode not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @pcxhr_proc_ltc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcxhr_proc_ltc(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca %struct.pcxhr_rmh, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %13 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %14 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %13, i32 0, i32 0
  %15 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %14, align 8
  store %struct.snd_pcxhr* %15, %struct.snd_pcxhr** %5, align 8
  %16 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %17 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %16, i32 0, i32 0
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %17, align 8
  store %struct.pcxhr_mgr* %18, %struct.pcxhr_mgr** %6, align 8
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %20 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCXHR_FIRMWARE_DSP_MAIN_INDEX, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %165

29:                                               ; preds = %2
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %31 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @CMD_MANAGE_SIGNAL, align 4
  %36 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %7, i32 %35)
  %37 = load i32, i32* @MANAGE_SIGNAL_TIME_CODE, align 4
  %38 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %44 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %43, %struct.pcxhr_rmh* %7)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %165

51:                                               ; preds = %34
  %52 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %53 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %58 = call i32 @hr222_manage_timecode(%struct.pcxhr_mgr* %57, i32 1)
  br label %64

59:                                               ; preds = %51
  %60 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %61 = load i32, i32* @REG_CONT_VALSMPTE, align 4
  %62 = load i32, i32* @REG_CONT_VALSMPTE, align 4
  %63 = call i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr* %60, i32 %61, i32 %62, i32* null)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %66 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %29
  %68 = load i32, i32* @CMD_GET_TIME_CODE, align 4
  %69 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %7, i32 %68)
  %70 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %71 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %70, %struct.pcxhr_rmh* %7)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %165

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 3
  %85 = mul nsw i32 10, %84
  %86 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  %91 = add nsw i32 %85, %90
  store i32 %91, i32* %8, align 4
  %92 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 16
  %97 = and i32 %96, 7
  %98 = mul nsw i32 10, %97
  %99 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 15
  %105 = add nsw i32 %98, %104
  store i32 %105, i32* %9, align 4
  %106 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 7
  %111 = mul nsw i32 10, %110
  %112 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 16
  %117 = and i32 %116, 15
  %118 = add nsw i32 %111, %117
  store i32 %118, i32* %10, align 4
  %119 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 8
  %124 = and i32 %123, 3
  %125 = mul nsw i32 10, %124
  %126 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 15
  %131 = add nsw i32 %125, %130
  store i32 %131, i32* %11, align 4
  %132 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %139 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 65535
  %144 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 16777215
  %149 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 16777215
  %154 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %148, i32 %153)
  %155 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %7, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @TIME_CODE_VALID_MASK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %78
  %163 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %164 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %26, %47, %74, %162, %78
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @hr222_manage_timecode(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @pcxhr_write_io_num_reg_cont(%struct.pcxhr_mgr*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
