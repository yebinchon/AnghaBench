; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_basic_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_basic_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_basic_entry = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"Invalid AUX trace basic entry [%#08zx]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [113 x i8] c"    [%#08zx] Basic   Def:%04x Inst:%#04x %c%c%c%c AS:%d ASN:%#04x IA:%#018llx\0A\09\09CL:%d HPP:%#018llx GPP:%#018llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.hws_basic_entry*)* @s390_cpumsf_basic_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_basic_show(i8* %0, i64 %1, %struct.hws_basic_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hws_basic_entry*, align 8
  %8 = alloca %struct.hws_basic_entry*, align 8
  %9 = alloca %struct.hws_basic_entry, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hws_basic_entry* %2, %struct.hws_basic_entry** %7, align 8
  %11 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  store %struct.hws_basic_entry* %11, %struct.hws_basic_entry** %8, align 8
  %12 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  %13 = bitcast %struct.hws_basic_entry* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = call i8* @be64toh(i64 %14)
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = call i32 @memset(%struct.hws_basic_entry* %9, i32 0, i32 96)
  %18 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  %19 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @be16toh(i32 %20)
  %22 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = and i64 %23, 65535
  %25 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = lshr i64 %26, 30
  %28 = and i64 %27, 3
  %29 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = lshr i64 %30, 32
  %32 = and i64 %31, 1
  %33 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = lshr i64 %34, 33
  %36 = and i64 %35, 3
  %37 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 4
  store i64 %36, i64* %37, align 8
  %38 = load i64, i64* %10, align 8
  %39 = lshr i64 %38, 35
  %40 = and i64 %39, 1
  %41 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 5
  store i64 %40, i64* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = lshr i64 %42, 36
  %44 = and i64 %43, 1
  %45 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 6
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = lshr i64 %46, 37
  %48 = and i64 %47, 1
  %49 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 7
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* %10, align 8
  %51 = lshr i64 %50, 40
  %52 = and i64 %51, 15
  %53 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  %55 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @be64toh(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 9
  store i64 %58, i64* %59, align 8
  %60 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  %61 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @be64toh(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 10
  store i64 %64, i64* %65, align 8
  %66 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %7, align 8
  %67 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @be64toh(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 11
  store i64 %70, i64* %71, align 8
  store %struct.hws_basic_entry* %9, %struct.hws_basic_entry** %8, align 8
  %72 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %73 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %3
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %77)
  store i32 0, i32* %4, align 4
  br label %136

79:                                               ; preds = %3
  %80 = load i32, i32* @stdout, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %84 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %87 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %90 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 84, i32 32
  %95 = trunc i32 %94 to i8
  %96 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %97 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 87, i32 32
  %102 = trunc i32 %101 to i8
  %103 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %104 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 80, i32 32
  %109 = trunc i32 %108 to i8
  %110 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %111 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 73, i32 32
  %116 = trunc i32 %115 to i8
  %117 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %118 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %121 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %124 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %127 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %130 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %129, i32 0, i32 11
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %8, align 8
  %133 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @color_fprintf(i32 %80, i8* %81, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %85, i64 %88, i8 signext %95, i8 signext %102, i8 signext %109, i8 signext %116, i64 %119, i64 %122, i64 %125, i64 %128, i64 %131, i64 %134)
  store i32 1, i32* %4, align 4
  br label %136

136:                                              ; preds = %79, %76
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @be64toh(i64) #1

declare dso_local i32 @memset(%struct.hws_basic_entry*, i32, i32) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @color_fprintf(i32, i8*, i8*, i64, i32, i64, i8 signext, i8 signext, i8 signext, i8 signext, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
