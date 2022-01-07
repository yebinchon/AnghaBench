; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_hdmi_std_setup_channel_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdmi_chmap.c_hdmi_std_setup_channel_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_cea_channel_speaker_allocation = type { i32, i32* }
%struct.hdac_chmap = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32)* }

@channel_allocations = common dso_local global %struct.hdac_cea_channel_speaker_allocation* null, align 8
@hdmi_channel_mapping = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"HDMI: channel mapping failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_chmap*, i32, i32, i32)* @hdmi_std_setup_channel_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_std_setup_channel_mapping(%struct.hdac_chmap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hdac_chmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hdac_cea_channel_speaker_allocation*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hdac_chmap* %0, %struct.hdac_chmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @get_channel_allocation_order(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** @channel_allocations, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %20, i64 %22
  store %struct.hdac_cea_channel_speaker_allocation* %23, %struct.hdac_cea_channel_speaker_allocation** %9, align 8
  %24 = load i32**, i32*** @hdmi_channel_mapping, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %110

32:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %76, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %9, align 8
  %36 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %14, align 4
  %42 = icmp sge i32 %41, 8
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %40
  %47 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %9, align 8
  %48 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sub nsw i32 7, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %46, %40
  %58 = phi i1 [ false, %40 ], [ %56, %46 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %40

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = or i32 %64, %65
  %68 = load i32**, i32*** @hdmi_channel_mapping, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %67, i32* %75, align 4
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %33

79:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %106, %79
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %9, align 8
  %85 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 7, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = or i32 240, %94
  %96 = load i32**, i32*** @hdmi_channel_mapping, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %95, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %80

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %109, %4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.hdac_cea_channel_speaker_allocation*, %struct.hdac_cea_channel_speaker_allocation** %9, align 8
  %117 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, %struct.hdac_cea_channel_speaker_allocation* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 %121, 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %114

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %141, %131
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 8
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = or i32 240, %136
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %139
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %132

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %110
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %194, %145
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 8
  br i1 %148, label %149, label %197

149:                                              ; preds = %146
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  br label %167

157:                                              ; preds = %149
  %158 = load i32**, i32*** @hdmi_channel_mapping, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  br label %167

167:                                              ; preds = %157, %152
  %168 = phi i32 [ %156, %152 ], [ %166, %157 ]
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = and i32 %169, 15
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 240
  %173 = ashr i32 %172, 4
  store i32 %173, i32* %17, align 4
  %174 = load %struct.hdac_chmap*, %struct.hdac_chmap** %5, align 8
  %175 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32 (%struct.TYPE_4__*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32)** %176, align 8
  %178 = load %struct.hdac_chmap*, %struct.hdac_chmap** %5, align 8
  %179 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 %177(%struct.TYPE_4__* %180, i32 %181, i32 %182, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %167
  %188 = load %struct.hdac_chmap*, %struct.hdac_chmap** %5, align 8
  %189 = getelementptr inbounds %struct.hdac_chmap, %struct.hdac_chmap* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = call i32 @dev_dbg(i32* %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %197

193:                                              ; preds = %167
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  br label %146

197:                                              ; preds = %187, %146
  ret void
}

declare dso_local i32 @get_channel_allocation_order(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
