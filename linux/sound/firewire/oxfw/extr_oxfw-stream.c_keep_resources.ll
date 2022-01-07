; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { %struct.cmp_connection, i32**, %struct.cmp_connection, i32**, %struct.amdtp_stream }
%struct.cmp_connection = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.snd_oxfw_stream_formation = type { i64, i64, i64 }

@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@SND_OXFW_STREAM_FORMAT_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*, %struct.amdtp_stream*)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_oxfw* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_oxfw*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.snd_oxfw_stream_formation, align 8
  %9 = alloca %struct.cmp_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_oxfw_stream_formation, align 8
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %13 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %15 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %14, i32 0, i32 4
  %16 = icmp eq %struct.amdtp_stream* %13, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %20 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %7, align 8
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %23 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %22, i32 0, i32 2
  store %struct.cmp_connection* %23, %struct.cmp_connection** %9, align 8
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %27 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  store i32** %28, i32*** %7, align 8
  %29 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %30 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %29, i32 0, i32 0
  store %struct.cmp_connection* %30, %struct.cmp_connection** %9, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.snd_oxfw*, %struct.snd_oxfw** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw* %32, i32 %33, %struct.snd_oxfw_stream_formation* %8)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %120

39:                                               ; preds = %31
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %83, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %86

52:                                               ; preds = %44
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @snd_oxfw_stream_parse_format(i32* %57, %struct.snd_oxfw_stream_formation* %12)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %120

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %12, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %12, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75, %69, %63
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %40

86:                                               ; preds = %81, %51, %40
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SND_OXFW_STREAM_FORMAT_ENTRIES, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %120

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %120

100:                                              ; preds = %93
  %101 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %102 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %8, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = mul nsw i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @amdtp_am824_set_parameters(%struct.amdtp_stream* %101, i64 %103, i64 %105, i32 %109, i32 0)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %120

115:                                              ; preds = %100
  %116 = load %struct.cmp_connection*, %struct.cmp_connection** %9, align 8
  %117 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %118 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %117)
  %119 = call i32 @cmp_connection_reserve(%struct.cmp_connection* %116, i32 %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %113, %97, %90, %61, %37
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw*, i32, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32 @snd_oxfw_stream_parse_format(i32*, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32 @amdtp_am824_set_parameters(%struct.amdtp_stream*, i64, i64, i32, i32) #1

declare dso_local i32 @cmp_connection_reserve(%struct.cmp_connection*, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
