; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-stream.c_snd_oxfw_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i64, i32, %struct.amdtp_stream, i64, %struct.amdtp_stream, %struct.TYPE_2__*, i32, i32 }
%struct.amdtp_stream = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_oxfw_stream_formation = type { i32, i32 }

@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fail to set stream format: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_oxfw_stream_reserve_duplex(%struct.snd_oxfw* %0, %struct.amdtp_stream* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_oxfw*, align 8
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_oxfw_stream_formation, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %6, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %15 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %14, i32 0, i32 4
  %16 = call i32 @check_connection_used_by_others(%struct.snd_oxfw* %13, %struct.amdtp_stream* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %153

21:                                               ; preds = %4
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %23 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %28 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %29 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %28, i32 0, i32 2
  %30 = call i32 @check_connection_used_by_others(%struct.snd_oxfw* %27, %struct.amdtp_stream* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %153

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %38 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %39 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %38, i32 0, i32 2
  %40 = icmp eq %struct.amdtp_stream* %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  store i32 %42, i32* %11, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw* %46, i32 %47, %struct.snd_oxfw_stream_formation* %10)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %153

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %66, %61
  %72 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %73 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %72, i32 0, i32 7
  %74 = call i32 @amdtp_domain_stop(i32* %73)
  %75 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %76 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %75, i32 0, i32 1
  %77 = call i32 @cmp_connection_break(i32* %76)
  %78 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %79 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %78, i32 0, i32 1
  %80 = call i32 @cmp_connection_release(i32* %79)
  %81 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %82 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %71
  %86 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %87 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %86, i32 0, i32 6
  %88 = call i32 @cmp_connection_break(i32* %87)
  %89 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %90 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %89, i32 0, i32 6
  %91 = call i32 @cmp_connection_release(i32* %90)
  br label %92

92:                                               ; preds = %85, %71
  br label %93

93:                                               ; preds = %92, %66
  %94 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %95 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.snd_oxfw_stream_formation, %struct.snd_oxfw_stream_formation* %10, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %152

108:                                              ; preds = %103, %98, %93
  %109 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %110 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @set_stream_format(%struct.snd_oxfw* %109, %struct.amdtp_stream* %110, i32 %111, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %118 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %117, i32 0, i32 5
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %5, align 4
  br label %153

124:                                              ; preds = %108
  %125 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %126 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %127 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %126, i32 0, i32 4
  %128 = call i32 @keep_resources(%struct.snd_oxfw* %125, %struct.amdtp_stream* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %153

133:                                              ; preds = %124
  %134 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %135 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %140 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %141 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %140, i32 0, i32 2
  %142 = call i32 @keep_resources(%struct.snd_oxfw* %139, %struct.amdtp_stream* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load %struct.snd_oxfw*, %struct.snd_oxfw** %6, align 8
  %147 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %146, i32 0, i32 1
  %148 = call i32 @cmp_connection_release(i32* %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %5, align 4
  br label %153

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %103
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %145, %131, %116, %51, %33, %19
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @check_connection_used_by_others(%struct.snd_oxfw*, %struct.amdtp_stream*) #1

declare dso_local i32 @snd_oxfw_stream_get_current_formation(%struct.snd_oxfw*, i32, %struct.snd_oxfw_stream_formation*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @cmp_connection_release(i32*) #1

declare dso_local i32 @set_stream_format(%struct.snd_oxfw*, %struct.amdtp_stream*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @keep_resources(%struct.snd_oxfw*, %struct.amdtp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
