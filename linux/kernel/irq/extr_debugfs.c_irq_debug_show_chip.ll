; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_chip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.irq_data = type { %struct.irq_chip* }
%struct.irq_chip = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"chip: None\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%*schip:    %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%*sflags:   0x%lx\0A\00", align 1
@irqchip_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.irq_data*, i32)* @irq_debug_show_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_debug_show_chip(%struct.seq_file* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  store %struct.irq_chip* %10, %struct.irq_chip** %7, align 8
  %11 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %12 = icmp ne %struct.irq_chip* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %20 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %27 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %33 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @irqchip_flags, align 4
  %36 = load i32, i32* @irqchip_flags, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @irq_debug_show_bits(%struct.seq_file* %30, i32 %31, i32 %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @irq_debug_show_bits(%struct.seq_file*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
