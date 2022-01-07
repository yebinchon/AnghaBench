; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_copy_file.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_copy_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i64, i64 }

@empty_data = common dso_local global %struct.data zeroinitializer, align 8
@TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading file into data: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Overflow reading file into data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @data_copy_file(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.data, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast %struct.data* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.data* @empty_data to i8*), i64 16, i1 false)
  %11 = load i32, i32* @TYPE_NONE, align 4
  %12 = bitcast %struct.data* %3 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call { i64, i64 } @data_add_marker(i64 %14, i64 %16, i32 %11, i32* null)
  %18 = bitcast %struct.data* %6 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %17, 0
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %17, 1
  store i64 %22, i64* %21, align 8
  %23 = bitcast %struct.data* %3 to i8*
  %24 = bitcast %struct.data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  br label %25

25:                                               ; preds = %85, %2
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @feof(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %31, %32
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  br i1 %35, label %36, label %90

36:                                               ; preds = %34
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i64 4096, i64* %7, align 8
  br label %45

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %41, %43
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %40, %39
  %46 = load i64, i64* %7, align 8
  %47 = bitcast %struct.data* %3 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call { i64, i64 } @data_grow_for(i64 %49, i64 %51, i64 %46)
  %53 = bitcast %struct.data* %9 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i64, i64 } %52, 0
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i64, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = bitcast %struct.data* %3 to i8*
  %59 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %61, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i64 @fread(i64 %64, i32 1, i64 %65, i32* %66)
  store i64 %67, i64* %8, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @ferror(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %45
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @strerror(i32 %72)
  %74 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %45
  %76 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, %86
  store i64 %89, i64* %87, align 8
  br label %25

90:                                               ; preds = %34
  %91 = bitcast %struct.data* %3 to { i64, i64 }*
  %92 = load { i64, i64 }, { i64, i64 }* %91, align 8
  ret { i64, i64 } %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i64 } @data_add_marker(i64, i64, i32, i32*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local { i64, i64 } @data_grow_for(i64, i64, i64) #2

declare dso_local i64 @fread(i64, i32, i64, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
