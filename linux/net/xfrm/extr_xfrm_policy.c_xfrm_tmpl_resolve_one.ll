; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i64, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.net = type { i32 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@XFRM_MODE_BEET = common dso_local global i64 0, align 8
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_STATE_ERROR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.flowi*, %struct.xfrm_state**, i16)* @xfrm_tmpl_resolve_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_tmpl_resolve_one(%struct.xfrm_policy* %0, %struct.flowi* %1, %struct.xfrm_state** %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_state**, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfrm_state*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store %struct.xfrm_state** %2, %struct.xfrm_state*** %8, align 8
  store i16 %3, i16* %9, align 2
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %22 = call %struct.net* @xp_net(%struct.xfrm_policy* %21)
  store %struct.net* %22, %struct.net** %10, align 8
  %23 = load %struct.flowi*, %struct.flowi** %7, align 8
  %24 = load i16, i16* %9, align 2
  %25 = call i32* @xfrm_flowi_daddr(%struct.flowi* %23, i16 zeroext %24)
  store i32* %25, i32** %14, align 8
  %26 = load %struct.flowi*, %struct.flowi** %7, align 8
  %27 = load i16, i16* %9, align 2
  %28 = call i32* @xfrm_flowi_saddr(%struct.flowi* %26, i16 zeroext %27)
  store i32* %28, i32** %15, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %147, %4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %150

35:                                               ; preds = %29
  %36 = load i32*, i32** %14, align 8
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %15, align 8
  store i32* %37, i32** %19, align 8
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 2
  %40 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %40, i64 %42
  store %struct.xfrm_tmpl* %43, %struct.xfrm_tmpl** %20, align 8
  %44 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %45 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %51 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XFRM_MODE_BEET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49, %35
  %56 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %57 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* %58, i32** %18, align 8
  %59 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %60 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %59, i32 0, i32 3
  store i32* %60, i32** %19, align 8
  %61 = load i32*, i32** %19, align 8
  %62 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %63 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @xfrm_addr_any(i32* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %55
  %68 = load %struct.net*, %struct.net** %10, align 8
  %69 = load %struct.flowi*, %struct.flowi** %7, align 8
  %70 = getelementptr inbounds %struct.flowi, %struct.flowi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %74 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @xfrm_get_saddr(%struct.net* %68, i32 %71, i32* %16, i32* %72, i32 %75, i32 0)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %152

80:                                               ; preds = %67
  store i32* %16, i32** %19, align 8
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %49
  %83 = load i32*, i32** %18, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load %struct.flowi*, %struct.flowi** %7, align 8
  %86 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %87 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %88 = load i16, i16* %9, align 2
  %89 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.xfrm_state* @xfrm_state_find(i32* %83, i32* %84, %struct.flowi* %85, %struct.xfrm_tmpl* %86, %struct.xfrm_policy* %87, i32* %13, i16 zeroext %88, i32 %91)
  store %struct.xfrm_state* %92, %struct.xfrm_state** %17, align 8
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %94 = icmp ne %struct.xfrm_state* %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %82
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @XFRM_STATE_VALID, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %104 = load %struct.xfrm_state**, %struct.xfrm_state*** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %104, i64 %107
  store %struct.xfrm_state* %103, %struct.xfrm_state** %108, align 8
  %109 = load i32*, i32** %18, align 8
  store i32* %109, i32** %14, align 8
  %110 = load i32*, i32** %19, align 8
  store i32* %110, i32** %15, align 8
  br label %147

111:                                              ; preds = %95, %82
  %112 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %113 = icmp ne %struct.xfrm_state* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %116 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @XFRM_STATE_ERROR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  br label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @EAGAIN, align 4
  %126 = sub nsw i32 0, %125
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i32 [ %123, %121 ], [ %126, %124 ]
  store i32 %128, i32* %13, align 4
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %130 = call i32 @xfrm_state_put(%struct.xfrm_state* %129)
  br label %140

131:                                              ; preds = %111
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @ESRCH, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @EAGAIN, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %127
  %141 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %142 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  br label %152

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %102
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %29

150:                                              ; preds = %29
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %170

152:                                              ; preds = %145, %79
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %165, %152
  %156 = load i32, i32* %11, align 4
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load %struct.xfrm_state**, %struct.xfrm_state*** %8, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %159, i64 %161
  %163 = load %struct.xfrm_state*, %struct.xfrm_state** %162, align 8
  %164 = call i32 @xfrm_state_put(%struct.xfrm_state* %163)
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %11, align 4
  br label %155

168:                                              ; preds = %155
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %168, %150
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32* @xfrm_flowi_daddr(%struct.flowi*, i16 zeroext) #1

declare dso_local i32* @xfrm_flowi_saddr(%struct.flowi*, i16 zeroext) #1

declare dso_local i64 @xfrm_addr_any(i32*, i32) #1

declare dso_local i32 @xfrm_get_saddr(%struct.net*, i32, i32*, i32*, i32, i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_find(i32*, i32*, %struct.flowi*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
