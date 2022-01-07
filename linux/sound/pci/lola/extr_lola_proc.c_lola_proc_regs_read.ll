; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_proc.c_lola_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.lola* }
%struct.lola = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"BAR0 %02x: %08x\0A\00", align 1
@BAR0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"BAR1 %02x: %08x\0A\00", align 1
@BAR1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"DSD %02x STS  %08x\0A\00", align 1
@STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"DSD %02x LPIB %08x\0A\00", align 1
@LPIB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"DSD %02x CTL  %08x\0A\00", align 1
@CTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"DSD %02x LVIL %08x\0A\00", align 1
@LVI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"DSD %02x BDPL %08x\0A\00", align 1
@BDPL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"DSD %02x BDPU %08x\0A\00", align 1
@BDPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @lola_proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lola_proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.lola*, %struct.lola** %8, align 8
  store %struct.lola* %9, %struct.lola** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.lola*, %struct.lola** %5, align 8
  %17 = getelementptr inbounds %struct.lola, %struct.lola* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* @BAR0, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl(i64 %25)
  %27 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %26)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %33 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 48
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.lola*, %struct.lola** %5, align 8
  %41 = getelementptr inbounds %struct.lola, %struct.lola* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* @BAR1, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @readl(i64 %49)
  %51 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %6, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %57 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 128, i32* %6, align 4
  br label %58

58:                                               ; preds = %76, %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 160
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.lola*, %struct.lola** %5, align 8
  %65 = getelementptr inbounds %struct.lola, %struct.lola* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* @BAR1, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @readl(i64 %73)
  %75 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %6, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %81 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %128, %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 32
  br i1 %84, label %85, label %131

85:                                               ; preds = %82
  %86 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.lola*, %struct.lola** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @STS, align 4
  %91 = call i32 @lola_dsd_read(%struct.lola* %88, i32 %89, i32 %90)
  %92 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.lola*, %struct.lola** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @LPIB, align 4
  %98 = call i32 @lola_dsd_read(%struct.lola* %95, i32 %96, i32 %97)
  %99 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %98)
  %100 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.lola*, %struct.lola** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @CTL, align 4
  %105 = call i32 @lola_dsd_read(%struct.lola* %102, i32 %103, i32 %104)
  %106 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.lola*, %struct.lola** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @LVI, align 4
  %112 = call i32 @lola_dsd_read(%struct.lola* %109, i32 %110, i32 %111)
  %113 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %108, i32 %112)
  %114 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.lola*, %struct.lola** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @BDPL, align 4
  %119 = call i32 @lola_dsd_read(%struct.lola* %116, i32 %117, i32 %118)
  %120 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %115, i32 %119)
  %121 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.lola*, %struct.lola** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BDPU, align 4
  %126 = call i32 @lola_dsd_read(%struct.lola* %123, i32 %124, i32 %125)
  %127 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %85
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %82

131:                                              ; preds = %82
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @lola_dsd_read(%struct.lola*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
