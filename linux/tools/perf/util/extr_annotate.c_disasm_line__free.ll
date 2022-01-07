; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_disasm_line__free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_line = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disasm_line__free(%struct.disasm_line* %0) #0 {
  %2 = alloca %struct.disasm_line*, align 8
  store %struct.disasm_line* %0, %struct.disasm_line** %2, align 8
  %3 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %4 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %10 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = icmp ne i32 (i32*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %18 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %24 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %23, i32 0, i32 2
  %25 = call i32 %22(i32* %24)
  br label %30

26:                                               ; preds = %8, %1
  %27 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %28 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %27, i32 0, i32 2
  %29 = call i32 @ins__delete(i32* %28)
  br label %30

30:                                               ; preds = %26, %16
  %31 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %32 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @zfree(i32* %33)
  %35 = load %struct.disasm_line*, %struct.disasm_line** %2, align 8
  %36 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %35, i32 0, i32 0
  %37 = call i32 @annotation_line__delete(i32* %36)
  ret void
}

declare dso_local i32 @ins__delete(i32*) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @annotation_line__delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
