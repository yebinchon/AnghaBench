; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_bitfield_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_bitfield_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@BITS_PER_U128 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, %struct.seq_file*)* @btf_bitfield_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_bitfield_seq_show(i8* %0, i64 %1, i64 %2, %struct.seq_file* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.seq_file* %3, %struct.seq_file** %8, align 8
  %14 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @BITS_ROUNDUP_BYTES(i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @memcpy(i32* %20, i8* %21, i64 %22)
  %24 = load i64, i64* @BITS_PER_U128, align 8
  %25 = load i64, i64* %12, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @BITS_PER_U128, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @btf_int128_shift(i32* %30, i64 %31, i64 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %36 = call i32 @btf_int128_print(%struct.seq_file* %34, i32* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @BITS_ROUNDUP_BYTES(i64) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

declare dso_local i32 @btf_int128_shift(i32*, i64, i64) #2

declare dso_local i32 @btf_int128_print(%struct.seq_file*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
