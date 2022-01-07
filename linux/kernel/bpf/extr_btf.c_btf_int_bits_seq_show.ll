; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_bits_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_bits_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.seq_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf*, %struct.btf_type*, i8*, i64, %struct.seq_file*)* @btf_int_bits_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_int_bits_seq_show(%struct.btf* %0, %struct.btf_type* %1, i8* %2, i64 %3, %struct.seq_file* %4) #0 {
  %6 = alloca %struct.btf*, align 8
  %7 = alloca %struct.btf_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.seq_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.btf* %0, %struct.btf** %6, align 8
  store %struct.btf_type* %1, %struct.btf_type** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.seq_file* %4, %struct.seq_file** %10, align 8
  %14 = load %struct.btf_type*, %struct.btf_type** %7, align 8
  %15 = call i32 @btf_type_int(%struct.btf_type* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @BTF_INT_BITS(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @BTF_INT_OFFSET(i32 %19)
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @BITS_ROUNDDOWN_BYTES(i64 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr i8, i8* %24, i64 %25
  store i8* %26, i8** %8, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @BITS_PER_BYTE_MASKED(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %10, align 8
  %33 = call i32 @btf_bitfield_seq_show(i8* %29, i64 %30, i64 %31, %struct.seq_file* %32)
  ret void
}

declare dso_local i32 @btf_type_int(%struct.btf_type*) #1

declare dso_local i64 @BTF_INT_BITS(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

declare dso_local i32 @BITS_ROUNDDOWN_BYTES(i64) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i64) #1

declare dso_local i32 @btf_bitfield_seq_show(i8*, i64, i64, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
