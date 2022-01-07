; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_debugfs.c_irq_debug_show_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.irq_data = type { %struct.irq_data*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"%*sdomain:  %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%*shwirq:   0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.irq_data*, i32)* @irq_debug_show_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_debug_show_data(%struct.seq_file* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi i8* [ %18, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = call i32 (%struct.seq_file*, i8*, i32, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.seq_file*, i8*, i32, i8*, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @irq_debug_show_chip(%struct.seq_file* %30, %struct.irq_data* %31, i32 %33)
  %35 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %20
  %40 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %48 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)*, i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %57 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)*, i32 (%struct.seq_file*, i32*, %struct.irq_data*, i32)** %61, align 8
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 %62(%struct.seq_file* %63, i32* null, %struct.irq_data* %64, i32 %66)
  br label %68

68:                                               ; preds = %55, %46, %39, %20
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, ...) #1

declare dso_local i32 @irq_debug_show_chip(%struct.seq_file*, %struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
