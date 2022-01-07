; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { i32 }
%struct.hws_basic_entry = type { i32 }
%struct.hws_diag_entry = type { i32 }
%struct.hws_trailer_entry = type { i16, i16 }

@PERF_COLOR_BLUE = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c". ... s390 AUX data: size %zu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Invalid AUX trace data block size:%zu (type:%d bsdes:%hd dsdes:%hd)\0A\00", align 1
@S390_CPUMSF_PAGESZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s390_cpumsf*, i8*, i64)* @s390_cpumsf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_cpumsf_dump(%struct.s390_cpumsf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.s390_cpumsf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hws_basic_entry*, align 8
  %9 = alloca %struct.hws_diag_entry*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca %struct.hws_trailer_entry, align 2
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** @PERF_COLOR_BLUE, align 8
  store i8* %14, i8** %7, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* @stdout, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @color_fprintf(i32 %15, i8* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %20 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @s390_cpumsf_validate(i32 %21, i8* %22, i64 %23, i16* %10, i16* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %4, align 8
  %29 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i16, i16* %10, align 2
  %32 = load i16, i16* %11, align 2
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %27, i32 %30, i16 zeroext %31, i16 zeroext %32)
  br label %109

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %108, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = bitcast i8* %42 to %struct.hws_basic_entry*
  store %struct.hws_basic_entry* %43, %struct.hws_basic_entry** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %47 = call i64 @s390_cpumsf_basic_show(i8* %44, i64 %45, %struct.hws_basic_entry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i16, i16* %10, align 2
  %51 = zext i16 %50 to i64
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %12, align 8
  br label %55

54:                                               ; preds = %39
  br label %109

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = bitcast i8* %58 to %struct.hws_diag_entry*
  store %struct.hws_diag_entry* %59, %struct.hws_diag_entry** %9, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.hws_diag_entry*, %struct.hws_diag_entry** %9, align 8
  %63 = call i64 @s390_cpumsf_diag_show(i8* %60, i64 %61, %struct.hws_diag_entry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i64
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %12, align 8
  br label %71

70:                                               ; preds = %55
  br label %109

71:                                               ; preds = %65
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %11, align 2
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = trunc i32 %76 to i16
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @s390_cpumsf_reached_trailer(i16 zeroext %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %108, label %81

81:                                               ; preds = %71
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* @S390_CPUMSF_PAGESZ, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* @S390_CPUMSF_PAGESZ, align 8
  %86 = sub i64 %85, 1
  %87 = xor i64 %86, -1
  %88 = and i64 %84, %87
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub i64 %89, 4
  store i64 %90, i64* %12, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = call i32 @memcpy(%struct.hws_trailer_entry* %13, i8* %93, i32 4)
  %95 = load i16, i16* %10, align 2
  %96 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %13, i32 0, i32 0
  store i16 %95, i16* %96, align 2
  %97 = load i16, i16* %11, align 2
  %98 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %13, i32 0, i32 1
  store i16 %97, i16* %98, align 2
  %99 = load i8*, i8** %7, align 8
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @s390_cpumsf_trailer_show(i8* %99, i64 %100, %struct.hws_trailer_entry* %13)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %12, align 8
  br label %107

106:                                              ; preds = %81
  br label %109

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %71
  br label %35

109:                                              ; preds = %26, %54, %70, %106, %35
  ret void
}

declare dso_local i32 @color_fprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @s390_cpumsf_validate(i32, i8*, i64, i16*, i16*) #1

declare dso_local i32 @pr_err(i8*, i64, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i64 @s390_cpumsf_basic_show(i8*, i64, %struct.hws_basic_entry*) #1

declare dso_local i64 @s390_cpumsf_diag_show(i8*, i64, %struct.hws_diag_entry*) #1

declare dso_local i32 @s390_cpumsf_reached_trailer(i16 zeroext, i64) #1

declare dso_local i32 @memcpy(%struct.hws_trailer_entry*, i8*, i32) #1

declare dso_local i64 @s390_cpumsf_trailer_show(i8*, i64, %struct.hws_trailer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
