; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_validate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_basic_entry = type { i32 }
%struct.hws_trailer_entry = type { i32, i32 }

@S390_CPUMSF_PAGESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i16*, i16*)* @s390_cpumsf_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_validate(i32 %0, i8* %1, i64 %2, i16* %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca %struct.hws_basic_entry*, align 8
  %13 = alloca %struct.hws_trailer_entry*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i16* %3, i16** %10, align 8
  store i16* %4, i16** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.hws_basic_entry*
  store %struct.hws_basic_entry* %15, %struct.hws_basic_entry** %12, align 8
  %16 = load i16*, i16** %10, align 8
  store i16 0, i16* %16, align 2
  %17 = load i16*, i16** %11, align 8
  store i16 0, i16* %17, align 2
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @S390_CPUMSF_PAGESZ, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = and i64 %18, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

25:                                               ; preds = %5
  %26 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %12, align 8
  %27 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be16toh(i32 %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %77

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @S390_CPUMSF_PAGESZ, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -8
  %38 = bitcast i8* %37 to %struct.hws_trailer_entry*
  store %struct.hws_trailer_entry* %38, %struct.hws_trailer_entry** %13, align 8
  %39 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %13, align 8
  %40 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16toh(i32 %41)
  %43 = trunc i32 %42 to i16
  %44 = load i16*, i16** %10, align 8
  store i16 %43, i16* %44, align 2
  %45 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %13, align 8
  %46 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be16toh(i32 %47)
  %49 = trunc i32 %48 to i16
  %50 = load i16*, i16** %11, align 8
  store i16 %49, i16* %50, align 2
  %51 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %13, align 8
  %52 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %32
  %56 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %13, align 8
  %57 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %74 [
    i32 2097, label %62
    i32 2098, label %62
    i32 2817, label %65
    i32 2818, label %65
    i32 2827, label %68
    i32 2828, label %68
    i32 2964, label %71
    i32 2965, label %71
  ]

62:                                               ; preds = %60, %60
  %63 = load i16*, i16** %11, align 8
  store i16 64, i16* %63, align 2
  %64 = load i16*, i16** %10, align 8
  store i16 32, i16* %64, align 2
  br label %75

65:                                               ; preds = %60, %60
  %66 = load i16*, i16** %11, align 8
  store i16 74, i16* %66, align 2
  %67 = load i16*, i16** %10, align 8
  store i16 32, i16* %67, align 2
  br label %75

68:                                               ; preds = %60, %60
  %69 = load i16*, i16** %11, align 8
  store i16 85, i16* %69, align 2
  %70 = load i16*, i16** %10, align 8
  store i16 32, i16* %70, align 2
  br label %75

71:                                               ; preds = %60, %60
  %72 = load i16*, i16** %11, align 8
  store i16 112, i16* %72, align 2
  %73 = load i16*, i16** %10, align 8
  store i16 32, i16* %73, align 2
  br label %75

74:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %77

75:                                               ; preds = %71, %68, %65, %62
  br label %76

76:                                               ; preds = %75, %55, %32
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %74, %31, %24
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
