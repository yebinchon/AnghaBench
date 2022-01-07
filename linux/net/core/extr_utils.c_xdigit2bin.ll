; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_utils.c_xdigit2bin.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_utils.c_xdigit2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN6PTON_DELIM = common dso_local global i32 0, align 4
@IN6PTON_COLON_MASK = common dso_local global i32 0, align 4
@IN6PTON_DOT = common dso_local global i32 0, align 4
@IN6PTON_XDIGIT = common dso_local global i32 0, align 4
@IN6PTON_DIGIT = common dso_local global i32 0, align 4
@IN6PTON_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @xdigit2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdigit2bin(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @IN6PTON_DELIM, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %11
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 58
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @IN6PTON_COLON_MASK, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %17
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @IN6PTON_DOT, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %23
  %30 = load i8, i8* %4, align 1
  %31 = call i32 @hex_to_bin(i8 signext %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IN6PTON_XDIGIT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @IN6PTON_DIGIT, align 4
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %37, %44
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @IN6PTON_DELIM, align 4
  store i32 %50, i32* %3, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @IN6PTON_UNKNOWN, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %49, %43, %27, %21, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @hex_to_bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
