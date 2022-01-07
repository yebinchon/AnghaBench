; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_is_unknown_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_is_unknown_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i64, %struct.string_list* }
%struct.string_list = type { i64, i32, %struct.string_list* }

@SYM_STRUCT = common dso_local global i64 0, align 8
@SYM_UNION = common dso_local global i64 0, align 8
@SYM_ENUM = common dso_local global i64 0, align 8
@SYM_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*)* @is_unknown_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_unknown_symbol(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca %struct.string_list*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = load %struct.symbol*, %struct.symbol** %2, align 8
  %5 = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SYM_STRUCT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.symbol*, %struct.symbol** %2, align 8
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SYM_UNION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.symbol*, %struct.symbol** %2, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SYM_ENUM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %15, %9, %1
  %22 = load %struct.symbol*, %struct.symbol** %2, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 1
  %24 = load %struct.string_list*, %struct.string_list** %23, align 8
  store %struct.string_list* %24, %struct.string_list** %3, align 8
  %25 = icmp ne %struct.string_list* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %21
  %27 = load %struct.string_list*, %struct.string_list** %3, align 8
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SYM_NORMAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load %struct.string_list*, %struct.string_list** %3, align 8
  %34 = getelementptr inbounds %struct.string_list, %struct.string_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %32
  %39 = load %struct.string_list*, %struct.string_list** %3, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 2
  %41 = load %struct.string_list*, %struct.string_list** %40, align 8
  store %struct.string_list* %41, %struct.string_list** %3, align 8
  %42 = icmp ne %struct.string_list* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load %struct.string_list*, %struct.string_list** %3, align 8
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SYM_NORMAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load %struct.string_list*, %struct.string_list** %3, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.string_list*, %struct.string_list** %3, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 2
  %58 = load %struct.string_list*, %struct.string_list** %57, align 8
  store %struct.string_list* %58, %struct.string_list** %3, align 8
  %59 = icmp ne %struct.string_list* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.string_list*, %struct.string_list** %3, align 8
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SYM_NORMAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.string_list*, %struct.string_list** %3, align 8
  %68 = getelementptr inbounds %struct.string_list, %struct.string_list* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @strcmp(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br label %72

72:                                               ; preds = %66, %60, %55, %49, %43, %38, %32, %26, %21, %15
  %73 = phi i1 [ false, %60 ], [ false, %55 ], [ false, %49 ], [ false, %43 ], [ false, %38 ], [ false, %32 ], [ false, %26 ], [ false, %21 ], [ false, %15 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  ret i32 %74
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
