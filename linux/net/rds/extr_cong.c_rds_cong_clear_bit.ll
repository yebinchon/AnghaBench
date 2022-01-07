; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_clear_bit.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_clear_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_cong_map = type { i64*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"clearing congestion for %pI4:%u in map %p\0A\00", align 1
@RDS_CONG_MAP_PAGE_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_cong_clear_bit(%struct.rds_cong_map* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_cong_map*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.rds_cong_map* %0, %struct.rds_cong_map** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rds_cong_map*, %struct.rds_cong_map** %3, align 8
  %8 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %7, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ntohs(i32 %9)
  %11 = load %struct.rds_cong_map*, %struct.rds_cong_map** %3, align 8
  %12 = call i32 @rdsdebug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %10, %struct.rds_cong_map* %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @be16_to_cpu(i32 %13)
  %15 = load i64, i64* @RDS_CONG_MAP_PAGE_BITS, align 8
  %16 = udiv i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @be16_to_cpu(i32 %17)
  %19 = load i64, i64* @RDS_CONG_MAP_PAGE_BITS, align 8
  %20 = urem i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.rds_cong_map*, %struct.rds_cong_map** %3, align 8
  %23 = getelementptr inbounds %struct.rds_cong_map, %struct.rds_cong_map* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @clear_bit_le(i64 %21, i8* %28)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32*, i32, %struct.rds_cong_map*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @clear_bit_le(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
