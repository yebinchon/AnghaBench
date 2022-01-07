; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_update_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_update_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmemleak_object*)* @update_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_checksum(%struct.kmemleak_object* %0) #0 {
  %2 = alloca %struct.kmemleak_object*, align 8
  %3 = alloca i64, align 8
  store %struct.kmemleak_object* %0, %struct.kmemleak_object** %2, align 8
  %4 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %5 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = call i32 (...) @kasan_disable_current()
  %8 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %9 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %13 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @crc32(i32 0, i8* %11, i32 %14)
  %16 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %17 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = call i32 (...) @kasan_enable_current()
  %19 = load %struct.kmemleak_object*, %struct.kmemleak_object** %2, align 8
  %20 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @kasan_disable_current(...) #1

declare dso_local i64 @crc32(i32, i8*, i32) #1

declare dso_local i32 @kasan_enable_current(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
