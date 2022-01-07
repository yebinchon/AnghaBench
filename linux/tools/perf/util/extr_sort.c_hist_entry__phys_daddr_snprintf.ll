; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__phys_daddr_snprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__phys_daddr_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%c] \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%-#.*llx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%-*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, i8*, i64, i32)* @hist_entry__phys_daddr_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_entry__phys_daddr_snprintf(%struct.hist_entry* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* @BITS_PER_LONG, align 4
  %13 = sdiv i32 %12, 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %11, align 8
  %15 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %16 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %10, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = sub i64 %24, %25
  %27 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 (i8*, i64, i8*, i32, ...) @repsep_snprintf(i8* %23, i64 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %11, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 (i8*, i64, i8*, i32, ...) @repsep_snprintf(i8* %35, i64 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %10, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 (i8*, i64, i8*, i32, ...) @repsep_snprintf(i8* %47, i64 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ugt i64 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %63, %4
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @repsep_snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
