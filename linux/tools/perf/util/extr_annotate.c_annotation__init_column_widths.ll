; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__init_column_widths.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__init_column_widths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @annotation__init_column_widths(%struct.annotation* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.annotation*, align 8
  %4 = alloca %struct.symbol*, align 8
  store %struct.annotation* %0, %struct.annotation** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %5 = load %struct.symbol*, %struct.symbol** %4, align 8
  %6 = call i32 @symbol__size(%struct.symbol* %5)
  %7 = call i8* @hex_width(i32 %6)
  %8 = load %struct.annotation*, %struct.annotation** %3, align 8
  %9 = getelementptr inbounds %struct.annotation, %struct.annotation* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i8* %7, i8** %10, align 8
  %11 = load %struct.annotation*, %struct.annotation** %3, align 8
  %12 = getelementptr inbounds %struct.annotation, %struct.annotation* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i8* %7, i8** %13, align 8
  %14 = load %struct.annotation*, %struct.annotation** %3, align 8
  %15 = getelementptr inbounds %struct.annotation, %struct.annotation* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store i8* %7, i8** %16, align 8
  %17 = load %struct.symbol*, %struct.symbol** %4, align 8
  %18 = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @hex_width(i32 %19)
  %21 = load %struct.annotation*, %struct.annotation** %3, align 8
  %22 = getelementptr inbounds %struct.annotation, %struct.annotation* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i8* %20, i8** %23, align 8
  %24 = load %struct.annotation*, %struct.annotation** %3, align 8
  %25 = getelementptr inbounds %struct.annotation, %struct.annotation* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @width_jumps(i32 %26)
  %28 = load %struct.annotation*, %struct.annotation** %3, align 8
  %29 = getelementptr inbounds %struct.annotation, %struct.annotation* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.annotation*, %struct.annotation** %3, align 8
  %32 = call i32 @annotation__max_ins_name(%struct.annotation* %31)
  %33 = load %struct.annotation*, %struct.annotation** %3, align 8
  %34 = getelementptr inbounds %struct.annotation, %struct.annotation* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  ret void
}

declare dso_local i8* @hex_width(i32) #1

declare dso_local i32 @symbol__size(%struct.symbol*) #1

declare dso_local i32 @width_jumps(i32) #1

declare dso_local i32 @annotation__max_ins_name(%struct.annotation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
