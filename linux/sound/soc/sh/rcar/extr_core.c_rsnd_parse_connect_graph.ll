; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_parse_connect_graph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_parse_connect_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.device_node = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"hdmi@fead0000\00", align 1
@RSND_STREAM_HDMI0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s connected to HDMI0\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"hdmi@feae0000\00", align 1
@RSND_STREAM_HDMI1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s connected to HDMI1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_priv*, %struct.rsnd_dai_stream*, %struct.device_node*)* @rsnd_parse_connect_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_parse_connect_graph(%struct.rsnd_priv* %0, %struct.rsnd_dai_stream* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.rsnd_priv*, align 8
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %4, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %5, align 8
  store %struct.device_node* %2, %struct.device_node** %6, align 8
  %9 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %10 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %9)
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %6, align 8
  %12 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %11)
  store %struct.device_node* %12, %struct.device_node** %8, align 8
  %13 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %14 = call i32 @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %8, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strstr(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %25 = load i32, i32* @RSND_STREAM_HDMI0, align 4
  %26 = call i32 @rsnd_flags_set(%struct.rsnd_dai_stream* %24, i32 %25)
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %29 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strstr(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %40 = load i32, i32* @RSND_STREAM_HDMI1, align 4
  %41 = call i32 @rsnd_flags_set(%struct.rsnd_dai_stream* %39, i32 %40)
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %44 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %38, %32
  %48 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %49 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i32 @rsnd_parse_tdm_split_mode(%struct.rsnd_priv* %48, %struct.rsnd_dai_stream* %49, %struct.device_node* %50)
  br label %52

52:                                               ; preds = %47, %16
  ret void
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @rsnd_flags_set(%struct.rsnd_dai_stream*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_parse_tdm_split_mode(%struct.rsnd_priv*, %struct.rsnd_dai_stream*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
