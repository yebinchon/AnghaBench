; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_mul.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tnum_mul(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.tnum, align 4
  %4 = alloca %struct.tnum, align 4
  %5 = alloca %struct.tnum, align 4
  %6 = alloca %struct.tnum, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tnum, align 4
  %9 = alloca %struct.tnum, align 4
  %10 = bitcast %struct.tnum* %4 to i64*
  store i64 %0, i64* %10, align 4
  %11 = bitcast %struct.tnum* %5 to i64*
  store i64 %1, i64* %11, align 4
  %12 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @TNUM(i32 %17, i32 0)
  %19 = bitcast %struct.tnum* %9 to i64*
  store i64 %18, i64* %19, align 4
  %20 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %23, %25
  %27 = bitcast %struct.tnum* %9 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i64 @hma(i64 %28, i32 %21, i32 %26)
  %30 = bitcast %struct.tnum* %8 to i64*
  store i64 %29, i64* %30, align 4
  %31 = bitcast %struct.tnum* %6 to i8*
  %32 = bitcast %struct.tnum* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %struct.tnum* %6 to i64*
  %38 = load i64, i64* %37, align 4
  %39 = call i64 @hma(i64 %38, i32 %34, i32 %36)
  %40 = bitcast %struct.tnum* %3 to i64*
  store i64 %39, i64* %40, align 4
  %41 = bitcast %struct.tnum* %3 to i64*
  %42 = load i64, i64* %41, align 4
  ret i64 %42
}

declare dso_local i64 @hma(i64, i32, i32) #1

declare dso_local i64 @TNUM(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
