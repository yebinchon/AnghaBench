; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_get_random_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_get_random_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xprt_min_resvport = common dso_local global i16 0, align 2
@xprt_max_resvport = common dso_local global i16 0, align 2
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xs_get_random_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_get_random_port() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = load i16, i16* @xprt_min_resvport, align 2
  store i16 %6, i16* %2, align 2
  %7 = load i16, i16* @xprt_max_resvport, align 2
  store i16 %7, i16* %3, align 2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* %2, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @EADDRINUSE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %36

16:                                               ; preds = %0
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* %2, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %4, align 2
  %24 = call i64 (...) @prandom_u32()
  %25 = trunc i64 %24 to i16
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = srem i32 %26, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %5, align 2
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %2, align 2
  %34 = zext i16 %33 to i32
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
