; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-stream.c_snd_ff_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32 (%struct.snd_ff*, i32*, i32*)*, {}* }

@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ff_stream_reserve_duplex(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.snd_ff*, i32*, i32*)*, i32 (%struct.snd_ff*, i32*, i32*)** %16, align 8
  %18 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %19 = call i32 %17(%struct.snd_ff* %18, i32* %6, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %130

24:                                               ; preds = %2
  %25 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %29, %24
  %34 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %34, i32 0, i32 6
  %36 = call i32 @amdtp_domain_stop(i32* %35)
  %37 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %38 = call i32 @finish_session(%struct.snd_ff* %37)
  %39 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %40 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %39, i32 0, i32 5
  %41 = call i32 @fw_iso_resources_free(i32* %40)
  %42 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %42, i32 0, i32 4
  %44 = call i32 @fw_iso_resources_free(i32* %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %59, %33
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @CIP_SFC_COUNT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32*, i32** @amdtp_rate_table, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %62

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %45

62:                                               ; preds = %57, %45
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @CIP_SFC_COUNT, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %130

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @snd_ff_stream_get_multiplier_mode(i32 %70, i32* %9)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %130

76:                                               ; preds = %69
  %77 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %78 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %77, i32 0, i32 3
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %81 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @amdtp_ff_set_parameters(i32* %78, i32 %79, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %130

94:                                               ; preds = %76
  %95 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %96 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %95, i32 0, i32 2
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %99 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @amdtp_ff_set_parameters(i32* %96, i32 %97, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %94
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %130

112:                                              ; preds = %94
  %113 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %114 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = bitcast {}** %118 to i32 (%struct.snd_ff*, i32)**
  %120 = load i32 (%struct.snd_ff*, i32)*, i32 (%struct.snd_ff*, i32)** %119, align 8
  %121 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 %120(%struct.snd_ff* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128, %29
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %126, %110, %92, %74, %66, %22
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_ff*) #1

declare dso_local i32 @fw_iso_resources_free(i32*) #1

declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32, i32*) #1

declare dso_local i32 @amdtp_ff_set_parameters(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
