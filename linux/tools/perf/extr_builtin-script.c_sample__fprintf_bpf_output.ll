; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_sample__fprintf_bpf_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_sample__fprintf_bpf_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%17s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"BPF output:\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" %04x:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @sample__fprintf_bpf_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample__fprintf_bpf_output(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.printer_data*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %9, align 1
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.printer_data*
  store %struct.printer_data* %15, %struct.printer_data** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %116 [
    i32 134, label %17
    i32 132, label %22
    i32 137, label %34
    i32 130, label %40
    i32 129, label %46
    i32 128, label %51
    i32 136, label %56
    i32 135, label %101
    i32 131, label %106
    i32 133, label %115
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %11, align 4
  br label %117

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %25 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %117

34:                                               ; preds = %4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %117

40:                                               ; preds = %4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %117

46:                                               ; preds = %4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %11, align 4
  br label %117

51:                                               ; preds = %4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %117

56:                                               ; preds = %4
  %57 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %58 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8, i8* %9, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %67 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %61, %56
  %69 = load i8, i8* %9, align 1
  %70 = call i32 @isprint(i8 zeroext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 46)
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %78 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %117

82:                                               ; preds = %72
  %83 = load i8, i8* %9, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %88 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %92

89:                                               ; preds = %82
  %90 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %91 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %100

93:                                               ; preds = %68
  %94 = load i32*, i32** %8, align 8
  %95 = load i8, i8* %9, align 1
  %96 = zext i8 %95 to i32
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %93, %92
  br label %117

101:                                              ; preds = %4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %117

106:                                              ; preds = %4
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load %struct.printer_data*, %struct.printer_data** %10, align 8
  %112 = getelementptr inbounds %struct.printer_data, %struct.printer_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %117

115:                                              ; preds = %4
  br label %116

116:                                              ; preds = %4, %115
  br label %117

117:                                              ; preds = %116, %106, %101, %100, %81, %51, %46, %40, %34, %22, %17
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
