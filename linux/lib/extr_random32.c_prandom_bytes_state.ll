; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_random32.c_prandom_bytes_state.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_random32.c_prandom_bytes_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnd_state = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prandom_bytes_state(%struct.rnd_state* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.rnd_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.rnd_state* %0, %struct.rnd_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %7, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.rnd_state*, %struct.rnd_state** %4, align 8
  %16 = call i32 @prandom_u32_state(%struct.rnd_state* %15)
  %17 = load i64*, i64** %7, align 8
  %18 = bitcast i64* %17 to i32*
  %19 = call i32 @put_unaligned(i32 %16, i32* %18)
  %20 = load i64*, i64** %7, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 4
  store i64* %21, i64** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 4
  store i64 %23, i64* %6, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.rnd_state*, %struct.rnd_state** %4, align 8
  %29 = call i32 @prandom_u32_state(%struct.rnd_state* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %40, %27
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  %37 = load i32, i32* @BITS_PER_BYTE, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %6, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %30, label %43

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %24
  ret void
}

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @prandom_u32_state(%struct.rnd_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
