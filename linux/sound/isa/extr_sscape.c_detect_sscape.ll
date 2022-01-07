; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_detect_sscape.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_sscape.c_detect_sscape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soundscape = type { i64, i64, i32, i32 }

@IC_ODIE = common dso_local global i64 0, align 8
@IC_OPUS = common dso_local global i64 0, align 8
@SSCAPE_VIVO = common dso_local global i64 0, align 8
@GA_HMCTL_REG = common dso_local global i32 0, align 4
@MEDIA_FX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soundscape*, i64)* @detect_sscape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_sscape(%struct.soundscape* %0, i64 %1) #0 {
  %3 = alloca %struct.soundscape*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.soundscape* %0, %struct.soundscape** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %9 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %8, i32 0, i32 2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %13 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @HOST_CTRL_IO(i32 %14)
  %16 = call i32 @inb(i64 %15)
  %17 = and i32 %16, 120
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %221

20:                                               ; preds = %2
  %21 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %22 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ODIE_ADDR_IO(i32 %23)
  %25 = call i32 @inb(i64 %24)
  %26 = and i32 %25, 240
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %221

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* @IC_ODIE, align 8
  %36 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %37 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %48

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 96
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* @IC_OPUS, align 8
  %44 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %45 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %47

46:                                               ; preds = %38
  br label %221

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %50 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ODIE_ADDR_IO(i32 %51)
  %53 = call i32 @outb(i32 250, i64 %52)
  %54 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %55 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ODIE_ADDR_IO(i32 %56)
  %58 = call i32 @inb(i64 %57)
  %59 = and i32 %58, 159
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %221

62:                                               ; preds = %48
  %63 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %64 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ODIE_ADDR_IO(i32 %65)
  %67 = call i32 @outb(i32 254, i64 %66)
  %68 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %69 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ODIE_ADDR_IO(i32 %70)
  %72 = call i32 @inb(i64 %71)
  %73 = and i32 %72, 159
  %74 = icmp ne i32 %73, 14
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %221

76:                                               ; preds = %62
  %77 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %78 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @ODIE_ADDR_IO(i32 %79)
  %81 = call i32 @outb(i32 254, i64 %80)
  %82 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %83 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ODIE_DATA_IO(i32 %84)
  %86 = call i32 @inb(i64 %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %88 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SSCAPE_VIVO, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %76
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, 159
  %95 = icmp ne i32 %94, 14
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %221

97:                                               ; preds = %92, %76
  %98 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %99 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IC_OPUS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %105 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @activate_ad1845_unsafe(i32 %106)
  br label %108

108:                                              ; preds = %103, %97
  %109 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %110 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SSCAPE_VIVO, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i64, i64* %4, align 8
  %116 = add nsw i64 %115, 4
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %119 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @GA_HMCTL_REG, align 4
  %122 = call i32 @sscape_read_unsafe(i32 %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %124 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GA_HMCTL_REG, align 4
  %127 = load i32, i32* %6, align 4
  %128 = or i32 %127, 192
  %129 = call i32 @sscape_write_unsafe(i32 %125, i32 %126, i32 %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %149, %117
  %131 = load i32, i32* %6, align 4
  %132 = icmp ult i32 %131, 500
  br i1 %132, label %133, label %152

133:                                              ; preds = %130
  %134 = load i64, i64* %4, align 8
  %135 = call i32 @inb(i64 %134)
  %136 = and i32 %135, 128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %152

139:                                              ; preds = %133
  %140 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %141 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %140, i32 0, i32 2
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32* %141, i64 %142)
  %144 = call i32 @msleep(i32 1)
  %145 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %146 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %145, i32 0, i32 2
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %130

152:                                              ; preds = %138, %130
  %153 = load i64, i64* %4, align 8
  %154 = call i32 @inb(i64 %153)
  %155 = and i32 %154, 128
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %221

158:                                              ; preds = %152
  %159 = load i64, i64* %4, align 8
  %160 = add nsw i64 %159, 2
  %161 = call i32 @inb(i64 %160)
  %162 = icmp eq i32 %161, 255
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %221

164:                                              ; preds = %158
  %165 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %166 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @GA_HMCTL_REG, align 4
  %169 = call i32 @sscape_read_unsafe(i32 %167, i32 %168)
  %170 = and i32 %169, 63
  store i32 %170, i32* %6, align 4
  %171 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %172 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @GA_HMCTL_REG, align 4
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @sscape_write_unsafe(i32 %173, i32 %174, i32 %175)
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @inb(i64 %177)
  %179 = and i32 %178, 128
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %164
  %182 = load i64, i64* @MEDIA_FX, align 8
  %183 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %184 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %181, %164
  %186 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %187 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @GA_HMCTL_REG, align 4
  %190 = call i32 @sscape_read_unsafe(i32 %188, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %192 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @GA_HMCTL_REG, align 4
  %195 = load i32, i32* %6, align 4
  %196 = or i32 %195, 192
  %197 = call i32 @sscape_write_unsafe(i32 %193, i32 %194, i32 %196)
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %217, %185
  %199 = load i32, i32* %6, align 4
  %200 = icmp ult i32 %199, 500
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @inb(i64 %202)
  %204 = and i32 %203, 128
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %220

207:                                              ; preds = %201
  %208 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %209 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %208, i32 0, i32 2
  %210 = load i64, i64* %5, align 8
  %211 = call i32 @spin_unlock_irqrestore(i32* %209, i64 %210)
  %212 = call i32 @msleep(i32 1)
  %213 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %214 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %213, i32 0, i32 2
  %215 = load i64, i64* %5, align 8
  %216 = call i32 @spin_lock_irqsave(i32* %214, i64 %215)
  br label %217

217:                                              ; preds = %207
  %218 = load i32, i32* %6, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %198

220:                                              ; preds = %206, %198
  store i32 1, i32* %7, align 4
  br label %221

221:                                              ; preds = %220, %163, %157, %96, %75, %61, %46, %30, %19
  %222 = load %struct.soundscape*, %struct.soundscape** %3, align 8
  %223 = getelementptr inbounds %struct.soundscape, %struct.soundscape* %222, i32 0, i32 2
  %224 = load i64, i64* %5, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @HOST_CTRL_IO(i32) #1

declare dso_local i64 @ODIE_ADDR_IO(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @ODIE_DATA_IO(i32) #1

declare dso_local i32 @activate_ad1845_unsafe(i32) #1

declare dso_local i32 @sscape_read_unsafe(i32, i32) #1

declare dso_local i32 @sscape_write_unsafe(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
