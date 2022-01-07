; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-selftest.c_check_supported_versions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-selftest.c_check_supported_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@latest_maj = common dso_local global i32 0, align 4
@latest_min = common dso_local global i32 0, align 4
@latest_rev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_supported_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_supported_versions() #0 {
  %1 = call i32 @utf8version_is_supported(i32 7, i32 0, i32 0)
  %2 = call i32 @test(i32 %1)
  %3 = call i32 @utf8version_is_supported(i32 9, i32 0, i32 0)
  %4 = call i32 @test(i32 %3)
  %5 = load i32, i32* @latest_maj, align 4
  %6 = load i32, i32* @latest_min, align 4
  %7 = load i32, i32* @latest_rev, align 4
  %8 = call i32 @utf8version_is_supported(i32 %5, i32 %6, i32 %7)
  %9 = call i32 @test(i32 %8)
  %10 = call i32 @utf8version_is_supported(i32 13, i32 0, i32 0)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @test(i32 %13)
  %15 = call i32 @utf8version_is_supported(i32 0, i32 0, i32 0)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @test(i32 %18)
  %20 = call i32 @utf8version_is_supported(i32 -1, i32 -1, i32 -1)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @test(i32 %23)
  ret void
}

declare dso_local i32 @test(i32) #1

declare dso_local i32 @utf8version_is_supported(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
