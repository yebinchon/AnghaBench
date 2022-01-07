; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_advance_esn.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_replay.c_xfrm_replay_advance_esn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__*, %struct.xfrm_replay_state_esn* }
%struct.TYPE_2__ = type { i32 (%struct.xfrm_state*, i32)* }
%struct.xfrm_replay_state_esn = type { i32, i32, i32, i32* }

@XFRM_REPLAY_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, i32)* @xfrm_replay_advance_esn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_replay_advance_esn(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfrm_replay_state_esn*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %15, align 8
  store %struct.xfrm_replay_state_esn* %16, %struct.xfrm_replay_state_esn** %13, align 8
  %17 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %18 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %210

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ntohl(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %26 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %30 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @xfrm_replay_seqhi(%struct.xfrm_state* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %38 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %46 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %22
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %154

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %62 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %9, align 4
  br label %73

65:                                               ; preds = %52
  %66 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %67 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %65, %59
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %76 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %107, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %85, %86
  %88 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %89 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = urem i32 %87, %90
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = lshr i32 %92, 5
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 31
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 1, %96
  %98 = xor i32 %97, -1
  %99 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %100 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %98
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %84
  %108 = load i32, i32* %7, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %80

110:                                              ; preds = %80
  br label %132

111:                                              ; preds = %73
  %112 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %113 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  %116 = ashr i32 %115, 5
  store i32 %116, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %128, %111
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ule i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %123 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %117

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %110
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %137 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = srem i32 %135, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %142 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp sgt i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %132
  %149 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %150 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %148, %132
  br label %180

154:                                              ; preds = %49
  %155 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %156 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %154
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %168 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = srem i32 %166, %169
  store i32 %170, i32* %5, align 4
  br label %179

171:                                              ; preds = %154
  %172 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %173 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sub nsw i32 %174, %177
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %171, %163
  br label %180

180:                                              ; preds = %179, %153
  %181 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %182 = call i32 @xfrm_dev_state_advance_esn(%struct.xfrm_state* %181)
  %183 = load i32, i32* %5, align 4
  %184 = lshr i32 %183, 5
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %5, align 4
  %186 = and i32 %185, 31
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = shl i32 1, %187
  %189 = load %struct.xfrm_replay_state_esn*, %struct.xfrm_replay_state_esn** %13, align 8
  %190 = getelementptr inbounds %struct.xfrm_replay_state_esn, %struct.xfrm_replay_state_esn* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %188
  store i32 %196, i32* %194, align 4
  %197 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %198 = call i32 @xs_net(%struct.xfrm_state* %197)
  %199 = call i64 @xfrm_aevent_is_on(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %180
  %202 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %203 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %202, i32 0, i32 0
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32 (%struct.xfrm_state*, i32)*, i32 (%struct.xfrm_state*, i32)** %205, align 8
  %207 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %208 = load i32, i32* @XFRM_REPLAY_UPDATE, align 4
  %209 = call i32 %206(%struct.xfrm_state* %207, i32 %208)
  br label %210

210:                                              ; preds = %21, %201, %180
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @xfrm_replay_seqhi(%struct.xfrm_state*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_dev_state_advance_esn(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm_aevent_is_on(i32) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
