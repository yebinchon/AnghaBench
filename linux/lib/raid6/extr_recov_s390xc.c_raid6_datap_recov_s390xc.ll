; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov_s390xc.c_raid6_datap_recov_s390xc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov_s390xc.c_raid6_datap_recov_s390xc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@raid6_gfmul = common dso_local global i64** null, align 8
@raid6_gfinv = common dso_local global i64* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i8**)* @raid6_datap_recov_s390xc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid6_datap_recov_s390xc(i32 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %9, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %10, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %11, align 8
  %34 = load i64, i64* @raid6_empty_zero_page, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %35, i8** %39, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = bitcast i64* %40 to i8*
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %41, i8** %46, align 8
  %47 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i8**, i8*** %8, align 8
  %51 = call i32 %47(i32 %48, i64 %49, i8** %50)
  %52 = load i64*, i64** %11, align 8
  %53 = bitcast i64* %52 to i8*
  %54 = load i8**, i8*** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = bitcast i64* %58 to i8*
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i64**, i64*** @raid6_gfmul, align 8
  %66 = load i64*, i64** @raid6_gfinv, align 8
  %67 = load i64*, i64** @raid6_gfexp, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %66, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64*, i64** %65, i64 %73
  %75 = load i64*, i64** %74, align 8
  store i64* %75, i64** %12, align 8
  br label %76

76:                                               ; preds = %102, %4
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %114

79:                                               ; preds = %76
  %80 = load i64*, i64** %11, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = call i32 @xor_block(i64* %80, i64* %81)
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %99, %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 256
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load i64*, i64** %12, align 8
  %88 = load i64*, i64** %11, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %87, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load i64*, i64** %9, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = call i32 @xor_block(i64* %103, i64* %104)
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 256
  store i64* %107, i64** %9, align 8
  %108 = load i64*, i64** %10, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 256
  store i64* %109, i64** %10, align 8
  %110 = load i64*, i64** %11, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 256
  store i64* %111, i64** %11, align 8
  %112 = load i64, i64* %6, align 8
  %113 = sub i64 %112, 256
  store i64 %113, i64* %6, align 8
  br label %76

114:                                              ; preds = %76
  ret void
}

declare dso_local i32 @xor_block(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
