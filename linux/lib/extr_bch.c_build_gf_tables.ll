; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_build_gf_tables.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_build_gf_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32)* @build_gf_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_gf_tables(%struct.bch_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bch_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @deg(i32 %9)
  %11 = shl i32 1, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %14 = call i32 @GF_M(%struct.bch_control* %13)
  %15 = shl i32 1, %14
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %23 = call i64 @GF_N(%struct.bch_control* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %28 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %35 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %72

46:                                               ; preds = %42, %25
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %19

61:                                               ; preds = %19
  %62 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %63 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %66 = call i64 @GF_N(%struct.bch_control* %65)
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 1, i32* %67, align 4
  %68 = load %struct.bch_control*, %struct.bch_control** %4, align 8
  %69 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %45, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @deg(i32) #1

declare dso_local i32 @GF_M(%struct.bch_control*) #1

declare dso_local i64 @GF_N(%struct.bch_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
