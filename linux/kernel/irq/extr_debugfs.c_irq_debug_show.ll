; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.irq_desc* }
%struct.irq_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"handler:  %ps\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"device:   %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"status:   0x%08x\0A\00", align 1
@irqdesc_states = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"istate:   0x%08x\0A\00", align 1
@irqdesc_istates = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"ddepth:   %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"wdepth:   %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"dstate:   0x%08x\0A\00", align 1
@irqdata_states = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"node:     %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @irq_debug_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_debug_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca %struct.irq_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.irq_desc*, %struct.irq_desc** %8, align 8
  store %struct.irq_desc* %9, %struct.irq_desc** %5, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = call i32 @raw_spin_lock_irq(i32* %11)
  %13 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %14 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %13)
  store %struct.irq_data* %14, %struct.irq_data** %6, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @irqdesc_states, align 4
  %35 = load i32, i32* @irqdesc_states, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @irq_debug_show_bits(%struct.seq_file* %30, i32 0, i32 %33, i32 %34, i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %45 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @irqdesc_istates, align 4
  %48 = load i32, i32* @irqdesc_istates, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @irq_debug_show_bits(%struct.seq_file* %43, i32 0, i32 %46, i32 %47, i32 %49)
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %58 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %63 = call i32 @irqd_get(%struct.irq_data* %62)
  %64 = call i32 @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %67 = call i32 @irqd_get(%struct.irq_data* %66)
  %68 = load i32, i32* @irqdata_states, align 4
  %69 = load i32, i32* @irqdata_states, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @irq_debug_show_bits(%struct.seq_file* %65, i32 0, i32 %67, i32 %68, i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %74 = call i32 @irq_data_get_node(%struct.irq_data* %73)
  %75 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %77 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %78 = call i32 @irq_debug_show_masks(%struct.seq_file* %76, %struct.irq_desc* %77)
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %81 = call i32 @irq_debug_show_data(%struct.seq_file* %79, %struct.irq_data* %80, i32 0)
  %82 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %83 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %82, i32 0, i32 0
  %84 = call i32 @raw_spin_unlock_irq(i32* %83)
  ret i32 0
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @irq_debug_show_bits(%struct.seq_file*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @irqd_get(%struct.irq_data*) #1

declare dso_local i32 @irq_data_get_node(%struct.irq_data*) #1

declare dso_local i32 @irq_debug_show_masks(%struct.seq_file*, %struct.irq_desc*) #1

declare dso_local i32 @irq_debug_show_data(%struct.seq_file*, %struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
