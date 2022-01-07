; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_cmp_sevent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_cmp_sevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sevent = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_sevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_sevent(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sevent*, align 8
  %7 = alloca %struct.sevent*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sevent*
  store %struct.sevent* %10, %struct.sevent** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sevent*
  store %struct.sevent* %12, %struct.sevent** %7, align 8
  %13 = load %struct.sevent*, %struct.sevent** %6, align 8
  %14 = getelementptr inbounds %struct.sevent, %struct.sevent* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.sevent*, %struct.sevent** %7, align 8
  %21 = getelementptr inbounds %struct.sevent, %struct.sevent* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %19, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.sevent*, %struct.sevent** %6, align 8
  %30 = getelementptr inbounds %struct.sevent, %struct.sevent* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.sevent*, %struct.sevent** %7, align 8
  %37 = getelementptr inbounds %struct.sevent, %struct.sevent* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sub nsw i32 %35, %42
  store i32 %43, i32* %3, align 4
  br label %75

44:                                               ; preds = %2
  %45 = load %struct.sevent*, %struct.sevent** %6, align 8
  %46 = getelementptr inbounds %struct.sevent, %struct.sevent* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.sevent*, %struct.sevent** %7, align 8
  %51 = getelementptr inbounds %struct.sevent, %struct.sevent* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.sevent*, %struct.sevent** %6, align 8
  %56 = getelementptr inbounds %struct.sevent, %struct.sevent* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sevent*, %struct.sevent** %7, align 8
  %59 = getelementptr inbounds %struct.sevent, %struct.sevent* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @strcmp(i64 %57, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %49, %44
  %68 = load %struct.sevent*, %struct.sevent** %6, align 8
  %69 = getelementptr inbounds %struct.sevent, %struct.sevent* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sevent*, %struct.sevent** %7, align 8
  %72 = getelementptr inbounds %struct.sevent, %struct.sevent* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @strcmp(i64 %70, i64 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %64, %28
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
