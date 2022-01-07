; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_test_bit.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_test_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_cong_map = type { i64* }

@RDS_CONG_MAP_PAGE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_cong_map*, i32)* @rds_cong_test_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_cong_test_bit(%struct.rds_cong_map* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_cong_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rds_cong_map* %0, %struct.rds_cong_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @be16_to_cpu(i32 %7)
  %9 = load i64, i64* @RDS_CONG_MAP_PAGE_BITS, align 8
  %10 = udiv i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @be16_to_cpu(i32 %11)
  %13 = load i64, i64* @RDS_CONG_MAP_PAGE_BITS, align 8
  %14 = urem i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.rds_cong_map*, %struct.rds_cong_map** %3, align 8
  %17 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @test_bit_le(i64 %15, i8* %22)
  ret i32 %23
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @test_bit_le(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
