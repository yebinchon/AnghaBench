; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32, %struct.amdtp_stream, i64, i64, i32, %struct.cmp_connection, %struct.cmp_connection }
%struct.amdtp_stream = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cmp_connection = type { i32 }

@CMP_OUTPUT = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@CMP_INPUT = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@CIP_BLOCKING = common dso_local global i32 0, align 4
@CIP_EMPTY_WITH_TAG0 = common dso_local global i32 0, align 4
@CIP_DBC_IS_END_EVENT = common dso_local global i32 0, align 4
@CIP_SKIP_DBC_ZERO_CHECK = common dso_local global i32 0, align 4
@CIP_UNALIGHED_DBC = common dso_local global i32 0, align 4
@CIP_WRONG_DBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_efw* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_efw*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.cmp_connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %11 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %12 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %11, i32 0, i32 1
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %16 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %15, i32 0, i32 6
  store %struct.cmp_connection* %16, %struct.cmp_connection** %6, align 8
  %17 = load i32, i32* @CMP_OUTPUT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %18, i32* %8, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %21 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %20, i32 0, i32 5
  store %struct.cmp_connection* %21, %struct.cmp_connection** %6, align 8
  %22 = load i32, i32* @CMP_INPUT, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %26 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %27 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cmp_connection_init(%struct.cmp_connection* %25, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %127

35:                                               ; preds = %24
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %37 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %38 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @CIP_BLOCKING, align 4
  %42 = call i32 @amdtp_am824_init(%struct.amdtp_stream* %36, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %47 = call i32 @amdtp_stream_destroy(%struct.amdtp_stream* %46)
  %48 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %49 = call i32 @cmp_connection_destroy(%struct.cmp_connection* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %127

51:                                               ; preds = %35
  %52 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %53 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %54 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %53, i32 0, i32 1
  %55 = icmp eq %struct.amdtp_stream* %52, %54
  br i1 %55, label %56, label %125

56:                                               ; preds = %51
  %57 = load i32, i32* @CIP_EMPTY_WITH_TAG0, align 4
  %58 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %59 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @CIP_DBC_IS_END_EVENT, align 4
  %64 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %65 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @CIP_SKIP_DBC_ZERO_CHECK, align 4
  %70 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %71 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %76 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %56
  %80 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %81 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 84344832
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %86 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 84345600
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %91 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 84410368
  br i1 %93, label %94, label %101

94:                                               ; preds = %89, %84, %79
  %95 = load i32, i32* @CIP_UNALIGHED_DBC, align 4
  %96 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %97 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %89, %56
  %102 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %103 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @CIP_WRONG_DBS, align 4
  %108 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %109 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %106, %101
  %114 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %115 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 84213760
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %120 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 8, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %113
  br label %125

125:                                              ; preds = %124, %51
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %45, %33
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @cmp_connection_init(%struct.cmp_connection*, i32, i32, i32) #1

declare dso_local i32 @amdtp_am824_init(%struct.amdtp_stream*, i32, i32, i32) #1

declare dso_local i32 @amdtp_stream_destroy(%struct.amdtp_stream*) #1

declare dso_local i32 @cmp_connection_destroy(%struct.cmp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
