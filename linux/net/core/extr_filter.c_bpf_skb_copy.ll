; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_bpf_skb_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i64)* @bpf_skb_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bpf_skb_copy(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @skb_header_pointer(i8* %11, i64 %12, i64 %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %34

24:                                               ; preds = %4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @memcpy(i8* %29, i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %24
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local i8* @skb_header_pointer(i8*, i64, i64, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
