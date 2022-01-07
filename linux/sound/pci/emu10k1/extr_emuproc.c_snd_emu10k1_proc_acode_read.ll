; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_acode_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emuproc.c_snd_emu10k1_proc_acode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"FX8010 Instruction List '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"  Code dump      :\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"    OP(0x%02x, 0x%03x, 0x%03x, 0x%03x, 0x%03x) /* 0x%04x: 0x%08x%08x */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_emu10k1_proc_acode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_proc_acode_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %9 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %10 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %9, i32 0, i32 0
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %10, align 8
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %6, align 8
  %12 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %19 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %86, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1024, i32 512
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %20
  %30 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 2
  %33 = call i32 @snd_emu10k1_efx_read(%struct.snd_emu10k1* %30, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %36, 1
  %38 = call i32 @snd_emu10k1_efx_read(%struct.snd_emu10k1* %34, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %29
  %44 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 15
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 12
  %50 = and i32 %49, 2047
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 0
  %53 = and i32 %52, 2047
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 12
  %56 = and i32 %55, 2047
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 0
  %59 = and i32 %58, 2047
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %44, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %60, i32 %61, i32 %62)
  br label %85

64:                                               ; preds = %29
  %65 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 20
  %68 = and i32 %67, 15
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 10
  %71 = and i32 %70, 1023
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 %73, 1023
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 10
  %77 = and i32 %76, 1023
  %78 = load i32, i32* %7, align 4
  %79 = ashr i32 %78, 0
  %80 = and i32 %79, 1023
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %65, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71, i32 %74, i32 %77, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %64, %43
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %20

89:                                               ; preds = %20
  ret void
}

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @snd_emu10k1_efx_read(%struct.snd_emu10k1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
