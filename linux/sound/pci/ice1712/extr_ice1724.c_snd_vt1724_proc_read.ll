; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"EEPROM:\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"  Subvendor        : 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"  Size             : %i bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  Version          : %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  System Config    : 0x%x\0A\00", align 1
@ICE_EEP2_SYSCONF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"  ACLink           : 0x%x\0A\00", align 1
@ICE_EEP2_ACLINK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"  I2S              : 0x%x\0A\00", align 1
@ICE_EEP2_I2S = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"  S/PDIF           : 0x%x\0A\00", align 1
@ICE_EEP2_SPDIF = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"  GPIO direction   : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"  GPIO mask        : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"  GPIO state       : 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  Extra #%02i        : 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0ARegisters:\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"  PSDOUT03 : 0x%08x\0A\00", align 1
@ROUTE_PLAYBACK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"  CCS%02x    : 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"  MT%02x     : 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_vt1724_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_vt1724_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %8, align 8
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %5, align 8
  %10 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %18 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %20 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %21 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %26 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @ICE_EEP2_SYSCONF, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @ICE_EEP2_ACLINK, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  %55 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %56 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %57 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @ICE_EEP2_I2S, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %65 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %66 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @ICE_EEP2_SPDIF, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %80 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %83)
  %85 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %86 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %87 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %89)
  store i32 18, i32* %6, align 4
  br label %91

91:                                               ; preds = %110, %2
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %94 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %91
  %99 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %102 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %100, i32 %108)
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %91

113:                                              ; preds = %91
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %115 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %116 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %117 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %118 = load i32, i32* @ROUTE_PLAYBACK, align 4
  %119 = call i32 @ICEMT1724(%struct.snd_ice1712* %117, i32 %118)
  %120 = call i64 @inl(i32 %119)
  %121 = trunc i64 %120 to i32
  %122 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %137, %113
  %124 = load i32, i32* %6, align 4
  %125 = icmp ult i32 %124, 32
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %130 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = call i32 @inb(i64 %134)
  %136 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %128, i32 %135)
  br label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %123

140:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %6, align 4
  %143 = icmp ult i32 %142, 48
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %148 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = call i32 @inb(i64 %152)
  %154 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %146, i32 %153)
  br label %155

155:                                              ; preds = %144
  %156 = load i32, i32* %6, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %141

158:                                              ; preds = %141
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @inl(i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
