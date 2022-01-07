; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__hist_entry__sym_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c__hist_entry__sym_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i64 (%struct.map*, i32)*, i32 }
%struct.symbol = type { i64, i64, i64, i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%-#*llx %c \00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%c] \00", align 1
@STT_OBJECT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"+0x%llx\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" (inlined)\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%-#.*llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map*, %struct.symbol*, i64, i8, i8*, i64, i32)* @_hist_entry__sym_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hist_entry__sym_snprintf(%struct.map* %0, %struct.symbol* %1, i64 %2, i8 signext %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  store %struct.map* %0, %struct.map** %8, align 8
  store %struct.symbol* %1, %struct.symbol** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8 %3, i8* %11, align 1
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %18 = load i64, i64* @verbose, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %7
  %21 = load %struct.map*, %struct.map** %8, align 8
  %22 = icmp ne %struct.map* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.map*, %struct.map** %8, align 8
  %25 = getelementptr inbounds %struct.map, %struct.map* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call signext i8 @dso__symtab_origin(i32 %26)
  %28 = sext i8 %27 to i32
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %28, %23 ], [ 33, %29 ]
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %16, align 1
  %33 = load i8*, i8** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i32, i32* @BITS_PER_LONG, align 4
  %36 = sdiv i32 %35, 4
  %37 = add nsw i32 %36, 2
  %38 = load i64, i64* %10, align 8
  %39 = load i8, i8* %16, align 1
  %40 = sext i8 %39 to i32
  %41 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %30, %7
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub i64 %48, %49
  %51 = load i8, i8* %11, align 1
  %52 = sext i8 %51 to i32
  %53 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %47, i64 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %15, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %15, align 8
  %56 = load %struct.symbol*, %struct.symbol** %9, align 8
  %57 = icmp ne %struct.symbol* %56, null
  br i1 %57, label %58, label %132

58:                                               ; preds = %44
  %59 = load %struct.map*, %struct.map** %8, align 8
  %60 = icmp ne %struct.map* %59, null
  br i1 %60, label %61, label %132

61:                                               ; preds = %58
  %62 = load %struct.symbol*, %struct.symbol** %9, align 8
  %63 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STT_OBJECT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = load i64, i64* %15, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = sub i64 %71, %72
  %74 = load %struct.symbol*, %struct.symbol** %9, align 8
  %75 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %70, i64 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %15, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.map*, %struct.map** %8, align 8
  %88 = getelementptr inbounds %struct.map, %struct.map* %87, i32 0, i32 0
  %89 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %88, align 8
  %90 = load %struct.map*, %struct.map** %8, align 8
  %91 = load %struct.symbol*, %struct.symbol** %9, align 8
  %92 = getelementptr inbounds %struct.symbol, %struct.symbol* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 %89(%struct.map* %90, i32 %93)
  %95 = sub nsw i64 %86, %94
  %96 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %82, i64 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* %15, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %15, align 8
  br label %131

99:                                               ; preds = %61
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %15, align 8
  %105 = sub i64 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %15, align 8
  %109 = sub i64 %107, %108
  %110 = load %struct.symbol*, %struct.symbol** %9, align 8
  %111 = getelementptr inbounds %struct.symbol, %struct.symbol* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %102, i64 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %109, i64 %112)
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %15, align 8
  %116 = load %struct.symbol*, %struct.symbol** %9, align 8
  %117 = getelementptr inbounds %struct.symbol, %struct.symbol* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %99
  %121 = load i8*, i8** %12, align 8
  %122 = load i64, i64* %15, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i64, i64* %13, align 8
  %125 = load i64, i64* %15, align 8
  %126 = sub i64 %124, %125
  %127 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %123, i64 %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, %127
  store i64 %129, i64* %15, align 8
  br label %130

130:                                              ; preds = %120, %99
  br label %131

131:                                              ; preds = %130, %67
  br label %147

132:                                              ; preds = %58, %44
  %133 = load i32, i32* @BITS_PER_LONG, align 4
  %134 = sdiv i32 %133, 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %17, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* %15, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %15, align 8
  %141 = sub i64 %139, %140
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i64 (i8*, i64, i8*, ...) @repsep_snprintf(i8* %138, i64 %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %142, i64 %143)
  %145 = load i64, i64* %15, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %15, align 8
  br label %147

147:                                              ; preds = %132, %131
  %148 = load i64, i64* %15, align 8
  %149 = trunc i64 %148 to i32
  ret i32 %149
}

declare dso_local signext i8 @dso__symtab_origin(i32) #1

declare dso_local i64 @repsep_snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
