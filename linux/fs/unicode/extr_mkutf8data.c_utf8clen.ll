; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8clen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8clen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @utf8clen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8clen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sge i32 %7, 192
  %9 = zext i1 %8 to i32
  %10 = add nsw i32 1, %9
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sge i32 %12, 224
  %14 = zext i1 %13 to i32
  %15 = add nsw i32 %10, %14
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 240
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %15, %19
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
