; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_performance_shuffle.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_performance_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_group = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*)* @performance_shuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @performance_shuffle(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.partition_group, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca %struct.partition_group, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @partition_struct(i32* %18, i64 %19, %struct.partition_group* %17, i64* %11)
  %21 = load i64, i64* %11, align 8
  %22 = sub i64 %21, 1
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %46, %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ranval(i32* %27)
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  %31 = urem i64 %28, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %32
  %34 = bitcast %struct.partition_group* %13 to i8*
  %35 = bitcast %struct.partition_group* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %36
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %38
  %40 = bitcast %struct.partition_group* %37 to i8*
  %41 = bitcast %struct.partition_group* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %42
  %44 = bitcast %struct.partition_group* %43 to i8*
  %45 = bitcast %struct.partition_group* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 8, i1 false)
  br label %46

46:                                               ; preds = %26
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %7, align 8
  br label %23

49:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %115, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %55
  %57 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %59
  %61 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %58, %62
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %111, %54
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %17, i64 %68
  %70 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %67, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %66
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @DECL_BIT_FIELD_TYPE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %111

82:                                               ; preds = %74
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @ranval(i32* %83)
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  %87 = urem i64 %84, %86
  store i64 %87, i64* %12, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @DECL_BIT_FIELD_TYPE(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %111

95:                                               ; preds = %82
  %96 = load i32*, i32** %4, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %4, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %95, %94, %81
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %7, align 8
  br label %66

114:                                              ; preds = %66
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %8, align 8
  br label %50

118:                                              ; preds = %50
  %119 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @partition_struct(i32*, i64, %struct.partition_group*, i64*) #2

declare dso_local i64 @ranval(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @DECL_BIT_FIELD_TYPE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
