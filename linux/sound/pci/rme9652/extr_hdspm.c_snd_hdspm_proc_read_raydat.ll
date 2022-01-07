; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_raydat.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_proc_read_raydat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.hdspm* }
%struct.hdspm = type { i32 }
%struct.snd_info_buffer = type { i32 }

@HDSPM_RD_STATUS_1 = common dso_local global i32 0, align 4
@HDSPM_RD_STATUS_2 = common dso_local global i32 0, align 4
@HDSPM_RD_STATUS_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"STATUS1: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"STATUS2: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"STATUS3: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A*** CLOCK MODE\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Clock mode      : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"System frequency: %d Hz\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\0A*** INPUT STATUS\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"s1_input %d: Lock %d, Sync %d, Freq %s\0A\00", align 1
@texts_freq = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"WC input: Lock %d, Sync %d, Freq %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"TCO input: Lock %d, Sync %d, Freq %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"SYNC IN: Lock %d, Sync %d, Freq %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_hdspm_proc_read_raydat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdspm_proc_read_raydat(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hdspm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %12 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %13 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %12, i32 0, i32 0
  %14 = load %struct.hdspm*, %struct.hdspm** %13, align 8
  store %struct.hdspm* %14, %struct.hdspm** %5, align 8
  %15 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %16 = load i32, i32* @HDSPM_RD_STATUS_1, align 4
  %17 = call i32 @hdspm_read(%struct.hdspm* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %19 = load i32, i32* @HDSPM_RD_STATUS_2, align 4
  %20 = call i32 @hdspm_read(%struct.hdspm* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %22 = load i32, i32* @HDSPM_RD_STATUS_3, align 4
  %23 = call i32 @hdspm_read(%struct.hdspm* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %34 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %36 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %37 = call i64 @hdspm_system_clock_mode(%struct.hdspm* %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %41 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %43 = load %struct.hdspm*, %struct.hdspm** %5, align 8
  %44 = call i32 @hdspm_get_system_sample_rate(%struct.hdspm* %43)
  %45 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %44)
  %46 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %47 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  store i32 256, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %80, %2
  %49 = load i32, i32* %9, align 4
  %50 = icmp ult i32 %49, 8
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load i32*, i32** @texts_freq, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul i32 %68, 4
  %70 = lshr i32 %67, %69
  %71 = and i32 %70, 15
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %53, i32 %59, i32 %65, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %48

83:                                               ; preds = %48
  %84 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 16777216
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 33554432
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = load i32*, i32** @texts_freq, align 8
  %96 = load i32, i32* %6, align 4
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 15
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %89, i32 %94, i32 %101)
  %103 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 67108864
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 134217728
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = load i32*, i32** @texts_freq, align 8
  %115 = load i32, i32* %6, align 4
  %116 = lshr i32 %115, 20
  %117 = and i32 %116, 15
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %108, i32 %113, i32 %120)
  %122 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 1024
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, 2048
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  %133 = load i32*, i32** @texts_freq, align 8
  %134 = load i32, i32* %7, align 4
  %135 = lshr i32 %134, 12
  %136 = and i32 %135, 15
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %127, i32 %132, i32 %139)
  ret void
}

declare dso_local i32 @hdspm_read(%struct.hdspm*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i64 @hdspm_system_clock_mode(%struct.hdspm*) #1

declare dso_local i32 @hdspm_get_system_sample_rate(%struct.hdspm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
