; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_signed_LEB128.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_emit_signed_LEB128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_ext = type { i32 }

@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_ext*, i64)* @emit_signed_LEB128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_signed_LEB128(%struct.buffer_ext* %0, i64 %1) #0 {
  %3 = alloca %struct.buffer_ext*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.buffer_ext* %0, %struct.buffer_ext** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @CHAR_BIT, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, 127
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %4, align 8
  %24 = ashr i64 %23, 7
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 7
  %30 = shl i32 1, %29
  %31 = sub nsw i32 0, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %4, align 8
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  store i32 0, i32* %5, align 4
  br label %53

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, 128
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.buffer_ext*, %struct.buffer_ext** %3, align 8
  %55 = call i32 @buffer_ext_add(%struct.buffer_ext* %54, i32* %8, i32 1)
  br label %16

56:                                               ; preds = %16
  ret void
}

declare dso_local i32 @buffer_ext_add(%struct.buffer_ext*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
