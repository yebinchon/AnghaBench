; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_opl3sa2.c_snd_opl3sa2_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_opl3sa2 = type { i16*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_opl3sa2_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3sa2_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_opl3sa2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = call %struct.snd_opl3sa2* @snd_kcontrol_chip(%struct.snd_kcontrol* %18)
  store %struct.snd_opl3sa2* %19, %struct.snd_opl3sa2** %5, align 8
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %7, align 4
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %25 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  store i32 %28, i32* %8, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 7
  store i32 %33, i32* %9, align 4
  %34 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %35 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 19
  %38 = and i32 %37, 7
  store i32 %38, i32* %10, align 4
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %40 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 24
  %43 = and i32 %42, 255
  store i32 %43, i32* %11, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 22
  %48 = and i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %55, %56
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %14, align 2
  %59 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %60 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %65, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %15, align 2
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %2
  %72 = load i32, i32* %11, align 4
  %73 = load i16, i16* %14, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %72, %74
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %14, align 2
  %77 = load i32, i32* %11, align 4
  %78 = load i16, i16* %15, align 2
  %79 = zext i16 %78 to i32
  %80 = sub nsw i32 %77, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %15, align 2
  br label %82

82:                                               ; preds = %71, %2
  %83 = load i32, i32* %9, align 4
  %84 = load i16, i16* %14, align 2
  %85 = zext i16 %84 to i32
  %86 = shl i32 %85, %83
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %14, align 2
  %88 = load i32, i32* %10, align 4
  %89 = load i16, i16* %15, align 2
  %90 = zext i16 %89 to i32
  %91 = shl i32 %90, %88
  %92 = trunc i32 %91 to i16
  store i16 %92, i16* %15, align 2
  %93 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %94 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_lock_irqsave(i32* %94, i64 %95)
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %159

100:                                              ; preds = %82
  %101 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %102 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %101, i32 0, i32 0
  %103 = load i16*, i16** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %103, i64 %105
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %16, align 2
  %108 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %109 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %108, i32 0, i32 0
  %110 = load i16*, i16** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %110, i64 %112
  %114 = load i16, i16* %113, align 2
  store i16 %114, i16* %17, align 2
  %115 = load i16, i16* %16, align 2
  %116 = zext i16 %115 to i32
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %116, %120
  %122 = load i16, i16* %14, align 2
  %123 = zext i16 %122 to i32
  %124 = or i32 %121, %123
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %14, align 2
  %126 = load i16, i16* %17, align 2
  %127 = zext i16 %126 to i32
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 %128, %129
  %131 = xor i32 %130, -1
  %132 = and i32 %127, %131
  %133 = load i16, i16* %15, align 2
  %134 = zext i16 %133 to i32
  %135 = or i32 %132, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %15, align 2
  %137 = load i16, i16* %14, align 2
  %138 = zext i16 %137 to i32
  %139 = load i16, i16* %16, align 2
  %140 = zext i16 %139 to i32
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %100
  %143 = load i16, i16* %15, align 2
  %144 = zext i16 %143 to i32
  %145 = load i16, i16* %17, align 2
  %146 = zext i16 %145 to i32
  %147 = icmp ne i32 %144, %146
  br label %148

148:                                              ; preds = %142, %100
  %149 = phi i1 [ true, %100 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %13, align 4
  %151 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i16, i16* %14, align 2
  %154 = call i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2* %151, i32 %152, i16 zeroext %153)
  %155 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i16, i16* %15, align 2
  %158 = call i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2* %155, i32 %156, i16 zeroext %157)
  br label %195

159:                                              ; preds = %82
  %160 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %161 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %160, i32 0, i32 0
  %162 = load i16*, i16** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %162, i64 %164
  %166 = load i16, i16* %165, align 2
  store i16 %166, i16* %16, align 2
  %167 = load i16, i16* %16, align 2
  %168 = zext i16 %167 to i32
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %9, align 4
  %171 = shl i32 %169, %170
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %10, align 4
  %174 = shl i32 %172, %173
  %175 = or i32 %171, %174
  %176 = xor i32 %175, -1
  %177 = and i32 %168, %176
  %178 = load i16, i16* %14, align 2
  %179 = zext i16 %178 to i32
  %180 = or i32 %177, %179
  %181 = load i16, i16* %15, align 2
  %182 = zext i16 %181 to i32
  %183 = or i32 %180, %182
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %14, align 2
  %185 = load i16, i16* %14, align 2
  %186 = zext i16 %185 to i32
  %187 = load i16, i16* %16, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp ne i32 %186, %188
  %190 = zext i1 %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i16, i16* %14, align 2
  %194 = call i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2* %191, i32 %192, i16 zeroext %193)
  br label %195

195:                                              ; preds = %159, %148
  %196 = load %struct.snd_opl3sa2*, %struct.snd_opl3sa2** %5, align 8
  %197 = getelementptr inbounds %struct.snd_opl3sa2, %struct.snd_opl3sa2* %196, i32 0, i32 1
  %198 = load i64, i64* %6, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load i32, i32* %13, align 4
  ret i32 %200
}

declare dso_local %struct.snd_opl3sa2* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__snd_opl3sa2_write(%struct.snd_opl3sa2*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
