; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_cast.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @tnum_cast(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tnum, align 8
  %5 = alloca %struct.tnum, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.tnum* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %10, 8
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = and i64 %16, %14
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = bitcast %struct.tnum* %4 to i8*
  %27 = bitcast %struct.tnum* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = bitcast %struct.tnum* %4 to { i64, i64 }*
  %29 = load { i64, i64 }, { i64, i64 }* %28, align 8
  ret { i64, i64 } %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
