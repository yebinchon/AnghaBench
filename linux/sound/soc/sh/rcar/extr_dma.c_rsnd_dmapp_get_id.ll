; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dmapp_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.device = type { i32 }

@gen2_id_table_ssiu = common dso_local global i32* null, align 8
@gen2_id_table_scu = common dso_local global i32* null, align 8
@gen2_id_table_cmd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"unknown connection (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_dmapp_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_dmapp_get_id(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_dai_stream*, align 8
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_mod*, align 8
  %8 = alloca %struct.rsnd_mod*, align 8
  %9 = alloca %struct.rsnd_mod*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %4, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %5, align 8
  %15 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %16 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %15)
  store %struct.rsnd_mod* %16, %struct.rsnd_mod** %6, align 8
  %17 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %18 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream* %17)
  store %struct.rsnd_mod* %18, %struct.rsnd_mod** %7, align 8
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %20 = call %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %19)
  store %struct.rsnd_mod* %20, %struct.rsnd_mod** %8, align 8
  %21 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %22 = call %struct.rsnd_mod* @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream* %21)
  store %struct.rsnd_mod* %22, %struct.rsnd_mod** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 255, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %24 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %25 = icmp eq %struct.rsnd_mod* %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %28 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %29 = icmp eq %struct.rsnd_mod* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26, %2
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %7, align 8
  %32 = call i32 @rsnd_mod_id_sub(%struct.rsnd_mod* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** @gen2_id_table_ssiu, align 8
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** @gen2_id_table_ssiu, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %37 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %36)
  %38 = mul nsw i32 %37, 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  br label %63

41:                                               ; preds = %26
  %42 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %43 = load %struct.rsnd_mod*, %struct.rsnd_mod** %8, align 8
  %44 = icmp eq %struct.rsnd_mod* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** @gen2_id_table_scu, align 8
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** @gen2_id_table_scu, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %50 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %49)
  store i32 %50, i32* %11, align 4
  br label %62

51:                                               ; preds = %41
  %52 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %53 = load %struct.rsnd_mod*, %struct.rsnd_mod** %9, align 8
  %54 = icmp eq %struct.rsnd_mod* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32*, i32** @gen2_id_table_cmd, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** @gen2_id_table_cmd, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %60 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %55, %51
  br label %62

62:                                               ; preds = %61, %45
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i32*, i32** %10, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66, %63
  %71 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %4, align 8
  %72 = call i32 @rsnd_io_to_priv(%struct.rsnd_dai_stream* %71)
  %73 = call %struct.device* @rsnd_priv_to_dev(i32 %72)
  store %struct.device* %73, %struct.device** %14, align 8
  %74 = load %struct.device*, %struct.device** %14, align 8
  %75 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %76 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %75)
  %77 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %3, align 4
  br label %84

78:                                               ; preds = %66
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %78, %70
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_id_sub(%struct.rsnd_mod*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(i32) #1

declare dso_local i32 @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
