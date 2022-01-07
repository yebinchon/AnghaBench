; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_snd_usb_endpoint_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32, %struct.snd_urb_ctx*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_urb_ctx = type { %struct.urb*, i32 }
%struct.urb = type { i32 }

@EBADFD = common dso_local global i32 0, align 4
@EP_FLAG_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot submit urb %d, error %d: %s\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_endpoint_start(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_urb_ctx*, align 8
  %7 = alloca %struct.urb*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  %8 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %9 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBADFD, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %143

17:                                               ; preds = %1
  %18 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %19 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %143

24:                                               ; preds = %17
  %25 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %26 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %25, i32 0)
  %27 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %31, i32 0, i32 8
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %34 = call i32 @snd_usb_endpoint_start_quirk(%struct.snd_usb_endpoint* %33)
  %35 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %36, i32 0, i32 2
  %38 = call i32 @set_bit(i32 %35, i64* %37)
  %39 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %40 = call i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %46 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %51 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %50, i32 0, i32 6
  %52 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %52, i64 %54
  store %struct.snd_urb_ctx* %55, %struct.snd_urb_ctx** %6, align 8
  %56 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %56, i32 0, i32 1
  %58 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %59 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %58, i32 0, i32 7
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %143

65:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %126, %65
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %69 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %129

72:                                               ; preds = %66
  %73 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %74 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %73, i32 0, i32 6
  %75 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %75, i64 %77
  %79 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %78, i32 0, i32 0
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  store %struct.urb* %80, %struct.urb** %7, align 8
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = icmp ne %struct.urb* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @snd_BUG_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %130

88:                                               ; preds = %72
  %89 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %90 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @usb_pipeout(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %96 = load %struct.urb*, %struct.urb** %7, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @prepare_outbound_urb(%struct.snd_usb_endpoint* %95, i32 %98)
  br label %106

100:                                              ; preds = %88
  %101 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %102 = load %struct.urb*, %struct.urb** %7, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @prepare_inbound_urb(%struct.snd_usb_endpoint* %101, i32 %104)
  br label %106

106:                                              ; preds = %100, %94
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call i32 @usb_submit_urb(%struct.urb* %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %114 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @usb_error_string(i32 %118)
  %120 = call i32 @usb_audio_err(%struct.TYPE_2__* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117, i32 %119)
  br label %130

121:                                              ; preds = %106
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %124 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %123, i32 0, i32 3
  %125 = call i32 @set_bit(i32 %122, i64* %124)
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %5, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %66

129:                                              ; preds = %66
  store i32 0, i32* %2, align 4
  br label %143

130:                                              ; preds = %112, %87
  %131 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %132 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %133 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %132, i32 0, i32 2
  %134 = call i32 @clear_bit(i32 %131, i64* %133)
  %135 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %136 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %140 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %139, i32 0)
  %141 = load i32, i32* @EPIPE, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %130, %129, %64, %23, %14
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @deactivate_urbs(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i32 @snd_usb_endpoint_start_quirk(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @snd_usb_endpoint_implicit_feedback_sink(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @prepare_outbound_urb(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i32 @prepare_inbound_urb(%struct.snd_usb_endpoint*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_audio_err(%struct.TYPE_2__*, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_error_string(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
