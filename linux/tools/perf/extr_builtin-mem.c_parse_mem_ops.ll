; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_parse_mem_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-mem.c_parse_mem_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_mode = type { i32, i64 }
%struct.option = type { i64 }

@mem_modes = common dso_local global %struct.mem_mode* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unknown sampling op %s, check man page\0A\00", align 1
@MEM_OPERATION_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_mem_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mem_ops(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mem_mode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.option*, %struct.option** %5, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %93

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %11, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %93

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %77, %30
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 44)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** %12, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.mem_mode*, %struct.mem_mode** @mem_modes, align 8
  store %struct.mem_mode* %40, %struct.mem_mode** %9, align 8
  br label %41

41:                                               ; preds = %55, %39
  %42 = load %struct.mem_mode*, %struct.mem_mode** %9, align 8
  %43 = getelementptr inbounds %struct.mem_mode, %struct.mem_mode* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.mem_mode*, %struct.mem_mode** %9, align 8
  %49 = getelementptr inbounds %struct.mem_mode, %struct.mem_mode* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strcasecmp(i8* %47, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %58

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.mem_mode*, %struct.mem_mode** %9, align 8
  %57 = getelementptr inbounds %struct.mem_mode, %struct.mem_mode* %56, i32 1
  store %struct.mem_mode* %57, %struct.mem_mode** %9, align 8
  br label %41

58:                                               ; preds = %53, %41
  %59 = load %struct.mem_mode*, %struct.mem_mode** %9, align 8
  %60 = getelementptr inbounds %struct.mem_mode, %struct.mem_mode* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %89

67:                                               ; preds = %58
  %68 = load %struct.mem_mode*, %struct.mem_mode** %9, align 8
  %69 = getelementptr inbounds %struct.mem_mode, %struct.mem_mode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  %78 = load i8*, i8** %12, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %10, align 8
  br label %32

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %21
  store i32 0, i32* %13, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @MEM_OPERATION_LOAD, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i8*, i8** %11, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %89, %29, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
