; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_copy_escape_string.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_data.c_data_copy_escape_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i8*, i32 }

@empty_data = common dso_local global i32 0, align 4
@TYPE_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i8*, i32 } @data_copy_escape_string(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.data, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.data, align 8
  %9 = alloca %struct.data, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @empty_data, align 4
  %12 = load i32, i32* @TYPE_STRING, align 4
  %13 = call { i8*, i32 } @data_add_marker(i32 %11, i32 %12, i32* null)
  %14 = bitcast %struct.data* %8 to { i8*, i32 }*
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i8*, i32 } %13, 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i8*, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.data* %3 to i8*
  %20 = bitcast %struct.data* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = bitcast %struct.data* %3 to { i8*, i32 }*
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %23, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call { i8*, i32 } @data_grow_for(i8* %25, i32 %27, i32 %22)
  %29 = bitcast %struct.data* %9 to { i8*, i32 }*
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %29, i32 0, i32 0
  %31 = extractvalue { i8*, i32 } %28, 0
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %29, i32 0, i32 1
  %33 = extractvalue { i8*, i32 } %28, 1
  store i32 %33, i32* %32, align 8
  %34 = bitcast %struct.data* %3 to i8*
  %35 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %55, %2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %10, align 1
  %49 = load i8, i8* %10, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i8*, i8** %4, align 8
  %54 = call signext i8 @get_escape_char(i8* %53, i32* %6)
  store i8 %54, i8* %10, align 1
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i8, i8* %10, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 %56, i8* %62, align 1
  br label %38

63:                                               ; preds = %38
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds %struct.data, %struct.data* %3, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 0, i8* %69, align 1
  %70 = bitcast %struct.data* %3 to { i8*, i32 }*
  %71 = load { i8*, i32 }, { i8*, i32 }* %70, align 8
  ret { i8*, i32 } %71
}

declare dso_local { i8*, i32 } @data_add_marker(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i32 } @data_grow_for(i8*, i32, i32) #1

declare dso_local signext i8 @get_escape_char(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
