; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdarray = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdarray__filter(%struct.fdarray* %0, i16 signext %1, void (%struct.fdarray*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fdarray*, align 8
  %7 = alloca i16, align 2
  %8 = alloca void (%struct.fdarray*, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fdarray* %0, %struct.fdarray** %6, align 8
  store i16 %1, i16* %7, align 2
  store void (%struct.fdarray*, i32, i8*)* %2, void (%struct.fdarray*, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %13 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %89

17:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %82, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %21 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %18
  %25 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %26 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* %7, align 2
  %35 = sext i16 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %24
  %39 = load void (%struct.fdarray*, i32, i8*)*, void (%struct.fdarray*, i32, i8*)** %8, align 8
  %40 = icmp ne void (%struct.fdarray*, i32, i8*)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load void (%struct.fdarray*, i32, i8*)*, void (%struct.fdarray*, i32, i8*)** %8, align 8
  %43 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %9, align 8
  call void %42(%struct.fdarray* %43, i32 %44, i8* %45)
  br label %46

46:                                               ; preds = %41, %38
  br label %82

47:                                               ; preds = %24
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %53 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %59 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = bitcast %struct.TYPE_2__* %57 to i8*
  %65 = bitcast %struct.TYPE_2__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %64, i8* align 2 %65, i64 2, i1 false)
  %66 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %67 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %74 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %51, %47
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %46
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %18

85:                                               ; preds = %18
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.fdarray*, %struct.fdarray** %6, align 8
  %88 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 %86, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %16
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
