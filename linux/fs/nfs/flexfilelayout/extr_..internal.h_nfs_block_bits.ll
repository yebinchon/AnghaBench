; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_block_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_..internal.h_nfs_block_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*)* @nfs_block_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs_block_bits(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %7, 1
  %9 = and i64 %6, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %11, %2
  store i8 31, i8* %5, align 1
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = and i64 %20, %24
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %19, %15
  %29 = phi i1 [ false, %15 ], [ %27, %19 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i8, i8* %5, align 1
  %33 = add i8 %32, -1
  store i8 %33, i8* %5, align 1
  br label %15

34:                                               ; preds = %28
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8, i8* %5, align 1
  %43 = load i8*, i8** %4, align 8
  store i8 %42, i8* %43, align 1
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %11
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
