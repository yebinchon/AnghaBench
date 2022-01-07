; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_parse_alg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_parse_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.wm_coeff_parsed_alg = type { i8*, i32, i32, i8* }
%struct.wmfw_adsp_alg_data = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"Algorithm ID: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Algorithm name: %.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"# of coefficient descriptors: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm_adsp*, i32**, %struct.wm_coeff_parsed_alg*)* @wm_coeff_parse_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_coeff_parse_alg(%struct.wm_adsp* %0, i32** %1, %struct.wm_coeff_parsed_alg* %2) #0 {
  %4 = alloca %struct.wm_adsp*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.wm_coeff_parsed_alg*, align 8
  %7 = alloca %struct.wmfw_adsp_alg_data*, align 8
  store %struct.wm_adsp* %0, %struct.wm_adsp** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.wm_coeff_parsed_alg* %2, %struct.wm_coeff_parsed_alg** %6, align 8
  %8 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %9 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %42 [
    i32 0, label %11
    i32 1, label %11
  ]

11:                                               ; preds = %3, %3
  %12 = load i32**, i32*** %5, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to %struct.wmfw_adsp_alg_data*
  store %struct.wmfw_adsp_alg_data* %14, %struct.wmfw_adsp_alg_data** %7, align 8
  %15 = load %struct.wmfw_adsp_alg_data*, %struct.wmfw_adsp_alg_data** %7, align 8
  %16 = getelementptr inbounds %struct.wmfw_adsp_alg_data, %struct.wmfw_adsp_alg_data* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32**, i32*** %5, align 8
  store i32* %17, i32** %18, align 8
  %19 = load %struct.wmfw_adsp_alg_data*, %struct.wmfw_adsp_alg_data** %7, align 8
  %20 = getelementptr inbounds %struct.wmfw_adsp_alg_data, %struct.wmfw_adsp_alg_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %24 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.wmfw_adsp_alg_data*, %struct.wmfw_adsp_alg_data** %7, align 8
  %26 = getelementptr inbounds %struct.wmfw_adsp_alg_data, %struct.wmfw_adsp_alg_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %29 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.wmfw_adsp_alg_data*, %struct.wmfw_adsp_alg_data** %7, align 8
  %31 = getelementptr inbounds %struct.wmfw_adsp_alg_data, %struct.wmfw_adsp_alg_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %35 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wmfw_adsp_alg_data*, %struct.wmfw_adsp_alg_data** %7, align 8
  %37 = getelementptr inbounds %struct.wmfw_adsp_alg_data, %struct.wmfw_adsp_alg_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %41 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %59

42:                                               ; preds = %3
  %43 = load i32**, i32*** %5, align 8
  %44 = call i8* @wm_coeff_parse_int(i32 4, i32** %43)
  %45 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %46 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32**, i32*** %5, align 8
  %48 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %49 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %48, i32 0, i32 1
  %50 = call i32 @wm_coeff_parse_string(i32 4, i32** %47, i32* %49)
  %51 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %52 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32**, i32*** %5, align 8
  %54 = call i32 @wm_coeff_parse_string(i32 4, i32** %53, i32* null)
  %55 = load i32**, i32*** %5, align 8
  %56 = call i8* @wm_coeff_parse_int(i32 4, i32** %55)
  %57 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %58 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %42, %11
  %60 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %61 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %62 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (%struct.wm_adsp*, i8*, i8*, ...) @adsp_dbg(%struct.wm_adsp* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %66 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %67 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %72 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.wm_adsp*, i8*, i8*, ...) @adsp_dbg(%struct.wm_adsp* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %73)
  %75 = load %struct.wm_adsp*, %struct.wm_adsp** %4, align 8
  %76 = load %struct.wm_coeff_parsed_alg*, %struct.wm_coeff_parsed_alg** %6, align 8
  %77 = getelementptr inbounds %struct.wm_coeff_parsed_alg, %struct.wm_coeff_parsed_alg* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.wm_adsp*, i8*, i8*, ...) @adsp_dbg(%struct.wm_adsp* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @wm_coeff_parse_int(i32, i32**) #1

declare dso_local i32 @wm_coeff_parse_string(i32, i32**, i32*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
