; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c__dsp_create_generic_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c__dsp_create_generic_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, %struct.TYPE_2__*, %struct.dsp_spos_instance* }
%struct.TYPE_2__ = type { i32 }
%struct.dsp_spos_instance = type { %struct.dsp_scb_descriptor* }
%struct.dsp_symbol_entry = type { i32 }
%struct.dsp_scb_descriptor = type { i32, i8*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor*, %struct.dsp_symbol_entry* }

@SCBsubListPtr = common dso_local global i64 0, align 8
@SCBfuncEntryPtr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"dsp_spos: creating SCB <%s>\0A\00", align 1
@SCB_ON_PARENT_NEXT_SCB = common dso_local global i32 0, align 4
@SCB_ON_PARENT_SUBLIST_SCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_scb_descriptor* (%struct.snd_cs46xx*, i8*, i32*, i32, %struct.dsp_symbol_entry*, %struct.dsp_scb_descriptor*, i32)* @_dsp_create_generic_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx* %0, i8* %1, i32* %2, i32 %3, %struct.dsp_symbol_entry* %4, %struct.dsp_scb_descriptor* %5, i32 %6) #0 {
  %8 = alloca %struct.dsp_scb_descriptor*, align 8
  %9 = alloca %struct.snd_cs46xx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dsp_symbol_entry*, align 8
  %14 = alloca %struct.dsp_scb_descriptor*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dsp_spos_instance*, align 8
  %17 = alloca %struct.dsp_scb_descriptor*, align 8
  %18 = alloca i64, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.dsp_symbol_entry* %4, %struct.dsp_symbol_entry** %13, align 8
  store %struct.dsp_scb_descriptor* %5, %struct.dsp_scb_descriptor** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %20 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %19, i32 0, i32 2
  %21 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  store %struct.dsp_spos_instance* %21, %struct.dsp_spos_instance** %16, align 8
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %23 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %22, i32 0, i32 0
  %24 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %23, align 8
  %25 = icmp ne %struct.dsp_scb_descriptor* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %162

31:                                               ; preds = %7
  %32 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %33 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %32, i32 0, i32 0
  %34 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %33, align 8
  %35 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 16
  %38 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %39 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %38, i32 0, i32 0
  %40 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %39, align 8
  %41 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %37, %42
  %44 = load i32*, i32** %11, align 8
  %45 = load i64, i64* @SCBsubListPtr, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* @SCBfuncEntryPtr, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -65536
  store i32 %51, i32* %49, align 4
  %52 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %13, align 8
  %53 = getelementptr inbounds %struct.dsp_symbol_entry, %struct.dsp_symbol_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i64, i64* @SCBfuncEntryPtr, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %61 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx* %67, i8* %68, i32* %69, i32 %70)
  store %struct.dsp_scb_descriptor* %71, %struct.dsp_scb_descriptor** %17, align 8
  %72 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %73 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %72, i32 0, i32 0
  %74 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %73, align 8
  %75 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %76 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %75, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %74, %struct.dsp_scb_descriptor** %76, align 8
  %77 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %78 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %77, i32 0, i32 0
  %79 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %78, align 8
  %80 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %81 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %80, i32 0, i32 4
  store %struct.dsp_scb_descriptor* %79, %struct.dsp_scb_descriptor** %81, align 8
  %82 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %14, align 8
  %83 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %84 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %83, i32 0, i32 2
  store %struct.dsp_scb_descriptor* %82, %struct.dsp_scb_descriptor** %84, align 8
  %85 = load %struct.dsp_symbol_entry*, %struct.dsp_symbol_entry** %13, align 8
  %86 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %87 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %86, i32 0, i32 5
  store %struct.dsp_symbol_entry* %85, %struct.dsp_symbol_entry** %87, align 8
  %88 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %89 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %88, i32 0, i32 2
  %90 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %89, align 8
  %91 = icmp ne %struct.dsp_scb_descriptor* %90, null
  br i1 %91, label %92, label %157

92:                                               ; preds = %31
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @SCB_ON_PARENT_NEXT_SCB, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %98 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %97, i32 0, i32 2
  %99 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %98, align 8
  %100 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %99, i32 0, i32 4
  %101 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %100, align 8
  %102 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %103 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %102, i32 0, i32 0
  %104 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %103, align 8
  %105 = icmp ne %struct.dsp_scb_descriptor* %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @snd_BUG_ON(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %162

110:                                              ; preds = %96
  %111 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %112 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %113 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %112, i32 0, i32 2
  %114 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %113, align 8
  %115 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %114, i32 0, i32 4
  store %struct.dsp_scb_descriptor* %111, %struct.dsp_scb_descriptor** %115, align 8
  br label %143

116:                                              ; preds = %92
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @SCB_ON_PARENT_SUBLIST_SCB, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %122 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %121, i32 0, i32 2
  %123 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %122, align 8
  %124 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %123, i32 0, i32 3
  %125 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %124, align 8
  %126 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %16, align 8
  %127 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %126, i32 0, i32 0
  %128 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %127, align 8
  %129 = icmp ne %struct.dsp_scb_descriptor* %125, %128
  %130 = zext i1 %129 to i32
  %131 = call i64 @snd_BUG_ON(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %8, align 8
  br label %162

134:                                              ; preds = %120
  %135 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %136 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %137 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %136, i32 0, i32 2
  %138 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %137, align 8
  %139 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %138, i32 0, i32 3
  store %struct.dsp_scb_descriptor* %135, %struct.dsp_scb_descriptor** %139, align 8
  br label %142

140:                                              ; preds = %116
  %141 = call i32 (...) @snd_BUG()
  br label %142

142:                                              ; preds = %140, %134
  br label %143

143:                                              ; preds = %142, %110
  %144 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %145 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %144, i32 0, i32 0
  %146 = load i64, i64* %18, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %149 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %150 = getelementptr inbounds %struct.dsp_scb_descriptor, %struct.dsp_scb_descriptor* %149, i32 0, i32 2
  %151 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %150, align 8
  %152 = call i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx* %148, %struct.dsp_scb_descriptor* %151)
  %153 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %154 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %153, i32 0, i32 0
  %155 = load i64, i64* %18, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  br label %157

157:                                              ; preds = %143, %31
  %158 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %9, align 8
  %159 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %160 = call i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx* %158, %struct.dsp_scb_descriptor* %159)
  %161 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  store %struct.dsp_scb_descriptor* %161, %struct.dsp_scb_descriptor** %8, align 8
  br label %162

162:                                              ; preds = %157, %133, %109, %30
  %163 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %8, align 8
  ret %struct.dsp_scb_descriptor* %163
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_scb(%struct.snd_cs46xx*, i8*, i32*, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_spos_update_scb(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cs46xx_dsp_proc_register_scb_desc(%struct.snd_cs46xx*, %struct.dsp_scb_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
