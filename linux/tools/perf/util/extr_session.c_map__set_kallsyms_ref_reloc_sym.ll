; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_map__set_kallsyms_ref_reloc_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_map__set_kallsyms_ref_reloc_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.ref_reloc_sym = type { i32, i32* }
%struct.kmap = type { %struct.ref_reloc_sym* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map__set_kallsyms_ref_reloc_sym(%struct.map* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref_reloc_sym*, align 8
  %10 = alloca %struct.kmap*, align 8
  store %struct.map* %0, %struct.map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call %struct.ref_reloc_sym* @zalloc(i32 16)
  store %struct.ref_reloc_sym* %11, %struct.ref_reloc_sym** %9, align 8
  %12 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %13 = icmp eq %struct.ref_reloc_sym* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @strdup(i8* %18)
  %20 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %21 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %23 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %28 = call i32 @free(%struct.ref_reloc_sym* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %53

31:                                               ; preds = %17
  %32 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %33 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i8* @strchr(i32* %34, i8 signext 93)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %43 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.map*, %struct.map** %5, align 8
  %45 = call %struct.kmap* @map__kmap(%struct.map* %44)
  store %struct.kmap* %45, %struct.kmap** %10, align 8
  %46 = load %struct.kmap*, %struct.kmap** %10, align 8
  %47 = icmp ne %struct.kmap* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %9, align 8
  %50 = load %struct.kmap*, %struct.kmap** %10, align 8
  %51 = getelementptr inbounds %struct.kmap, %struct.kmap* %50, i32 0, i32 0
  store %struct.ref_reloc_sym* %49, %struct.ref_reloc_sym** %51, align 8
  br label %52

52:                                               ; preds = %48, %40
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %26, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ref_reloc_sym* @zalloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.ref_reloc_sym*) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
