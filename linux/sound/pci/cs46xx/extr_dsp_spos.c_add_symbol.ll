; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_add_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_add_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_symbol_entry = type { i32, i64, i32*, i32, i32 }
%struct.snd_cs46xx = type { %struct.TYPE_3__*, %struct.dsp_spos_instance* }
%struct.TYPE_3__ = type { i32 }
%struct.dsp_spos_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.dsp_symbol_entry* }

@DSP_MAX_SYMBOLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dsp_spos: symbol table is full\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dsp_spos: symbol <%s> duplicated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_symbol_entry* (%struct.snd_cs46xx*, i8*, i32, i32)* @add_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_symbol_entry* @add_symbol(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dsp_symbol_entry*, align 8
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dsp_spos_instance*, align 8
  %11 = alloca %struct.dsp_symbol_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %14 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %13, i32 0, i32 1
  %15 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %14, align 8
  store %struct.dsp_spos_instance* %15, %struct.dsp_spos_instance** %10, align 8
  store %struct.dsp_symbol_entry* null, %struct.dsp_symbol_entry** %11, align 8
  %16 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %17 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DSP_MAX_SYMBOLS, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %25 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.dsp_symbol_entry* null, %struct.dsp_symbol_entry** %5, align 8
  br label %125

30:                                               ; preds = %4
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %31, i8* %32, i32 %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %38 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store %struct.dsp_symbol_entry* null, %struct.dsp_symbol_entry** %5, align 8
  br label %125

44:                                               ; preds = %30
  %45 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %46 = call i32 @find_free_symbol_index(%struct.dsp_spos_instance* %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %48 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %50, i64 %52
  %54 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcpy(i32 %55, i8* %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %60 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %62, i64 %64
  %66 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %65, i32 0, i32 3
  store i32 %58, i32* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %69 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %71, i64 %73
  %75 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 8
  %76 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %77 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %79, i64 %81
  %83 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %85 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %87, i64 %89
  %91 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %93 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %95, i64 %97
  store %struct.dsp_symbol_entry* %98, %struct.dsp_symbol_entry** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %101 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %44
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %108 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %44
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %113 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %111, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %10, align 8
  %119 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %11, align 8
  store %struct.dsp_symbol_entry* %124, %struct.dsp_symbol_entry** %5, align 8
  br label %125

125:                                              ; preds = %123, %36, %23
  %126 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %5, align 8
  ret %struct.dsp_symbol_entry* %126
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx*, i8*, i32) #1

declare dso_local i32 @find_free_symbol_index(%struct.dsp_spos_instance*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
