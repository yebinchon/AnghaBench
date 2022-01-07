; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_trailer_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_trailer_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_trailer_entry = type { i32, i64, i64, i64, i32, i32, i32, i32*, i32, i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid AUX trace trailer entry [%#08zx]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"    [%#08zx] Trailer %c%c%c bsdes:%d dsdes:%d Overflow:%lld Time:%#llx\0A\09\09C:%d TOD:%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.hws_trailer_entry*)* @s390_cpumsf_trailer_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_trailer_show(i8* %0, i64 %1, %struct.hws_trailer_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hws_trailer_entry*, align 8
  %8 = alloca %struct.hws_trailer_entry, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hws_trailer_entry* %2, %struct.hws_trailer_entry** %7, align 8
  %10 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %11 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @be64toh(i32 %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %9, align 8
  %15 = call i32 @memset(%struct.hws_trailer_entry* %8, i32 0, i32 80)
  %16 = load i64, i64* %9, align 8
  %17 = lshr i64 %16, 63
  %18 = and i64 %17, 1
  %19 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = lshr i64 %20, 62
  %22 = and i64 %21, 1
  %23 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = lshr i64 %24, 61
  %26 = and i64 %25, 1
  %27 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 3
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %9, align 8
  %29 = lshr i64 %28, 16
  %30 = and i64 %29, 65535
  %31 = call i8* @be16toh(i64 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 4
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = and i64 %34, 65535
  %36 = call i8* @be16toh(i64 %35)
  %37 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 9
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 10
  %39 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %40 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(i32* %38, i32 %41, i32 4)
  %43 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %44 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be64toh(i32 %45)
  %47 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 5
  store i32 %46, i32* %47, align 4
  %48 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %49 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @be64toh(i32 %52)
  %54 = ashr i32 %53, 63
  %55 = and i32 %54, 1
  %56 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %58 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @be64toh(i32 %59)
  %61 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %8, i32 0, i32 8
  store i32 %60, i32* %61, align 8
  store %struct.hws_trailer_entry* %8, %struct.hws_trailer_entry** %7, align 8
  %62 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %63 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %3
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %68)
  store i32 0, i32* %4, align 4
  br label %116

70:                                               ; preds = %3
  %71 = load i32, i32* @stdout, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %75 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 70, i32 32
  %80 = sitofp i32 %79 to float
  %81 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %82 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 65, i32 32
  %87 = trunc i32 %86 to i8
  %88 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %89 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 84, i32 32
  %94 = trunc i32 %93 to i8
  %95 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %96 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %99 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %98, i32 0, i32 9
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %102 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %105 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %106 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @trailer_timestamp(%struct.hws_trailer_entry* %104, i32 %107)
  %109 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %110 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %113 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @color_fprintf(i32 %71, i8* %72, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %73, float %80, i8 signext %87, i8 signext %94, i32 %97, i8* %100, i32 %103, i32 %108, i32 %111, i32 %114)
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %70, %67
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @memset(%struct.hws_trailer_entry*, i32, i32) #1

declare dso_local i8* @be16toh(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @color_fprintf(i32, i8*, i8*, i64, float, i8 signext, i8 signext, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @trailer_timestamp(%struct.hws_trailer_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
