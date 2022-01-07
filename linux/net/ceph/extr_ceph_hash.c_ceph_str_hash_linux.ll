; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash_linux.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_hash.c_ceph_str_hash_linux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_str_hash_linux(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %3, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %6, align 1
  %15 = load i64, i64* %5, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %15, %19
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %20, %24
  %26 = mul i64 %25, 11
  store i64 %26, i64* %5, align 8
  br label %7

27:                                               ; preds = %7
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
