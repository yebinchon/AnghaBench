; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_get_codec_type.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_via.c_get_codec_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNKNOWN = common dso_local global i32 0, align 4
@VT1708 = common dso_local global i32 0, align 4
@VT1709_10CH = common dso_local global i32 0, align 4
@VT1709_6CH = common dso_local global i32 0, align 4
@VT1708B_8CH = common dso_local global i32 0, align 4
@AC_PAR_CONNLIST_LEN = common dso_local global i32 0, align 4
@VT1708BCE = common dso_local global i32 0, align 4
@VT1708B_4CH = common dso_local global i32 0, align 4
@VT1708S = common dso_local global i32 0, align 4
@VT1702 = common dso_local global i32 0, align 4
@VT1718S = common dso_local global i32 0, align 4
@VT1716S = common dso_local global i32 0, align 4
@VT2002P = common dso_local global i32 0, align 4
@VT1812 = common dso_local global i32 0, align 4
@VT1802 = common dso_local global i32 0, align 4
@VT1705CF = common dso_local global i32 0, align 4
@VT1808 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @get_codec_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_type(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 16
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 4358
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @UNKNOWN, align 4
  store i32 %18, i32* %6, align 4
  br label %167

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 5896
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 5899
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @VT1708, align 4
  store i32 %26, i32* %6, align 4
  br label %166

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 59152
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 59155
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @VT1709_10CH, align 4
  store i32 %34, i32* %6, align 4
  br label %165

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 59156
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp sle i32 %39, 59159
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @VT1709_6CH, align 4
  store i32 %42, i32* %6, align 4
  br label %164

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 59168
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 59171
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* @VT1708B_8CH, align 4
  store i32 %50, i32* %6, align 4
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = load i32, i32* @AC_PAR_CONNLIST_LEN, align 4
  %53 = call i32 @snd_hda_param_read(%struct.hda_codec* %51, i32 22, i32 %52)
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @VT1708BCE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %49
  br label %163

58:                                               ; preds = %46, %43
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 59172
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp sle i32 %62, 59175
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @VT1708B_4CH, align 4
  store i32 %65, i32* %6, align 4
  br label %162

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 4095
  %69 = icmp eq i32 %68, 919
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 12
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @VT1708S, align 4
  store i32 %75, i32* %6, align 4
  br label %161

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 4095
  %79 = icmp eq i32 %78, 920
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 12
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @VT1702, align 4
  store i32 %85, i32* %6, align 4
  br label %160

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 4095
  %89 = icmp eq i32 %88, 1064
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = ashr i32 %91, 12
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @VT1718S, align 4
  store i32 %95, i32* %6, align 4
  br label %159

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 1075
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 42785
  br i1 %101, label %102, label %104

102:                                              ; preds = %99, %96
  %103 = load i32, i32* @VT1716S, align 4
  store i32 %103, i32* %6, align 4
  br label %158

104:                                              ; preds = %99
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 1089
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = icmp eq i32 %108, 17473
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @VT1718S, align 4
  store i32 %111, i32* %6, align 4
  br label %157

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 1080
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 17464
  br i1 %117, label %118, label %120

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @VT2002P, align 4
  store i32 %119, i32* %6, align 4
  br label %156

120:                                              ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 1096
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @VT1812, align 4
  store i32 %124, i32* %6, align 4
  br label %155

125:                                              ; preds = %120
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 1088
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* @VT1708S, align 4
  store i32 %129, i32* %6, align 4
  br label %154

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 4095
  %133 = icmp eq i32 %132, 1094
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @VT1802, align 4
  store i32 %135, i32* %6, align 4
  br label %153

136:                                              ; preds = %130
  %137 = load i32, i32* %5, align 4
  %138 = icmp eq i32 %137, 18272
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @VT1705CF, align 4
  store i32 %140, i32* %6, align 4
  br label %152

141:                                              ; preds = %136
  %142 = load i32, i32* %5, align 4
  %143 = icmp eq i32 %142, 18273
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = icmp eq i32 %145, 18274
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @VT1808, align 4
  store i32 %148, i32* %6, align 4
  br label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @UNKNOWN, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %128
  br label %155

155:                                              ; preds = %154, %123
  br label %156

156:                                              ; preds = %155, %118
  br label %157

157:                                              ; preds = %156, %110
  br label %158

158:                                              ; preds = %157, %102
  br label %159

159:                                              ; preds = %158, %94
  br label %160

160:                                              ; preds = %159, %84
  br label %161

161:                                              ; preds = %160, %74
  br label %162

162:                                              ; preds = %161, %64
  br label %163

163:                                              ; preds = %162, %57
  br label %164

164:                                              ; preds = %163, %41
  br label %165

165:                                              ; preds = %164, %33
  br label %166

166:                                              ; preds = %165, %25
  br label %167

167:                                              ; preds = %166, %17
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
