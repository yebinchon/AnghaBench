; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_advance_bmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_advance_bmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__*, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.xfrm_replay_state_esn = type { i32, i32, i32* }

@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i32)* @xfrm_replay_advance_bmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_advance_bmp(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfrm_replay_state_esn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 1
  %14 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  store %struct.xfrm_replay_state_esn* %14, %struct.xfrm_replay_state_esn** %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %18 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %165

22:                                               ; preds = %2
  %23 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %24 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %28 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %33 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %111

36:                                               ; preds = %22
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %39 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %44 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %53, %54
  %56 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %57 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = urem i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = lshr i32 %60, 5
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 31
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %68 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %66
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %52
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %48

78:                                               ; preds = %48
  br label %100

79:                                               ; preds = %36
  %80 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %81 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = ashr i32 %83, 5
  store i32 %84, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %96, %79
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %91 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %85

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %78
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %101, %102
  %104 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %105 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = urem i32 %103, %106
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %110 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %137

111:                                              ; preds = %22
  %112 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %113 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp uge i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %111
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub i32 %121, %122
  %124 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %125 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = urem i32 %123, %126
  store i32 %127, i32* %5, align 4
  br label %136

128:                                              ; preds = %111
  %129 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %130 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = sub i32 %132, %133
  %135 = sub i32 %131, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %128, %120
  br label %137

137:                                              ; preds = %136, %100
  %138 = load i32, i32* %5, align 4
  %139 = lshr i32 %138, 5
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 31
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = shl i32 1, %142
  %144 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %9, align 8
  %145 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %143
  store i32 %151, i32* %149, align 4
  %152 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %153 = call i32 @xs_net(%struct.xfrm_state* %152)
  %154 = call i64 @xfrm_aevent_is_on(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %137
  %157 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %158 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %160, align 8
  %162 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %163 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %164 = call i32 %161(%struct.xfrm_state* %162, i32 %163)
  br label %165

165:                                              ; preds = %21, %156, %137
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @xfrm_aevent_is_on(i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
