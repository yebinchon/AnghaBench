; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c__map_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c__map_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_scb_descriptor = type { i32, i32, i32, i32, i32 }
%struct.snd_cs46xx = type { %struct.TYPE_2__*, %struct.dsp_spos_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_spos_instance = type { i32, i32, %struct.dsp_scb_descriptor* }

@DSP_MAX_SCB_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"dsp_spos: got no place for other SCB\0A\00", align 1
@SYMBOL_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32)* @_map_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @_map_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dsp_scb_descriptor*, align 8
  %5 = alloca %struct.snd_cs46xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsp_spos_instance*, align 8
  %9 = alloca %struct.dsp_scb_descriptor*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %12 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %11, i32 0, i32 1
  %13 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %12, align 8
  store %struct.dsp_spos_instance* %13, %struct.dsp_spos_instance** %8, align 8
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %9, align 8
  %14 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %15 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DSP_MAX_SCB_DESC, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %22 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %4, align 8
  br label %110

27:                                               ; preds = %3
  %28 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %29 = call i32 @find_free_scb_index(%struct.dsp_spos_instance* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %31 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %30, i32 0, i32 2
  %32 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %32, i64 %34
  %36 = call i32 @memset(%struct.dsp_scb_descriptor* %35, i32 0, i32 20)
  %37 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %38 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %37, i32 0, i32 2
  %39 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %39, i64 %41
  %43 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcpy(i32 %44, i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 2
  %50 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %50, i64 %52
  %54 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %53, i32 0, i32 3
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %57 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %56, i32 0, i32 2
  %58 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %58, i64 %60
  %62 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %64 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %63, i32 0, i32 2
  %65 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %65, i64 %67
  %69 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %71 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %70, i32 0, i32 2
  %72 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %72, i64 %74
  store %struct.dsp_scb_descriptor* %75, %struct.dsp_scb_descriptor** %9, align 8
  %76 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SYMBOL_PARAMETER, align 4
  %80 = call i32 @add_symbol(%struct.snd_cs46xx* %76, i8* %77, i32 %78, i32 %79)
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 2
  %83 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %83, i64 %85
  %87 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %86, i32 0, i32 2
  store i32 %80, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %90 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %27
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %96 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %27
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %100 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %8, align 8
  %105 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %103, %97
  %109 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %9, align 8
  store %struct.dsp_scb_descriptor* %109, %struct.dsp_scb_descriptor** %4, align 8
  br label %110

110:                                              ; preds = %108, %20
  %111 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %4, align 8
  ret %struct.dsp_scb_descriptor* %111
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @find_free_scb_index(%struct.dsp_spos_instance*) #1

declare dso_local i32 @memset(%struct.dsp_scb_descriptor*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @add_symbol(%struct.snd_cs46xx*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
