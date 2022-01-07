; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_symtab.c_symhash.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_symtab.c_symhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashtab*, i8*)* @symhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symhash(%struct.hashtab* %0, i8* %1) #0 {
  %3 = alloca %struct.hashtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hashtab* %0, %struct.hashtab** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %8, align 4
  %26 = lshr i32 %25, 28
  %27 = or i32 %24, %26
  %28 = load i8*, i8** %5, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = xor i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.hashtab*, %struct.hashtab** %3, align 8
  %38 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %36, %40
  ret i32 %41
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
