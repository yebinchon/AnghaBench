; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_arch__associate_ins_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_arch__associate_ins_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch = type { i64, i64, %struct.ins* }
%struct.ins = type { %struct.ins_ops*, i32 }
%struct.ins_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arch*, i8*, %struct.ins_ops*)* @arch__associate_ins_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arch__associate_ins_ops(%struct.arch* %0, i8* %1, %struct.ins_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ins_ops*, align 8
  %8 = alloca %struct.ins*, align 8
  store %struct.arch* %0, %struct.arch** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ins_ops* %2, %struct.ins_ops** %7, align 8
  %9 = load %struct.arch*, %struct.arch** %5, align 8
  %10 = getelementptr inbounds %struct.arch, %struct.arch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.arch*, %struct.arch** %5, align 8
  %13 = getelementptr inbounds %struct.arch, %struct.arch* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.arch*, %struct.arch** %5, align 8
  %18 = call i64 @arch__grow_instructions(%struct.arch* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %48

21:                                               ; preds = %16, %3
  %22 = load %struct.arch*, %struct.arch** %5, align 8
  %23 = getelementptr inbounds %struct.arch, %struct.arch* %22, i32 0, i32 2
  %24 = load %struct.ins*, %struct.ins** %23, align 8
  %25 = load %struct.arch*, %struct.arch** %5, align 8
  %26 = getelementptr inbounds %struct.arch, %struct.arch* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ins, %struct.ins* %24, i64 %27
  store %struct.ins* %28, %struct.ins** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strdup(i8* %29)
  %31 = load %struct.ins*, %struct.ins** %8, align 8
  %32 = getelementptr inbounds %struct.ins, %struct.ins* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ins*, %struct.ins** %8, align 8
  %34 = getelementptr inbounds %struct.ins, %struct.ins* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %48

38:                                               ; preds = %21
  %39 = load %struct.ins_ops*, %struct.ins_ops** %7, align 8
  %40 = load %struct.ins*, %struct.ins** %8, align 8
  %41 = getelementptr inbounds %struct.ins, %struct.ins* %40, i32 0, i32 0
  store %struct.ins_ops* %39, %struct.ins_ops** %41, align 8
  %42 = load %struct.arch*, %struct.arch** %5, align 8
  %43 = getelementptr inbounds %struct.arch, %struct.arch* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.arch*, %struct.arch** %5, align 8
  %47 = call i32 @ins__sort(%struct.arch* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %37, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @arch__grow_instructions(%struct.arch*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @ins__sort(%struct.arch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
