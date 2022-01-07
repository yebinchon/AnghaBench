; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_xlated_dumper.c_kernel_syms_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_xlated_dumper.c_kernel_syms_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_data = type { i32, i64, %struct.kernel_sym* }
%struct.kernel_sym = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%p %*c %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"__bpf_call_base\00", align 1
@kernel_syms_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_syms_load(%struct.dump_data* %0) #0 {
  %2 = alloca %struct.dump_data*, align 8
  %3 = alloca %struct.kernel_sym*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.dump_data* %0, %struct.dump_data** %2, align 8
  %8 = call i32* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %104

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %91, %58, %12
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @fgets(i8* %14, i32 256, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %13
  %19 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %20 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %19, i32 0, i32 2
  %21 = load %struct.kernel_sym*, %struct.kernel_sym** %20, align 8
  %22 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %23 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = call i8* @reallocarray(%struct.kernel_sym* %21, i32 %25, i32 16)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %79, %29
  %31 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %32 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %31, i32 0, i32 2
  %33 = load %struct.kernel_sym*, %struct.kernel_sym** %32, align 8
  %34 = call i32 @free(%struct.kernel_sym* %33)
  %35 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %36 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %35, i32 0, i32 2
  store %struct.kernel_sym* null, %struct.kernel_sym** %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  br label %104

39:                                               ; preds = %18
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to %struct.kernel_sym*
  %42 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %43 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %42, i32 0, i32 2
  store %struct.kernel_sym* %41, %struct.kernel_sym** %43, align 8
  %44 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %45 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %44, i32 0, i32 2
  %46 = load %struct.kernel_sym*, %struct.kernel_sym** %45, align 8
  %47 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %48 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %46, i64 %50
  store %struct.kernel_sym* %51, %struct.kernel_sym** %3, align 8
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %53 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %54 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, i32 %55)
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %13

59:                                               ; preds = %39
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %63 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %65 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcmp(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %59
  %70 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %71 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %74 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %76 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %30

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.kernel_sym*, %struct.kernel_sym** %3, align 8
  %83 = getelementptr inbounds %struct.kernel_sym, %struct.kernel_sym* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %88 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %81
  br label %13

92:                                               ; preds = %13
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %96 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %95, i32 0, i32 2
  %97 = load %struct.kernel_sym*, %struct.kernel_sym** %96, align 8
  %98 = load %struct.dump_data*, %struct.dump_data** %2, align 8
  %99 = getelementptr inbounds %struct.dump_data, %struct.dump_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load i32, i32* @kernel_syms_cmp, align 4
  %103 = call i32 @qsort(%struct.kernel_sym* %97, i64 %101, i32 16, i32 %102)
  br label %104

104:                                              ; preds = %92, %30, %11
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @reallocarray(%struct.kernel_sym*, i32, i32) #1

declare dso_local i32 @free(%struct.kernel_sym*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @qsort(%struct.kernel_sym*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
