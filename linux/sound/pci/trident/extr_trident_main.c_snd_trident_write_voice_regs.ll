; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_voice_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_write_voice_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@T4D_LFO_GC_CIR = common dso_local global i64 0, align 8
@CH_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_trident_write_voice_regs(%struct.snd_trident* %0, %struct.snd_trident_voice* %1) #0 {
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_trident_voice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  store %struct.snd_trident* %0, %struct.snd_trident** %3, align 8
  store %struct.snd_trident_voice* %1, %struct.snd_trident_voice** %4, align 8
  %7 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %8 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %12 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 31
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %16 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 127
  %19 = shl i32 %18, 24
  %20 = or i32 %14, %19
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  %25 = shl i32 %24, 12
  %26 = or i32 %20, %25
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %29 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = shl i32 %31, 14
  %33 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %34 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 127
  %37 = shl i32 %36, 7
  %38 = or i32 %32, %37
  %39 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %40 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  %43 = or i32 %38, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %45 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %196 [
    i32 128, label %47
    i32 130, label %106
    i32 129, label %148
  ]

47:                                               ; preds = %2
  %48 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %49 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 31
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %54 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1023
  br label %68

57:                                               ; preds = %47
  %58 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %59 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1020
  %62 = shl i32 %61, 14
  %63 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %64 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 4095
  %67 = or i32 %62, %66
  br label %68

68:                                               ; preds = %57, %52
  %69 = phi i32 [ %56, %52 ], [ %67, %57 ]
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 16
  %73 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %74 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 16
  %77 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %78 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 4095
  %81 = shl i32 %80, 4
  %82 = or i32 %76, %81
  %83 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %84 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = or i32 %82, %86
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %87, i32* %88, align 16
  %89 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %90 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 16
  %93 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %94 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %93, i32 0, i32 14
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 65535
  %97 = or i32 %92, %96
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %97, i32* %98, align 8
  %99 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %100 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %99, i32 0, i32 15
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %102, %103
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %104, i32* %105, align 4
  br label %198

106:                                              ; preds = %2
  %107 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %108 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 1020
  %111 = shl i32 %110, 14
  %112 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %113 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 4095
  %116 = or i32 %111, %115
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %118 = load i32, i32* %117, align 16
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 16
  %120 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %121 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %120, i32 0, i32 10
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 16
  %124 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %125 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 4095
  %128 = shl i32 %127, 4
  %129 = or i32 %123, %128
  %130 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %131 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 15
  %134 = or i32 %129, %133
  %135 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %134, i32* %135, align 16
  %136 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %137 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 16
  %140 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %141 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 65535
  %144 = or i32 %139, %143
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %144, i32* %145, align 8
  %146 = load i32, i32* %5, align 4
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %146, i32* %147, align 4
  br label %198

148:                                              ; preds = %2
  %149 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %150 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1020
  %153 = shl i32 %152, 14
  %154 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %155 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 4095
  %158 = or i32 %153, %157
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %160 = load i32, i32* %159, align 16
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 16
  %162 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %163 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %162, i32 0, i32 14
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 24
  %166 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %167 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 16777215
  %170 = or i32 %165, %169
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %170, i32* %171, align 16
  %172 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %173 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 16
  %176 = and i32 %175, -16777216
  %177 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %178 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %177, i32 0, i32 13
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 16777215
  %181 = or i32 %176, %180
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %181, i32* %182, align 8
  %183 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %184 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = shl i32 %185, 20
  %187 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %188 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %187, i32 0, i32 12
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 15
  %191 = shl i32 %190, 16
  %192 = or i32 %186, %191
  %193 = load i32, i32* %5, align 4
  %194 = or i32 %192, %193
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %194, i32* %195, align 4
  br label %198

196:                                              ; preds = %2
  %197 = call i32 (...) @snd_BUG()
  br label %241

198:                                              ; preds = %148, %106, %68
  %199 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %4, align 8
  %200 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %203 = load i64, i64* @T4D_LFO_GC_CIR, align 8
  %204 = call i32 @TRID_REG(%struct.snd_trident* %202, i64 %203)
  %205 = call i32 @outb(i32 %201, i32 %204)
  %206 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %207 = load i32, i32* %206, align 16
  %208 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %209 = load i64, i64* @CH_START, align 8
  %210 = add nsw i64 %209, 0
  %211 = call i32 @TRID_REG(%struct.snd_trident* %208, i64 %210)
  %212 = call i32 @outl(i32 %207, i32 %211)
  %213 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %216 = load i64, i64* @CH_START, align 8
  %217 = add nsw i64 %216, 4
  %218 = call i32 @TRID_REG(%struct.snd_trident* %215, i64 %217)
  %219 = call i32 @outl(i32 %214, i32 %218)
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %223 = load i64, i64* @CH_START, align 8
  %224 = add nsw i64 %223, 8
  %225 = call i32 @TRID_REG(%struct.snd_trident* %222, i64 %224)
  %226 = call i32 @outl(i32 %221, i32 %225)
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %230 = load i64, i64* @CH_START, align 8
  %231 = add nsw i64 %230, 12
  %232 = call i32 @TRID_REG(%struct.snd_trident* %229, i64 %231)
  %233 = call i32 @outl(i32 %228, i32 %232)
  %234 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  %235 = load i32, i32* %234, align 16
  %236 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %237 = load i64, i64* @CH_START, align 8
  %238 = add nsw i64 %237, 16
  %239 = call i32 @TRID_REG(%struct.snd_trident* %236, i64 %238)
  %240 = call i32 @outl(i32 %235, i32 %239)
  br label %241

241:                                              ; preds = %198, %196
  ret void
}

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
