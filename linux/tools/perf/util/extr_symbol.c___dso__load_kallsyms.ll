; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c___dso__load_kallsyms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c___dso__load_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i32, i32 }
%struct.map = type { i32 }
%struct.kmap = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@DSO_TYPE_GUEST_KERNEL = common dso_local global i64 0, align 8
@DSO_BINARY_TYPE__GUEST_KALLSYMS = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dso__load_kallsyms(%struct.dso* %0, i8* %1, %struct.map* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dso*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kmap*, align 8
  %11 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.map* %2, %struct.map** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.map*, %struct.map** %8, align 8
  %13 = call %struct.kmap* @map__kmap(%struct.map* %12)
  store %struct.kmap* %13, %struct.kmap** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @symbol__restricted_filename(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %82

18:                                               ; preds = %4
  %19 = load %struct.kmap*, %struct.kmap** %10, align 8
  %20 = icmp ne %struct.kmap* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.kmap*, %struct.kmap** %10, align 8
  %23 = getelementptr inbounds %struct.kmap, %struct.kmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %18
  store i32 -1, i32* %5, align 4
  br label %82

27:                                               ; preds = %21
  %28 = load %struct.dso*, %struct.dso** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @dso__load_all_kallsyms(%struct.dso* %28, i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %82

33:                                               ; preds = %27
  %34 = load %struct.kmap*, %struct.kmap** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @kallsyms__delta(%struct.kmap* %34, i8* %35, i32* %11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %82

39:                                               ; preds = %33
  %40 = load %struct.dso*, %struct.dso** %6, align 8
  %41 = getelementptr inbounds %struct.dso, %struct.dso* %40, i32 0, i32 2
  %42 = call i32 @symbols__fixup_end(i32* %41)
  %43 = load %struct.dso*, %struct.dso** %6, align 8
  %44 = getelementptr inbounds %struct.dso, %struct.dso* %43, i32 0, i32 2
  %45 = call i32 @symbols__fixup_duplicate(i32* %44)
  %46 = load %struct.dso*, %struct.dso** %6, align 8
  %47 = getelementptr inbounds %struct.dso, %struct.dso* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DSO_TYPE_GUEST_KERNEL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i32, i32* @DSO_BINARY_TYPE__GUEST_KALLSYMS, align 4
  %53 = load %struct.dso*, %struct.dso** %6, align 8
  %54 = getelementptr inbounds %struct.dso, %struct.dso* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %39
  %56 = load i32, i32* @DSO_BINARY_TYPE__KALLSYMS, align 4
  %57 = load %struct.dso*, %struct.dso** %6, align 8
  %58 = getelementptr inbounds %struct.dso, %struct.dso* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load %struct.dso*, %struct.dso** %6, align 8
  %64 = load %struct.map*, %struct.map** %8, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @dso__load_kcore(%struct.dso* %63, %struct.map* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.kmap*, %struct.kmap** %10, align 8
  %70 = getelementptr inbounds %struct.kmap, %struct.kmap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dso*, %struct.dso** %6, align 8
  %73 = call i32 @map_groups__split_kallsyms_for_kcore(i32 %71, %struct.dso* %72)
  store i32 %73, i32* %5, align 4
  br label %82

74:                                               ; preds = %62, %59
  %75 = load %struct.kmap*, %struct.kmap** %10, align 8
  %76 = getelementptr inbounds %struct.kmap, %struct.kmap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dso*, %struct.dso** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.map*, %struct.map** %8, align 8
  %81 = call i32 @map_groups__split_kallsyms(i32 %77, %struct.dso* %78, i32 %79, %struct.map* %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %68, %38, %32, %26, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #1

declare dso_local i64 @dso__load_all_kallsyms(%struct.dso*, i8*) #1

declare dso_local i64 @kallsyms__delta(%struct.kmap*, i8*, i32*) #1

declare dso_local i32 @symbols__fixup_end(i32*) #1

declare dso_local i32 @symbols__fixup_duplicate(i32*) #1

declare dso_local i32 @dso__load_kcore(%struct.dso*, %struct.map*, i8*) #1

declare dso_local i32 @map_groups__split_kallsyms_for_kcore(i32, %struct.dso*) #1

declare dso_local i32 @map_groups__split_kallsyms(i32, %struct.dso*, i32, %struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
