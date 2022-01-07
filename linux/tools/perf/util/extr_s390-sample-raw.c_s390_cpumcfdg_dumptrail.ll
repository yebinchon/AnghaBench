; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_s390_cpumcfdg_dumptrail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_s390_cpumcfdg_dumptrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_trailer_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i8*, i8*, i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"    [%#08zx] Trailer:%c%c%c%c%c Cfvn:%d Csvn:%d Speed:%d TOD:%#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\09\091:%lx 2:%lx 3:%lx TOD-Base:%#llx Type:%x\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.cf_trailer_entry*)* @s390_cpumcfdg_dumptrail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_cpumcfdg_dumptrail(i8* %0, i64 %1, %struct.cf_trailer_entry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cf_trailer_entry*, align 8
  %7 = alloca %struct.cf_trailer_entry, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cf_trailer_entry* %2, %struct.cf_trailer_entry** %6, align 8
  %8 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %9 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %8, i32 0, i32 16
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @be64_to_cpu(i8* %10)
  %12 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 16
  store i8* %11, i8** %12, align 8
  %13 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %14 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %13, i32 0, i32 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @be16_to_cpu(i8* %15)
  %17 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 8
  store i8* %16, i8** %17, align 8
  %18 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %19 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %18, i32 0, i32 7
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @be16_to_cpu(i8* %20)
  %22 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 7
  store i8* %21, i8** %22, align 8
  %23 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @be32_to_cpu(i8* %25)
  %27 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 6
  store i8* %26, i8** %27, align 8
  %28 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %29 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @be64_to_cpu(i8* %30)
  %32 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %34 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @be64_to_cpu(i8* %35)
  %37 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  %38 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %39 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @be64_to_cpu(i8* %40)
  %42 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %44 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @be64_to_cpu(i8* %45)
  %47 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %49 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @be64_to_cpu(i8* %50)
  %52 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %54 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @be16_to_cpu(i8* %55)
  %57 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %59 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %58, i32 0, i32 15
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @be16_to_cpu(i8* %60)
  %62 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 15
  store i8* %61, i8** %62, align 8
  %63 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %6, align 8
  %64 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %63, i32 0, i32 14
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @be32_to_cpu(i8* %65)
  %67 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 14
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @stdout, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 13
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 84, i32 32
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 83, i32 32
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 11
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 77, i32 32
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 10
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 67, i32 32
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 76, i32 32
  %100 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 7
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i32, i8*, i8*, i64, i8, i8, i8, i8, ...) @color_fprintf(i32 %68, i8* %69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %70, i8 signext %76, i8 signext %82, i8 signext %88, i8 signext %94, i32 %99, i8* %101, i8* %103, i8* %105, i8* %107)
  %109 = load i32, i32* @stdout, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i8
  %117 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %118 to i8
  %120 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %121 to i8
  %123 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %7, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i8
  %126 = call i32 (i32, i8*, i8*, i64, i8, i8, i8, i8, ...) @color_fprintf(i32 %109, i8* %110, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %113, i8 signext %116, i8 signext %119, i8 signext %122, i8 signext %125)
  ret void
}

declare dso_local i8* @be64_to_cpu(i8*) #1

declare dso_local i8* @be16_to_cpu(i8*) #1

declare dso_local i8* @be32_to_cpu(i8*) #1

declare dso_local i32 @color_fprintf(i32, i8*, i8*, i64, i8 signext, i8 signext, i8 signext, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
