; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_start_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_pcm.c_start_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_substream = type { i32, %struct.snd_usb_endpoint*, %struct.TYPE_2__*, %struct.snd_usb_endpoint* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_usb_endpoint = type { i64, i64, %struct.snd_usb_endpoint*, %struct.snd_usb_substream* }

@EINVAL = common dso_local global i32 0, align 4
@SUBSTREAM_FLAG_DATA_EP_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting data EP @%p\0A\00", align 1
@SUBSTREAM_FLAG_SYNC_EP_STARTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%d:%d: cannot set interface (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Starting sync EP @%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_substream*)* @start_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_endpoints(%struct.snd_usb_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca %struct.snd_usb_endpoint*, align 8
  store %struct.snd_usb_substream* %0, %struct.snd_usb_substream** %3, align 8
  %7 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %7, i32 0, i32 1
  %9 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %8, align 8
  %10 = icmp ne %struct.snd_usb_endpoint* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %147

14:                                               ; preds = %1
  %15 = load i32, i32* @SUBSTREAM_FLAG_DATA_EP_STARTED, align 4
  %16 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %16, i32 0, i32 0
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %22 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %21, i32 0, i32 1
  %23 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %22, align 8
  store %struct.snd_usb_endpoint* %23, %struct.snd_usb_endpoint** %5, align 8
  %24 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %25 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %29 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.snd_usb_endpoint* %28)
  %30 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %31 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %31, i32 0, i32 3
  store %struct.snd_usb_substream* %30, %struct.snd_usb_substream** %32, align 8
  %33 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %34 = call i32 @snd_usb_endpoint_start(%struct.snd_usb_endpoint* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load i32, i32* @SUBSTREAM_FLAG_DATA_EP_STARTED, align 4
  %39 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %39, i32 0, i32 0
  %41 = call i32 @clear_bit(i32 %38, i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %147

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %14
  %45 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %45, i32 0, i32 3
  %47 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %46, align 8
  %48 = icmp ne %struct.snd_usb_endpoint* %47, null
  br i1 %48, label %49, label %146

49:                                               ; preds = %44
  %50 = load i32, i32* @SUBSTREAM_FLAG_SYNC_EP_STARTED, align 4
  %51 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %51, i32 0, i32 0
  %53 = call i32 @test_and_set_bit(i32 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %146, label %55

55:                                               ; preds = %49
  %56 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %57 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %56, i32 0, i32 3
  %58 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %57, align 8
  store %struct.snd_usb_endpoint* %58, %struct.snd_usb_endpoint** %6, align 8
  %59 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %60 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %59, i32 0, i32 1
  %61 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %60, align 8
  %62 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %65 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %64, i32 0, i32 3
  %66 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %65, align 8
  %67 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %63, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %55
  %71 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %72 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %71, i32 0, i32 1
  %73 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %72, align 8
  %74 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %77 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %76, i32 0, i32 3
  %78 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %77, align 8
  %79 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %70, %55
  %83 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %84 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %87 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %86, i32 0, i32 3
  %88 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %87, align 8
  %89 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %92 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %91, i32 0, i32 3
  %93 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %92, align 8
  %94 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @usb_set_interface(%struct.TYPE_2__* %85, i64 %90, i64 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %82
  %100 = load i32, i32* @SUBSTREAM_FLAG_SYNC_EP_STARTED, align 4
  %101 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %102 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %101, i32 0, i32 0
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  %104 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %105 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %109 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %108, i32 0, i32 3
  %110 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %109, align 8
  %111 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %114 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %113, i32 0, i32 3
  %115 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %114, align 8
  %116 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %112, i64 %117, i32 %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %147

122:                                              ; preds = %82
  br label %123

123:                                              ; preds = %122, %70
  %124 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %125 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %129 = call i32 @dev_dbg(i32* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %struct.snd_usb_endpoint* %128)
  %130 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %131 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %130, i32 0, i32 1
  %132 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %131, align 8
  %133 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %134 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %133, i32 0, i32 2
  store %struct.snd_usb_endpoint* %132, %struct.snd_usb_endpoint** %134, align 8
  %135 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %6, align 8
  %136 = call i32 @snd_usb_endpoint_start(%struct.snd_usb_endpoint* %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load i32, i32* @SUBSTREAM_FLAG_SYNC_EP_STARTED, align 4
  %141 = load %struct.snd_usb_substream*, %struct.snd_usb_substream** %3, align 8
  %142 = getelementptr inbounds %struct.snd_usb_substream, %struct.snd_usb_substream* %141, i32 0, i32 0
  %143 = call i32 @clear_bit(i32 %140, i32* %142)
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %147

145:                                              ; preds = %123
  br label %146

146:                                              ; preds = %145, %49, %44
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %139, %99, %37, %11
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.snd_usb_endpoint*) #1

declare dso_local i32 @snd_usb_endpoint_start(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_2__*, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
