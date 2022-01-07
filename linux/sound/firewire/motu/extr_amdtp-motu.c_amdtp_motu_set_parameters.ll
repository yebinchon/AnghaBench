; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_amdtp_motu_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_amdtp-motu.c_amdtp_motu_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.amdtp_stream = type { i32, i64, %struct.amdtp_motu* }
%struct.amdtp_motu = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.snd_motu_packet_format = type { i32*, i32*, i32, i32, i32, i32 }

@amdtp_motu_set_parameters.params = internal constant [134 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 256, i32 0 }, %struct.anon { i32 278, i32 282 }, %struct.anon { i32 512, i32 0 }, %struct.anon { i32 557, i32 123 }, %struct.anon { i32 128, i32 0 }, %struct.anon { i32 139, i32 141 }], align 16
@EBUSY = common dso_local global i32 0, align 4
@snd_motu_clock_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MIDI_BYTES_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_motu_set_parameters(%struct.amdtp_stream* %0, i32 %1, i32 %2, %struct.snd_motu_packet_format* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_motu_packet_format*, align 8
  %10 = alloca %struct.amdtp_motu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_motu_packet_format* %3, %struct.snd_motu_packet_format** %9, align 8
  %18 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %19 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %18, i32 0, i32 2
  %20 = load %struct.amdtp_motu*, %struct.amdtp_motu** %19, align 8
  store %struct.amdtp_motu* %20, %struct.amdtp_motu** %10, align 8
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %22 = call i64 @amdtp_stream_running(%struct.amdtp_stream* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %154

27:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32*, i32** @snd_motu_clock_rates, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32*, i32** @snd_motu_clock_rates, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  %43 = ashr i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %48

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %28

48:                                               ; preds = %41, %28
  %49 = load i32, i32* %16, align 4
  %50 = load i32*, i32** @snd_motu_clock_rates, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %154

56:                                               ; preds = %48
  %57 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %58 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %65 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %63, %70
  store i32 %71, i32* %11, align 4
  %72 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %73 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = mul i32 %77, 3
  %79 = call i32 @DIV_ROUND_UP(i32 %78, i32 4)
  %80 = add nsw i32 1, %79
  store i32 %80, i32* %13, align 4
  %81 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @amdtp_stream_set_parameters(%struct.amdtp_stream* %81, i32 %82, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %56
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %5, align 4
  br label %154

89:                                               ; preds = %56
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %92 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %94 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %97 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %96, i32 0, i32 12
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %100 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %102 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %105 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %104, i32 0, i32 11
  store i32 %103, i32* %105, align 4
  %106 = load %struct.snd_motu_packet_format*, %struct.snd_motu_packet_format** %9, align 8
  %107 = getelementptr inbounds %struct.snd_motu_packet_format, %struct.snd_motu_packet_format* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %110 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %109, i32 0, i32 10
  store i32 %108, i32* %110, align 8
  %111 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %112 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %111, i32 0, i32 9
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MIDI_BYTES_PER_SECOND, align 4
  %115 = udiv i32 %113, %114
  %116 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %117 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  store i32 11776, i32* %14, align 4
  %118 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %119 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 24576000, %120
  %122 = load i32, i32* %7, align 4
  %123 = udiv i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %127 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* %14, align 4
  %129 = udiv i32 %128, 3072
  %130 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %131 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %133 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [134 x %struct.anon], [134 x %struct.anon]* @amdtp_motu_set_parameters.params, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %139 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 8
  %140 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %141 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds [134 x %struct.anon], [134 x %struct.anon]* @amdtp_motu_set_parameters.params, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.anon, %struct.anon* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %147 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %14, align 4
  %149 = urem i32 %148, 3072
  %150 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %151 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  %152 = load %struct.amdtp_motu*, %struct.amdtp_motu** %10, align 8
  %153 = getelementptr inbounds %struct.amdtp_motu, %struct.amdtp_motu* %152, i32 0, i32 7
  store i64 0, i64* %153, align 8
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %89, %87, %53, %24
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @amdtp_stream_running(%struct.amdtp_stream*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @amdtp_stream_set_parameters(%struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
