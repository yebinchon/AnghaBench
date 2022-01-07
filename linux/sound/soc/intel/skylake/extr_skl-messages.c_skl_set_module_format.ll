; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_module_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_set_module_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Module type=%d id=%d config size: %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Module params:\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, %struct.skl_module_cfg*, i32*, i8**)* @skl_set_module_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_set_module_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skl_dev*, align 8
  %7 = alloca %struct.skl_module_cfg*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %6, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %12 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %13 = call i32 @skl_get_module_param_size(%struct.skl_dev* %11, %struct.skl_module_cfg* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 %14, i32 %15)
  %17 = load i8**, i8*** %9, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* null, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %84

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %28 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %60 [
    i32 132, label %30
    i32 129, label %36
    i32 128, label %42
    i32 134, label %48
    i32 133, label %54
    i32 130, label %54
    i32 131, label %54
  ]

30:                                               ; preds = %24
  %31 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %32 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @skl_set_copier_format(%struct.skl_dev* %31, %struct.skl_module_cfg* %32, i8* %34)
  br label %66

36:                                               ; preds = %24
  %37 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %38 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %39 = load i8**, i8*** %9, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @skl_set_src_format(%struct.skl_dev* %37, %struct.skl_module_cfg* %38, i8* %40)
  br label %66

42:                                               ; preds = %24
  %43 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %44 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %45 = load i8**, i8*** %9, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @skl_set_updown_mixer_format(%struct.skl_dev* %43, %struct.skl_module_cfg* %44, i8* %46)
  br label %66

48:                                               ; preds = %24
  %49 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %50 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %51 = load i8**, i8*** %9, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @skl_set_algo_format(%struct.skl_dev* %49, %struct.skl_module_cfg* %50, i8* %52)
  br label %66

54:                                               ; preds = %24, %24, %24
  %55 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %56 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %57 = load i8**, i8*** %9, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @skl_set_base_outfmt_format(%struct.skl_dev* %55, %struct.skl_module_cfg* %56, i8* %58)
  br label %66

60:                                               ; preds = %24
  %61 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %62 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @skl_set_base_module_format(%struct.skl_dev* %61, %struct.skl_module_cfg* %62, i8* %64)
  br label %66

66:                                               ; preds = %60, %54, %48, %42, %36, %30
  %67 = load %struct.skl_dev*, %struct.skl_dev** %6, align 8
  %68 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %71 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %7, align 8
  %74 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %76, i32 %77)
  %79 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %80 = load i8**, i8*** %9, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 8, i32 4, i8* %81, i32 %82, i32 0)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %66, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @skl_get_module_param_size(%struct.skl_dev*, %struct.skl_module_cfg*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @skl_set_copier_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @skl_set_src_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @skl_set_updown_mixer_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @skl_set_algo_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @skl_set_base_outfmt_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @skl_set_base_module_format(%struct.skl_dev*, %struct.skl_module_cfg*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
