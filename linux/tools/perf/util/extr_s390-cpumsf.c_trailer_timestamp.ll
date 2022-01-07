; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_trailer_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_trailer_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_trailer_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hws_trailer_entry*, i32)* @trailer_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @trailer_timestamp(%struct.hws_trailer_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.hws_trailer_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hws_trailer_entry* %0, %struct.hws_trailer_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %3, align 8
  %7 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @memcpy(i64* %5, i32* %11, i32 8)
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @be64toh(i64 %13)
  ret i64 %14
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @be64toh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
