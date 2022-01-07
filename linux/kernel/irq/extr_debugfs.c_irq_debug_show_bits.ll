; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_bits.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.irq_bit_descr = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, i32, %struct.irq_bit_descr*, i32)* @irq_debug_show_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_debug_show_bits(%struct.seq_file* %0, i32 %1, i32 %2, %struct.irq_bit_descr* %3, i32 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_bit_descr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_bit_descr* %3, %struct.irq_bit_descr** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %32, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.irq_bit_descr*, %struct.irq_bit_descr** %9, align 8
  %19 = getelementptr inbounds %struct.irq_bit_descr, %struct.irq_bit_descr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 12
  %27 = load %struct.irq_bit_descr*, %struct.irq_bit_descr** %9, align 8
  %28 = getelementptr inbounds %struct.irq_bit_descr, %struct.irq_bit_descr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load %struct.irq_bit_descr*, %struct.irq_bit_descr** %9, align 8
  %36 = getelementptr inbounds %struct.irq_bit_descr, %struct.irq_bit_descr* %35, i32 1
  store %struct.irq_bit_descr* %36, %struct.irq_bit_descr** %9, align 8
  br label %12

37:                                               ; preds = %12
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
