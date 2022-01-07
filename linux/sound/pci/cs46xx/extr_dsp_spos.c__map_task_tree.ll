; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c__map_task_tree.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c__map_task_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_task_descriptor = type { i64, i8*, i8*, i32 }
%struct.snd_cs46xx = type { %struct.TYPE_2__*, %struct.dsp_spos_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_spos_instance = type { i32, %struct.dsp_task_descriptor* }

@DSP_MAX_TASK_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dsp_spos: got no place for other TASK\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@SYMBOL_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_task_descriptor* (%struct.snd_cs46xx*, i8*, i8*, i8*)* @_map_task_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_task_descriptor* @_map_task_tree(%struct.snd_cs46xx* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dsp_task_descriptor*, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dsp_spos_instance*, align 8
  %11 = alloca %struct.dsp_task_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %13 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %12, i32 0, i32 1
  %14 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %13, align 8
  store %struct.dsp_spos_instance* %14, %struct.dsp_spos_instance** %10, align 8
  store %struct.dsp_task_descriptor* null, %struct.dsp_task_descriptor** %11, align 8
  %15 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %16 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DSP_MAX_TASK_DESC, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %23 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.dsp_task_descriptor* null, %struct.dsp_task_descriptor** %5, align 8
  br label %112

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %33 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %32, i32 0, i32 1
  %34 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %33, align 8
  %35 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %36 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %34, i64 %38
  %40 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strcpy(i32 %41, i8* %42)
  br label %56

44:                                               ; preds = %28
  %45 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %46 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %45, i32 0, i32 1
  %47 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %46, align 8
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %47, i64 %51
  %53 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcpy(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %44, %31
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %59 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %58, i32 0, i32 1
  %60 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %59, align 8
  %61 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %62 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %60, i64 %64
  %66 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %65, i32 0, i32 2
  store i8* %57, i8** %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %69 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %68, i32 0, i32 1
  %70 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %69, align 8
  %71 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %72 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %70, i64 %74
  %76 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %75, i32 0, i32 1
  store i8* %67, i8** %76, align 8
  %77 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %78 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 1
  %83 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %82, align 8
  %84 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %85 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %83, i64 %87
  %89 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %88, i32 0, i32 0
  store i64 %80, i64* %89, align 8
  %90 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %91 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %90, i32 0, i32 1
  %92 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %91, align 8
  %93 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %94 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %92, i64 %96
  store %struct.dsp_task_descriptor* %97, %struct.dsp_task_descriptor** %11, align 8
  %98 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %99 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %56
  %105 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* @SYMBOL_PARAMETER, align 4
  %109 = call i32 @add_symbol(%struct.snd_cs46xx* %105, i8* %106, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %56
  %111 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %11, align 8
  store %struct.dsp_task_descriptor* %111, %struct.dsp_task_descriptor** %5, align 8
  br label %112

112:                                              ; preds = %110, %21
  %113 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %5, align 8
  ret %struct.dsp_task_descriptor* %113
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @add_symbol(%struct.snd_cs46xx*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
