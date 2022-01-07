; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_ids_from_al.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_ids_from_al.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 }
%struct.addr_location = type { %struct.TYPE_7__*, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.dso* }
%struct.dso = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_export*, %struct.addr_location*, i64*, i64*, i64*)* @db_ids_from_al to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_ids_from_al(%struct.db_export* %0, %struct.addr_location* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.db_export*, align 8
  %8 = alloca %struct.addr_location*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dso*, align 8
  %14 = alloca i64*, align 8
  store %struct.db_export* %0, %struct.db_export** %7, align 8
  store %struct.addr_location* %1, %struct.addr_location** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %16 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %97

19:                                               ; preds = %5
  %20 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %21 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.dso*, %struct.dso** %23, align 8
  store %struct.dso* %24, %struct.dso** %13, align 8
  %25 = load %struct.db_export*, %struct.db_export** %7, align 8
  %26 = load %struct.dso*, %struct.dso** %13, align 8
  %27 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @db_export__dso(%struct.db_export* %25, %struct.dso* %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %98

35:                                               ; preds = %19
  %36 = load %struct.dso*, %struct.dso** %13, align 8
  %37 = getelementptr inbounds %struct.dso, %struct.dso* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %41 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %35
  %45 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %46 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_7__* @symbol__new(i64 %47, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %50 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %49, i32 0, i32 0
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %50, align 8
  %51 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %52 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.dso*, %struct.dso** %13, align 8
  %57 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %58 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i32 @dso__insert_symbol(%struct.dso* %56, %struct.TYPE_7__* %59)
  br label %61

61:                                               ; preds = %55, %44
  br label %62

62:                                               ; preds = %61, %35
  %63 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %64 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = call i64* @symbol__priv(%struct.TYPE_7__* %70)
  store i64* %71, i64** %14, align 8
  %72 = load %struct.db_export*, %struct.db_export** %7, align 8
  %73 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %74 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.dso*, %struct.dso** %13, align 8
  %77 = call i32 @db_export__symbol(%struct.db_export* %72, %struct.TYPE_7__* %75, %struct.dso* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %98

82:                                               ; preds = %67
  %83 = load i64*, i64** %14, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %10, align 8
  store i64 %84, i64* %85, align 8
  %86 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %87 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.addr_location*, %struct.addr_location** %8, align 8
  %90 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %88, %93
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %82, %62
  br label %97

97:                                               ; preds = %96, %5
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %80, %33
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @db_export__dso(%struct.db_export*, %struct.dso*, i32) #1

declare dso_local %struct.TYPE_7__* @symbol__new(i64, i32, i32, i32, i8*) #1

declare dso_local i32 @dso__insert_symbol(%struct.dso*, %struct.TYPE_7__*) #1

declare dso_local i64* @symbol__priv(%struct.TYPE_7__*) #1

declare dso_local i32 @db_export__symbol(%struct.db_export*, %struct.TYPE_7__*, %struct.dso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
