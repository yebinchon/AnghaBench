; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_reciprocal_div.c_reciprocal_value.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_reciprocal_div.c_reciprocal_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reciprocal_value = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @reciprocal_value(i32 %0) #0 {
  %2 = alloca %struct.reciprocal_value, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca { i64, i32 }, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @fls(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %12, %14
  %16 = mul i64 4294967296, %15
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @do_div(i64 %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.reciprocal_value, %struct.reciprocal_value* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @min(i32 %25, i32 1)
  %27 = getelementptr inbounds %struct.reciprocal_value, %struct.reciprocal_value* %2, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @max(i32 %29, i32 0)
  %31 = getelementptr inbounds %struct.reciprocal_value, %struct.reciprocal_value* %2, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = bitcast { i64, i32 }* %6 to i8*
  %33 = bitcast %struct.reciprocal_value* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = load { i64, i32 }, { i64, i32 }* %6, align 8
  ret { i64, i32 } %34
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
