; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_kernel_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__load_kernel_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64*, i32, i32* }
%struct.dso = type { i32 }
%struct.map = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@vmlinux_path = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Using %s for symbols\0A\00", align 1
@DSO_BINARY_TYPE__KALLSYMS = common dso_local global i32 0, align 4
@DSO__NAME_KALLSYMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.map*)* @dso__load_kernel_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__load_kernel_sym(%struct.dso* %0, %struct.map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.map* %1, %struct.map** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %12, i8** %7, align 8
  br label %54

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.dso*, %struct.dso** %4, align 8
  %21 = load %struct.map*, %struct.map** %5, align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  %23 = call i32 @dso__load_vmlinux(%struct.dso* %20, %struct.map* %21, i32* %22, i32 0)
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %16, %13
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** @vmlinux_path, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.dso*, %struct.dso** %4, align 8
  %32 = load %struct.map*, %struct.map** %5, align 8
  %33 = call i32 @dso__load_vmlinux_path(%struct.dso* %31, %struct.map* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %27, %24
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %86

45:                                               ; preds = %39
  %46 = load %struct.dso*, %struct.dso** %4, align 8
  %47 = load %struct.map*, %struct.map** %5, align 8
  %48 = call i8* @dso__find_kallsyms(%struct.dso* %46, %struct.map* %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %86

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %52, %11
  %55 = load %struct.dso*, %struct.dso** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.map*, %struct.map** %5, align 8
  %58 = call i32 @dso__load_kallsyms(%struct.dso* %55, i8* %56, %struct.map* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.dso*, %struct.dso** %4, align 8
  %71 = call i32 @dso__is_kcore(%struct.dso* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @DSO_BINARY_TYPE__KALLSYMS, align 4
  %75 = load %struct.dso*, %struct.dso** %4, align 8
  %76 = getelementptr inbounds %struct.dso, %struct.dso* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.dso*, %struct.dso** %4, align 8
  %78 = load i32, i32* @DSO__NAME_KALLSYMS, align 4
  %79 = call i32 @dso__set_long_name(%struct.dso* %77, i32 %78, i32 0)
  %80 = load %struct.map*, %struct.map** %5, align 8
  %81 = call i32 @map__fixup_start(%struct.map* %80)
  %82 = load %struct.map*, %struct.map** %5, align 8
  %83 = call i32 @map__fixup_end(%struct.map* %82)
  br label %84

84:                                               ; preds = %73, %69, %64
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %51, %44, %36, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @dso__load_vmlinux(%struct.dso*, %struct.map*, i32*, i32) #1

declare dso_local i32 @dso__load_vmlinux_path(%struct.dso*, %struct.map*) #1

declare dso_local i8* @dso__find_kallsyms(%struct.dso*, %struct.map*) #1

declare dso_local i32 @dso__load_kallsyms(%struct.dso*, i8*, %struct.map*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dso__is_kcore(%struct.dso*) #1

declare dso_local i32 @dso__set_long_name(%struct.dso*, i32, i32) #1

declare dso_local i32 @map__fixup_start(%struct.map*) #1

declare dso_local i32 @map__fixup_end(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
