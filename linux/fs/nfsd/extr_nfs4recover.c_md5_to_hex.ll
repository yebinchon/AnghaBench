; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_md5_to_hex.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_md5_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @md5_to_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md5_to_hex(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %47

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %6, align 1
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 4
  %20 = add nsw i32 48, %19
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 160
  %24 = zext i1 %23 to i32
  %25 = mul nsw i32 %24, 39
  %26 = add nsw i32 %20, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  store i8 %27, i8* %28, align 1
  %30 = load i8, i8* %6, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = add nsw i32 48, %32
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = icmp sge i32 %36, 10
  %38 = zext i1 %37 to i32
  %39 = mul nsw i32 %38, 39
  %40 = add nsw i32 %33, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  store i8 %41, i8* %42, align 1
  br label %44

44:                                               ; preds = %10
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %7

47:                                               ; preds = %7
  %48 = load i8*, i8** %3, align 8
  store i8 0, i8* %48, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
