; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_textsearch.c_get_linear_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_textsearch.c_get_linear_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_state = type { i64 }
%struct.ts_linear_state = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, %struct.ts_config*, %struct.ts_state*)* @get_linear_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_linear_data(i32 %0, i32** %1, %struct.ts_config* %2, %struct.ts_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.ts_config*, align 8
  %9 = alloca %struct.ts_state*, align 8
  %10 = alloca %struct.ts_linear_state*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store %struct.ts_config* %2, %struct.ts_config** %8, align 8
  store %struct.ts_state* %3, %struct.ts_state** %9, align 8
  %11 = load %struct.ts_state*, %struct.ts_state** %9, align 8
  %12 = getelementptr inbounds %struct.ts_state, %struct.ts_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ts_linear_state*
  store %struct.ts_linear_state* %14, %struct.ts_linear_state** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ts_linear_state*, %struct.ts_linear_state** %10, align 8
  %17 = getelementptr inbounds %struct.ts_linear_state, %struct.ts_linear_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.ts_linear_state*, %struct.ts_linear_state** %10, align 8
  %25 = getelementptr inbounds %struct.ts_linear_state, %struct.ts_linear_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  %31 = load %struct.ts_linear_state*, %struct.ts_linear_state** %10, align 8
  %32 = getelementptr inbounds %struct.ts_linear_state, %struct.ts_linear_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
