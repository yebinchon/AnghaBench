; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_int_is_regular.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_int_is_regular.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_type*)* @btf_type_int_is_regular to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_type_int_is_regular(%struct.btf_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.btf_type* %0, %struct.btf_type** %3, align 8
  %7 = load %struct.btf_type*, %struct.btf_type** %3, align 8
  %8 = call i32 @btf_type_int(%struct.btf_type* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @BTF_INT_BITS(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BITS_ROUNDUP_BYTES(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @BITS_PER_BYTE_MASKED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @BTF_INT_OFFSET(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 4
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %16, %1
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %36, %32, %28, %24, %20
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @btf_type_int(%struct.btf_type*) #1

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i32 @BITS_ROUNDUP_BYTES(i32) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
