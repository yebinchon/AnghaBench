; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_get_trailer_time.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_get_trailer_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_trailer_entry = type { i32, i64, i32* }

@S390_CPUMSF_PAGESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @get_trailer_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_trailer_time(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hws_trailer_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @S390_CPUMSF_PAGESZ, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = getelementptr inbounds i8, i8* %11, i64 -24
  %13 = bitcast i8* %12 to %struct.hws_trailer_entry*
  store %struct.hws_trailer_entry* %13, %struct.hws_trailer_entry** %4, align 8
  %14 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %4, align 8
  %15 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be64toh(i32 %18)
  %20 = ashr i32 %19, 63
  %21 = and i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be64toh(i32 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %47

32:                                               ; preds = %1
  %33 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @trailer_timestamp(%struct.hws_trailer_entry* %33, i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = lshr i64 %38, 9
  %40 = mul i64 %39, 125
  %41 = load i64, i64* %5, align 8
  %42 = and i64 %41, 511
  %43 = mul i64 %42, 125
  %44 = lshr i64 %43, 9
  %45 = add i64 %40, %44
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i32 @be64toh(i32) #1

declare dso_local i64 @trailer_timestamp(%struct.hws_trailer_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
