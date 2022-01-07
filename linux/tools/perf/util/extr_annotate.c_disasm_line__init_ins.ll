; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__init_ins.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__init_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 (%struct.arch*, i32*, %struct.map_symbol*)* }
%struct.arch = type { i32 }
%struct.map_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disasm_line*, %struct.arch*, %struct.map_symbol*)* @disasm_line__init_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disasm_line__init_ins(%struct.disasm_line* %0, %struct.arch* %1, %struct.map_symbol* %2) #0 {
  %4 = alloca %struct.disasm_line*, align 8
  %5 = alloca %struct.arch*, align 8
  %6 = alloca %struct.map_symbol*, align 8
  store %struct.disasm_line* %0, %struct.disasm_line** %4, align 8
  store %struct.arch* %1, %struct.arch** %5, align 8
  store %struct.map_symbol* %2, %struct.map_symbol** %6, align 8
  %7 = load %struct.arch*, %struct.arch** %5, align 8
  %8 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %9 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_4__* @ins__find(%struct.arch* %7, i32 %11)
  %13 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %14 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %17 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %24 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64 (%struct.arch*, i32*, %struct.map_symbol*)*, i64 (%struct.arch*, i32*, %struct.map_symbol*)** %27, align 8
  %29 = icmp ne i64 (%struct.arch*, i32*, %struct.map_symbol*)* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %32 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64 (%struct.arch*, i32*, %struct.map_symbol*)*, i64 (%struct.arch*, i32*, %struct.map_symbol*)** %35, align 8
  %37 = load %struct.arch*, %struct.arch** %5, align 8
  %38 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %39 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %38, i32 0, i32 1
  %40 = load %struct.map_symbol*, %struct.map_symbol** %6, align 8
  %41 = call i64 %36(%struct.arch* %37, i32* %39, %struct.map_symbol* %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.disasm_line*, %struct.disasm_line** %4, align 8
  %45 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %21, %43, %30, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @ins__find(%struct.arch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
