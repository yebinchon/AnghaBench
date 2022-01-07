; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_short_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_short_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i64* }
%struct.option = type { i64, i64, %struct.option* }

@OPTION_END = common dso_local global i64 0, align 8
@OPT_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*)* @parse_short_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_short_opt(%struct.parse_opt_ctx_t* %0, %struct.option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse_opt_ctx_t*, align 8
  %5 = alloca %struct.option*, align 8
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %4, align 8
  store %struct.option* %1, %struct.option** %5, align 8
  br label %6

6:                                                ; preds = %52, %2
  br label %7

7:                                                ; preds = %44, %6
  %8 = load %struct.option*, %struct.option** %5, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OPTION_END, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.option*, %struct.option** %5, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %18 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %13
  %23 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %24 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %31 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i64* [ %33, %29 ], [ null, %34 ]
  %37 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %38 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %37, i32 0, i32 0
  store i64* %36, i64** %38, align 8
  %39 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %4, align 8
  %40 = load %struct.option*, %struct.option** %5, align 8
  %41 = load i32, i32* @OPT_SHORT, align 4
  %42 = call i32 @get_value(%struct.parse_opt_ctx_t* %39, %struct.option* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.option*, %struct.option** %5, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 1
  store %struct.option* %46, %struct.option** %5, align 8
  br label %7

47:                                               ; preds = %7
  %48 = load %struct.option*, %struct.option** %5, align 8
  %49 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 2
  %50 = load %struct.option*, %struct.option** %49, align 8
  %51 = icmp ne %struct.option* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.option*, %struct.option** %5, align 8
  %54 = getelementptr inbounds %struct.option, %struct.option* %53, i32 0, i32 2
  %55 = load %struct.option*, %struct.option** %54, align 8
  store %struct.option* %55, %struct.option** %5, align 8
  br label %6

56:                                               ; preds = %47
  store i32 -2, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @get_value(%struct.parse_opt_ctx_t*, %struct.option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
