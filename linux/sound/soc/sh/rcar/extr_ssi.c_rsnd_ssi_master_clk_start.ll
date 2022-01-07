; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_master_clk_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_master_clk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.rsnd_dai = type { i32 }
%struct.rsnd_ssi = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"SSI parent/child should use same rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SSI parent/child should use same chan\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported clock rate\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FORCE = common dso_local global i32 0, align 4
@SCKD = common dso_local global i32 0, align 4
@SWSD = common dso_local global i32 0, align 4
@CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s outputs %d chan %u Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_mod*, %struct.rsnd_dai_stream*)* @rsnd_ssi_master_clk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_ssi_master_clk_start(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rsnd_dai*, align 8
  %9 = alloca %struct.rsnd_ssi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %16 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %15)
  store %struct.rsnd_priv* %16, %struct.rsnd_priv** %6, align 8
  %17 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %18 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %17)
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %20 = call %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream* %19)
  store %struct.rsnd_dai* %20, %struct.rsnd_dai** %8, align 8
  %21 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %22 = call %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod* %21)
  store %struct.rsnd_ssi* %22, %struct.rsnd_ssi** %9, align 8
  %23 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %24 = call i32 @rsnd_runtime_channel_for_ssi(%struct.rsnd_dai_stream* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %26 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %30 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %31 = call i32 @rsnd_src_get_out_rate(%struct.rsnd_priv* %29, %struct.rsnd_dai_stream* %30)
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %34 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %35 = call i32 @rsnd_src_get_in_rate(%struct.rsnd_priv* %33, %struct.rsnd_dai_stream* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %14, align 4
  %38 = load %struct.rsnd_dai*, %struct.rsnd_dai** %8, align 8
  %39 = call i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %139

42:                                               ; preds = %36
  %43 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %44 = call i32 @rsnd_ssi_can_output_clk(%struct.rsnd_mod* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %139

47:                                               ; preds = %42
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %49 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %50 = call i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod* %48, %struct.rsnd_dai_stream* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %139

53:                                               ; preds = %47
  %54 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %55 = call i64 @rsnd_runtime_is_tdm_split(%struct.rsnd_dai_stream* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %59 = call i32 @rsnd_io_converted_chan(%struct.rsnd_dai_stream* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @rsnd_channel_normalization(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %64 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %69 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %139

78:                                               ; preds = %67
  %79 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %80 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.device*, %struct.device** %7, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %139

89:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %139

90:                                               ; preds = %60
  %91 = load %struct.rsnd_dai*, %struct.rsnd_dai** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @rsnd_ssi_clk_query(%struct.rsnd_dai* %91, i32 %92, i32 %93, i32* %11)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %90
  %103 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @rsnd_adg_ssi_clk_try_start(%struct.rsnd_mod* %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %3, align 4
  br label %139

110:                                              ; preds = %102
  %111 = load i32, i32* @FORCE, align 4
  %112 = load %struct.rsnd_dai*, %struct.rsnd_dai** %8, align 8
  %113 = call i32 @rsnd_rdai_width_to_swl(%struct.rsnd_dai* %112)
  %114 = or i32 %111, %113
  %115 = load i32, i32* @SCKD, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SWSD, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @CKDV(i32 %119)
  %121 = or i32 %118, %120
  %122 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %123 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @CONT, align 4
  %125 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %126 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %129 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.rsnd_ssi*, %struct.rsnd_ssi** %9, align 8
  %132 = getelementptr inbounds %struct.rsnd_ssi, %struct.rsnd_ssi* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.device*, %struct.device** %7, align 8
  %134 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %135 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @dev_dbg(%struct.device* %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %110, %108, %97, %89, %84, %73, %52, %46, %41
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_dai* @rsnd_io_to_rdai(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_ssi* @rsnd_mod_to_ssi(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_runtime_channel_for_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_get_out_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_src_get_in_rate(%struct.rsnd_priv*, %struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_rdai_is_clk_master(%struct.rsnd_dai*) #1

declare dso_local i32 @rsnd_ssi_can_output_clk(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_ssi_is_multi_slave(%struct.rsnd_mod*, %struct.rsnd_dai_stream*) #1

declare dso_local i64 @rsnd_runtime_is_tdm_split(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_converted_chan(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_channel_normalization(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rsnd_ssi_clk_query(%struct.rsnd_dai*, i32, i32, i32*) #1

declare dso_local i32 @rsnd_adg_ssi_clk_try_start(%struct.rsnd_mod*, i32) #1

declare dso_local i32 @rsnd_rdai_width_to_swl(%struct.rsnd_dai*) #1

declare dso_local i32 @CKDV(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
