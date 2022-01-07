; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__init_def_logger_printing.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__init_def_logger_printing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_decoder_params = type { i32* }
%struct.cs_etm_decoder = type { i32, i32* }

@OCSD_ERR_SEV_ERROR = common dso_local global i32 0, align 4
@C_API_MSGLOGOUT_FLG_NONE = common dso_local global i32 0, align 4
@cs_etm_decoder__print_str_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_decoder_params*, %struct.cs_etm_decoder*)* @cs_etm_decoder__init_def_logger_printing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__init_def_logger_printing(%struct.cs_etm_decoder_params* %0, %struct.cs_etm_decoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs_etm_decoder_params*, align 8
  %5 = alloca %struct.cs_etm_decoder*, align 8
  %6 = alloca i32, align 4
  store %struct.cs_etm_decoder_params* %0, %struct.cs_etm_decoder_params** %4, align 8
  store %struct.cs_etm_decoder* %1, %struct.cs_etm_decoder** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %4, align 8
  %8 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.cs_etm_decoder_params*, %struct.cs_etm_decoder_params** %4, align 8
  %14 = getelementptr inbounds %struct.cs_etm_decoder_params, %struct.cs_etm_decoder_params* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %17 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load i32, i32* @OCSD_ERR_SEV_ERROR, align 4
  %19 = call i32 @ocsd_def_errlog_init(i32 %18, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %41

23:                                               ; preds = %12
  %24 = load i32, i32* @C_API_MSGLOGOUT_FLG_NONE, align 4
  %25 = call i32 @ocsd_def_errlog_config_output(i32 %24, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %41

29:                                               ; preds = %23
  %30 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %31 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %34 = bitcast %struct.cs_etm_decoder* %33 to i8*
  %35 = load i32, i32* @cs_etm_decoder__print_str_cb, align 4
  %36 = call i32 @ocsd_def_errlog_set_strprint_cb(i32 %32, i8* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %29
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %28, %22, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ocsd_def_errlog_init(i32, i32) #1

declare dso_local i32 @ocsd_def_errlog_config_output(i32, i32*) #1

declare dso_local i32 @ocsd_def_errlog_set_strprint_cb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
