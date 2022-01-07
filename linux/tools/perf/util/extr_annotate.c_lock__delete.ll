; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_lock__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.ins }
%struct.ins = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ins_operands*)* @lock__delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock__delete(%struct.ins_operands* %0) #0 {
  %2 = alloca %struct.ins_operands*, align 8
  %3 = alloca %struct.ins*, align 8
  store %struct.ins_operands* %0, %struct.ins_operands** %2, align 8
  %4 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %5 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store %struct.ins* %6, %struct.ins** %3, align 8
  %7 = load %struct.ins*, %struct.ins** %3, align 8
  %8 = getelementptr inbounds %struct.ins, %struct.ins* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.ins*, %struct.ins** %3, align 8
  %13 = getelementptr inbounds %struct.ins, %struct.ins* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = icmp ne i32 (i32)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.ins*, %struct.ins** %3, align 8
  %20 = getelementptr inbounds %struct.ins, %struct.ins* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %25 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(i32 %27)
  br label %35

29:                                               ; preds = %11, %1
  %30 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %31 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ins__delete(i32 %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %37 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @zfree(i32* %38)
  %40 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %41 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @zfree(i32* %42)
  %44 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %45 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @zfree(i32* %46)
  ret void
}

declare dso_local i32 @ins__delete(i32) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
