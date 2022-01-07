; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_bg_num_gdb_meta.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_bg_num_gdb_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i64)* @ext4_bg_num_gdb_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_bg_num_gdb_meta(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %10)
  %12 = udiv i64 %9, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %14)
  %16 = mul i64 %13, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call i64 @EXT4_DESC_PER_BLOCK(%struct.super_block* %18)
  %20 = add i64 %17, %19
  %21 = sub i64 %20, 1
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, 1
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %25, %2
  store i64 1, i64* %3, align 8
  br label %36

35:                                               ; preds = %30
  store i64 0, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @EXT4_DESC_PER_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
