; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_check_elem_count.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_check_elem_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"ASoC: %s overflow end of data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ASoC: %s count %d of size %zu is bigger than chunk %zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, i64, i32, i64, i8*)* @soc_tplg_check_elem_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_check_elem_count(%struct.soc_tplg* %0, i64 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_tplg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.soc_tplg*, %struct.soc_tplg** %7, align 8
  %14 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %16, %18
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load %struct.soc_tplg*, %struct.soc_tplg** %7, align 8
  %23 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.soc_tplg*, %struct.soc_tplg** %7, align 8
  %28 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = icmp ugt i32* %21, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %5
  %36 = load %struct.soc_tplg*, %struct.soc_tplg** %7, align 8
  %37 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %62

43:                                               ; preds = %5
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.soc_tplg*, %struct.soc_tplg** %7, align 8
  %52 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55, i64 %56, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %50, %35
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @dev_err(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
