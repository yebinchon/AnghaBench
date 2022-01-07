; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DAC_RST = common dso_local global i32 0, align 4
@DAC_PRECH = common dso_local global i32 0, align 4
@PA_CTRL = common dso_local global i32 0, align 4
@PA_CTRL_APAPRECH = common dso_local global i32 0, align 4
@DAC_CTRL = common dso_local global i32 0, align 4
@DAC_CTRL_ONLNOL = common dso_local global i32 0, align 4
@DAC_CTRL_ONLNOR = common dso_local global i32 0, align 4
@PA_CTRL_APALP = common dso_local global i32 0, align 4
@DAC_PRECH_ONMSTR = common dso_local global i32 0, align 4
@DAC_CTRL_ONDACL = common dso_local global i32 0, align 4
@DAC_CTRL_ONDACR = common dso_local global i32 0, align 4
@DAC_LMPG = common dso_local global i32 0, align 4
@DAC_RMPG = common dso_local global i32 0, align 4
@DAC_LLOG = common dso_local global i32 0, align 4
@DAC_RLOG = common dso_local global i32 0, align 4
@DAC_LLIG = common dso_local global i32 0, align 4
@DAC_RLIG = common dso_local global i32 0, align 4
@DAC_AUXG = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@CR_TXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*)* @snd_at73c213_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_chip_init(%struct.snd_at73c213* %0) #0 {
  %2 = alloca %struct.snd_at73c213*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %2, align 8
  store i8 0, i8* %4, align 1
  %5 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %6 = call i32 @snd_at73c213_set_bitrate(%struct.snd_at73c213* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %168

10:                                               ; preds = %1
  %11 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %12 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_enable(i32 %15)
  %17 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %18 = load i32, i32* @DAC_RST, align 4
  %19 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %17, i32 %18, i32 4)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %161

23:                                               ; preds = %10
  %24 = call i32 @msleep(i32 1)
  %25 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %26 = load i32, i32* @DAC_RST, align 4
  %27 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %25, i32 %26, i32 3)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %161

31:                                               ; preds = %23
  %32 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %33 = load i32, i32* @DAC_PRECH, align 4
  %34 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %32, i32 %33, i32 255)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %161

38:                                               ; preds = %31
  %39 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %40 = load i32, i32* @PA_CTRL, align 4
  %41 = load i32, i32* @PA_CTRL_APAPRECH, align 4
  %42 = shl i32 1, %41
  %43 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %39, i32 %40, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %161

47:                                               ; preds = %38
  %48 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %49 = load i32, i32* @DAC_CTRL, align 4
  %50 = load i32, i32* @DAC_CTRL_ONLNOL, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* @DAC_CTRL_ONLNOR, align 4
  %53 = shl i32 1, %52
  %54 = or i32 %51, %53
  %55 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %48, i32 %49, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %161

59:                                               ; preds = %47
  %60 = call i32 @msleep(i32 50)
  %61 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %62 = load i32, i32* @PA_CTRL, align 4
  %63 = load i32, i32* @PA_CTRL_APALP, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %64, 15
  %66 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %61, i32 %62, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %161

70:                                               ; preds = %59
  %71 = call i32 @msleep(i32 450)
  %72 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %73 = load i32, i32* @DAC_PRECH, align 4
  %74 = load i32, i32* @DAC_PRECH_ONMSTR, align 4
  %75 = shl i32 1, %74
  %76 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %72, i32 %73, i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %161

80:                                               ; preds = %70
  %81 = call i32 @msleep(i32 1)
  %82 = load i32, i32* @DAC_CTRL_ONDACL, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* @DAC_CTRL_ONDACR, align 4
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  %87 = load i32, i32* @DAC_CTRL_ONLNOL, align 4
  %88 = shl i32 1, %87
  %89 = or i32 %86, %88
  %90 = load i32, i32* @DAC_CTRL_ONLNOR, align 4
  %91 = shl i32 1, %90
  %92 = or i32 %89, %91
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %4, align 1
  %94 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %95 = load i32, i32* @DAC_CTRL, align 4
  %96 = load i8, i8* %4, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %94, i32 %95, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %80
  br label %161

102:                                              ; preds = %80
  %103 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %104 = load i32, i32* @DAC_LMPG, align 4
  %105 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %103, i32 %104, i32 63)
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %161

109:                                              ; preds = %102
  %110 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %111 = load i32, i32* @DAC_RMPG, align 4
  %112 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %110, i32 %111, i32 63)
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %161

116:                                              ; preds = %109
  %117 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %118 = load i32, i32* @DAC_LLOG, align 4
  %119 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %117, i32 %118, i32 63)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %161

123:                                              ; preds = %116
  %124 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %125 = load i32, i32* @DAC_RLOG, align 4
  %126 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %124, i32 %125, i32 63)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %161

130:                                              ; preds = %123
  %131 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %132 = load i32, i32* @DAC_LLIG, align 4
  %133 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %131, i32 %132, i32 17)
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %161

137:                                              ; preds = %130
  %138 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %139 = load i32, i32* @DAC_RLIG, align 4
  %140 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %138, i32 %139, i32 17)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %161

144:                                              ; preds = %137
  %145 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %146 = load i32, i32* @DAC_AUXG, align 4
  %147 = call i32 @snd_at73c213_write_reg(%struct.snd_at73c213* %145, i32 %146, i32 17)
  store i32 %147, i32* %3, align 4
  %148 = load i32, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %161

151:                                              ; preds = %144
  %152 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %153 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @CR, align 4
  %158 = load i32, i32* @CR_TXEN, align 4
  %159 = call i32 @SSC_BIT(i32 %158)
  %160 = call i32 @ssc_writel(i32 %156, i32 %157, i32 %159)
  br label %168

161:                                              ; preds = %150, %143, %136, %129, %122, %115, %108, %101, %79, %69, %58, %46, %37, %30, %22
  %162 = load %struct.snd_at73c213*, %struct.snd_at73c213** %2, align 8
  %163 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @clk_disable(i32 %166)
  br label %168

168:                                              ; preds = %161, %151, %9
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @snd_at73c213_set_bitrate(%struct.snd_at73c213*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @snd_at73c213_write_reg(%struct.snd_at73c213*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ssc_writel(i32, i32, i32) #1

declare dso_local i32 @SSC_BIT(i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
