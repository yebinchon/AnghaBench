; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov.c_raid6_datap_recov_intx1.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov.c_raid6_datap_recov_intx1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@raid6_gfmul = common dso_local global i64** null, align 8
@raid6_gfinv = common dso_local global i64* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i8**)* @raid6_datap_recov_intx1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid6_datap_recov_intx1(i32 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %13 = load i8**, i8*** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %13, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %9, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %10, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %11, align 8
  %33 = load i64, i64* @raid6_empty_zero_page, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = bitcast i64* %39 to i8*
  %41 = load i8**, i8*** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  store i8* %40, i8** %45, align 8
  %46 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = call i32 %46(i32 %47, i64 %48, i8** %49)
  %51 = load i64*, i64** %11, align 8
  %52 = bitcast i64* %51 to i8*
  %53 = load i8**, i8*** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  store i8* %52, i8** %56, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = bitcast i64* %57 to i8*
  %59 = load i8**, i8*** %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  store i8* %58, i8** %63, align 8
  %64 = load i64**, i64*** @raid6_gfmul, align 8
  %65 = load i64*, i64** @raid6_gfinv, align 8
  %66 = load i64*, i64** @raid6_gfexp, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %65, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64*, i64** %64, i64 %72
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %12, align 8
  br label %75

75:                                               ; preds = %79, %4
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %6, align 8
  %78 = icmp ne i64 %76, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i64*, i64** %12, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = xor i64 %82, %84
  %86 = getelementptr inbounds i64, i64* %80, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %9, align 8
  %91 = load i64, i64* %89, align 8
  %92 = xor i64 %91, %87
  store i64 %92, i64* %89, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %10, align 8
  %95 = load i64*, i64** %11, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %11, align 8
  br label %75

97:                                               ; preds = %75
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
