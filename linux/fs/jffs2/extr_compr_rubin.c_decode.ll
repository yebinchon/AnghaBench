; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_decode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i64, i64, i64 }

@UPPER_BIT_RUBIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rubin_state*, i64, i64)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode(%struct.rubin_state* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rubin_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rubin_state* %0, %struct.rubin_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %13 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %16 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @UPPER_BIT_RUBIN, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* @UPPER_BIT_RUBIN, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %3
  %28 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @__do_decode(%struct.rubin_state* %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %35 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %33, %36
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %38, %39
  %41 = udiv i64 %37, %40
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp sle i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i64 1, i64* %9, align 8
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %48 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %53 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %58 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %10, align 8
  %62 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %63 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp sge i64 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %69 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %56
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %76 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %80 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %73, %56
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %87 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @__do_decode(%struct.rubin_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
