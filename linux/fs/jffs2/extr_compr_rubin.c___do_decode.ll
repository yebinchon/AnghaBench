; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c___do_decode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c___do_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i64, i64, i32, i64, i32 }

@LOWER_BITS_RUBIN = common dso_local global i64 0, align 8
@UPPER_BIT_RUBIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rubin_state*, i64, i64)* @__do_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_decode(%struct.rubin_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rubin_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rubin_state* %0, %struct.rubin_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @LOWER_BITS_RUBIN, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %10, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %10, align 4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = shl i64 %18, 1
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = shl i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @UPPER_BIT_RUBIN, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @UPPER_BIT_RUBIN, align 8
  %31 = icmp ule i64 %29, %30
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i1 [ true, %22 ], [ %31, %26 ]
  br i1 %33, label %12, label %34

34:                                               ; preds = %32
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %37 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %40 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %43 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %47 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %62, %34
  %50 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %51 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %50, i32 0, i32 4
  %52 = call i32 @pullbit(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = shl i64 %56, 1
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %49, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %69 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  ret void
}

declare dso_local i32 @pullbit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
