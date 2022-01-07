; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod_ops = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.rsnd_dma_ctrl = type { i32, i32 }
%struct.device = type { i32 }
%struct.rsnd_dma = type { %struct.rsnd_mod*, %struct.rsnd_mod*, i8*, i8* }

@EAGAIN = common dso_local global i32 0, align 4
@rsnd_dmapp_ops = common dso_local global %struct.rsnd_mod_ops zeroinitializer, align 4
@RSND_MOD_AUDMAPP = common dso_local global i32 0, align 4
@rsnd_dmaen_ops = common dso_local global %struct.rsnd_mod_ops zeroinitializer, align 4
@RSND_MOD_AUDMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %s -> %s\0A\00", align 1
@mem = common dso_local global %struct.rsnd_mod zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_mod*, %struct.rsnd_mod**)* @rsnd_dma_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dma_alloc(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1, %struct.rsnd_mod** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_mod**, align 8
  %8 = alloca %struct.rsnd_mod*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca %struct.rsnd_priv*, align 8
  %11 = alloca %struct.rsnd_dma_ctrl*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.rsnd_dma*, align 8
  %14 = alloca %struct.rsnd_mod_ops*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %6, align 8
  store %struct.rsnd_mod** %2, %struct.rsnd_mod*** %7, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %8, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %9, align 8
  %20 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %21 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %20)
  store %struct.rsnd_priv* %21, %struct.rsnd_priv** %10, align 8
  %22 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %23 = call %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv* %22)
  store %struct.rsnd_dma_ctrl* %23, %struct.rsnd_dma_ctrl** %11, align 8
  %24 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %25 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %24)
  store %struct.device* %25, %struct.device** %12, align 8
  %26 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %27 = call i32 @rsnd_io_is_play(%struct.rsnd_dai_stream* %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %29 = icmp ne %struct.rsnd_dma_ctrl* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %137

33:                                               ; preds = %3
  %34 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %35 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @rsnd_dma_of_path(%struct.rsnd_mod* %34, %struct.rsnd_dai_stream* %35, i32 %36, %struct.rsnd_mod** %8, %struct.rsnd_mod** %9)
  %38 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %39 = icmp ne %struct.rsnd_mod* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %42 = icmp ne %struct.rsnd_mod* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  store %struct.rsnd_mod_ops* @rsnd_dmapp_ops, %struct.rsnd_mod_ops** %14, align 8
  store i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmapp_attach, i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)** %16, align 8
  %44 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %45 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* @RSND_MOD_AUDMAPP, align 4
  store i32 %47, i32* %15, align 4
  br label %53

48:                                               ; preds = %40, %33
  store %struct.rsnd_mod_ops* @rsnd_dmaen_ops, %struct.rsnd_mod_ops** %14, align 8
  store i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmaen_attach, i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)** %16, align 8
  %49 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %50 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* @RSND_MOD_AUDMA, align 4
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %55 = call i64 @rsnd_is_gen1(%struct.rsnd_priv* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  store %struct.rsnd_mod_ops* @rsnd_dmaen_ops, %struct.rsnd_mod_ops** %14, align 8
  store i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)* @rsnd_dmaen_attach, i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)** %16, align 8
  %58 = load %struct.rsnd_dma_ctrl*, %struct.rsnd_dma_ctrl** %11, align 8
  %59 = getelementptr inbounds %struct.rsnd_dma_ctrl, %struct.rsnd_dma_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* @RSND_MOD_AUDMA, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load %struct.device*, %struct.device** %12, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.rsnd_dma* @devm_kzalloc(%struct.device* %63, i32 32, i32 %64)
  store %struct.rsnd_dma* %65, %struct.rsnd_dma** %13, align 8
  %66 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %67 = icmp ne %struct.rsnd_dma* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %137

71:                                               ; preds = %62
  %72 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %73 = call %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma* %72)
  %74 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %7, align 8
  store %struct.rsnd_mod* %73, %struct.rsnd_mod** %74, align 8
  %75 = load %struct.rsnd_priv*, %struct.rsnd_priv** %10, align 8
  %76 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %7, align 8
  %77 = load %struct.rsnd_mod*, %struct.rsnd_mod** %76, align 8
  %78 = load %struct.rsnd_mod_ops*, %struct.rsnd_mod_ops** %14, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %19, align 4
  %81 = call i32 @rsnd_mod_init(%struct.rsnd_priv* %75, %struct.rsnd_mod* %77, %struct.rsnd_mod_ops* %78, i32* null, i32 %79, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %18, align 4
  store i32 %85, i32* %4, align 4
  br label %137

86:                                               ; preds = %71
  %87 = load %struct.device*, %struct.device** %12, align 8
  %88 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %7, align 8
  %89 = load %struct.rsnd_mod*, %struct.rsnd_mod** %88, align 8
  %90 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %89)
  %91 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %92 = icmp ne %struct.rsnd_mod* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi %struct.rsnd_mod* [ %94, %93 ], [ @mem, %95 ]
  %98 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %97)
  %99 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %100 = icmp ne %struct.rsnd_mod* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi %struct.rsnd_mod* [ %102, %101 ], [ @mem, %103 ]
  %106 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %105)
  %107 = call i32 @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %98, i32 %106)
  %108 = load i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)*, i32 (%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*)** %16, align 8
  %109 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %110 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %111 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %112 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %113 = call i32 %108(%struct.rsnd_dai_stream* %109, %struct.rsnd_dma* %110, %struct.rsnd_mod* %111, %struct.rsnd_mod* %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %4, align 4
  br label %137

118:                                              ; preds = %104
  %119 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %120 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i8* @rsnd_dma_addr(%struct.rsnd_dai_stream* %119, %struct.rsnd_mod* %120, i32 %121, i32 1)
  %123 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %124 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %126 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i8* @rsnd_dma_addr(%struct.rsnd_dai_stream* %125, %struct.rsnd_mod* %126, i32 %127, i32 0)
  %129 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %130 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %132 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %133 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %132, i32 0, i32 1
  store %struct.rsnd_mod* %131, %struct.rsnd_mod** %133, align 8
  %134 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %135 = load %struct.rsnd_dma*, %struct.rsnd_dma** %13, align 8
  %136 = getelementptr inbounds %struct.rsnd_dma, %struct.rsnd_dma* %135, i32 0, i32 0
  store %struct.rsnd_mod* %134, %struct.rsnd_mod** %136, align 8
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %118, %116, %84, %68, %30
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_dma_ctrl* @rsnd_priv_to_dmac(%struct.rsnd_priv*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_dma_of_path(%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32, %struct.rsnd_mod**, %struct.rsnd_mod**) #1

declare dso_local i32 @rsnd_dmapp_attach(%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_dmaen_attach(%struct.rsnd_dai_stream*, %struct.rsnd_dma*, %struct.rsnd_mod*, %struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_is_gen1(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_dma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.rsnd_mod* @rsnd_mod_get(%struct.rsnd_dma*) #1

declare dso_local i32 @rsnd_mod_init(%struct.rsnd_priv*, %struct.rsnd_mod*, %struct.rsnd_mod_ops*, i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i8* @rsnd_dma_addr(%struct.rsnd_dai_stream*, %struct.rsnd_mod*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
