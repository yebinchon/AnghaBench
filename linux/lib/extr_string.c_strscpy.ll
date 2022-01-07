; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string.c_strscpy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string.c_strscpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.word_at_a_time = type { i32 }

@WORD_AT_A_TIME_CONSTANTS = common dso_local global %struct.word_at_a_time zeroinitializer, align 4
@INT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strscpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.word_at_a_time, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast %struct.word_at_a_time* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.word_at_a_time* @WORD_AT_A_TIME_CONSTANTS to i8*), i64 4, i1 false)
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @INT_MAX, align 8
  %21 = icmp ugt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %3
  %26 = load i64, i64* @E2BIG, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %112

28:                                               ; preds = %18
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = or i64 %30, %32
  %34 = and i64 %33, 7
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i64, i64* %9, align 8
  %40 = icmp uge i64 %39, 8
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = call i64 @read_word_at_a_time(i8* %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @has_zero(i64 %46, i64* %12, %struct.word_at_a_time* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %41
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i64 @prep_zero_mask(i64 %50, i64 %51, %struct.word_at_a_time* %8)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @create_zero_mask(i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @zero_bytemask(i64 %56)
  %58 = and i64 %55, %57
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = bitcast i8* %61 to i64*
  store i64 %58, i64* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i64 @find_zero(i64 %64)
  %66 = add nsw i64 %63, %65
  store i64 %66, i64* %4, align 8
  br label %112

67:                                               ; preds = %41
  %68 = load i64, i64* %11, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = bitcast i8* %71 to i64*
  store i64 %68, i64* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 8
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, 8
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub i64 %77, 8
  store i64 %78, i64* %9, align 8
  br label %38

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %13, align 1
  %88 = load i8, i8* %13, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8 %88, i8* %91, align 1
  %92 = load i8, i8* %13, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %4, align 8
  br label %112

96:                                               ; preds = %83
  %97 = load i64, i64* %10, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %7, align 8
  br label %80

101:                                              ; preds = %80
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %10, align 8
  %107 = sub nsw i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %104, %101
  %110 = load i64, i64* @E2BIG, align 8
  %111 = sub nsw i64 0, %110
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %109, %94, %49, %25
  %113 = load i64, i64* %4, align 8
  ret i64 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i64 @read_word_at_a_time(i8*) #2

declare dso_local i64 @has_zero(i64, i64*, %struct.word_at_a_time*) #2

declare dso_local i64 @prep_zero_mask(i64, i64, %struct.word_at_a_time*) #2

declare dso_local i64 @create_zero_mask(i64) #2

declare dso_local i64 @zero_bytemask(i64) #2

declare dso_local i64 @find_zero(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
