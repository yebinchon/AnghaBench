; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fail to prepare rx stream: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fail to prepare tx stream: %d\0A\00", align 1
@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_stream_start_duplex(%struct.snd_oxfw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_oxfw*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %3, align 8
  %5 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %6 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %132

12:                                               ; preds = %1
  %13 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %14 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %13, i32 0, i32 6
  %15 = call i64 @amdtp_streaming_error(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %19 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %18, i32 0, i32 5
  %20 = call i64 @amdtp_streaming_error(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17, %12
  %23 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %24 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %23, i32 0, i32 4
  %25 = call i32 @amdtp_domain_stop(i32* %24)
  %26 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %27 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %26, i32 0, i32 3
  %28 = call i32 @cmp_connection_break(i32* %27)
  %29 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %30 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %35 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %34, i32 0, i32 1
  %36 = call i32 @cmp_connection_break(i32* %35)
  br label %37

37:                                               ; preds = %33, %22
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %40 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %39, i32 0, i32 6
  %41 = call i32 @amdtp_stream_running(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %114, label %43

43:                                               ; preds = %38
  %44 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %45 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %46 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %45, i32 0, i32 6
  %47 = call i32 @start_stream(%struct.snd_oxfw* %44, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %52 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %51, i32 0, i32 7
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %115

57:                                               ; preds = %43
  %58 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %59 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %64 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %63, i32 0, i32 5
  %65 = call i32 @amdtp_stream_running(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %69 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %70 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %69, i32 0, i32 5
  %71 = call i32 @start_stream(%struct.snd_oxfw* %68, i32* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %76 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %75, i32 0, i32 7
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %115

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %62, %57
  %83 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %84 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %83, i32 0, i32 4
  %85 = call i32 @amdtp_domain_start(i32* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %115

89:                                               ; preds = %82
  %90 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %91 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %90, i32 0, i32 6
  %92 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %93 = call i32 @amdtp_stream_wait_callback(i32* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %115

98:                                               ; preds = %89
  %99 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %100 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %105 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %104, i32 0, i32 5
  %106 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %107 = call i32 @amdtp_stream_wait_callback(i32* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %115

112:                                              ; preds = %103
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %38
  store i32 0, i32* %2, align 4
  br label %132

115:                                              ; preds = %109, %95, %88, %74, %50
  %116 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %117 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %116, i32 0, i32 4
  %118 = call i32 @amdtp_domain_stop(i32* %117)
  %119 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %120 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %119, i32 0, i32 3
  %121 = call i32 @cmp_connection_break(i32* %120)
  %122 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %123 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %128 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %127, i32 0, i32 1
  %129 = call i32 @cmp_connection_break(i32* %128)
  br label %130

130:                                              ; preds = %126, %115
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %114, %9
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @start_stream(%struct.snd_oxfw*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
