; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_put_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_put_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_cs4231 = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4231_put_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_put_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_cs4231*, align 8
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
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = call %struct.snd_cs4231* @snd_kcontrol_chip(%struct.snd_kcontrol* %16)
  store %struct.snd_cs4231* %17, %struct.snd_cs4231** %5, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 7
  store i32 %31, i32* %9, align 4
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 19
  %36 = and i32 %35, 7
  store i32 %36, i32* %10, align 4
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  store i32 %41, i32* %11, align 4
  %42 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %43 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 22
  %46 = and i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %53, %54
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %14, align 2
  %57 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %63, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %15, align 2
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %2
  %70 = load i32, i32* %11, align 4
  %71 = load i16, i16* %14, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %70, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %14, align 2
  %75 = load i32, i32* %11, align 4
  %76 = load i16, i16* %15, align 2
  %77 = zext i16 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = trunc i32 %78 to i16
  store i16 %79, i16* %15, align 2
  br label %80

80:                                               ; preds = %69, %2
  %81 = load i32, i32* %9, align 4
  %82 = load i16, i16* %14, align 2
  %83 = zext i16 %82 to i32
  %84 = shl i32 %83, %81
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %14, align 2
  %86 = load i32, i32* %10, align 4
  %87 = load i16, i16* %15, align 2
  %88 = zext i16 %87 to i32
  %89 = shl i32 %88, %86
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %15, align 2
  %91 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %92 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %91, i32 0, i32 1
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %96 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %101, %105
  %107 = load i16, i16* %14, align 2
  %108 = zext i16 %107 to i32
  %109 = or i32 %106, %108
  %110 = trunc i32 %109 to i16
  store i16 %110, i16* %14, align 2
  %111 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %112 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = shl i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = and i32 %117, %121
  %123 = load i16, i16* %15, align 2
  %124 = zext i16 %123 to i32
  %125 = or i32 %122, %124
  %126 = trunc i32 %125 to i16
  store i16 %126, i16* %15, align 2
  %127 = load i16, i16* %14, align 2
  %128 = zext i16 %127 to i32
  %129 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %130 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %128, %135
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i16, i16* %15, align 2
  %139 = zext i16 %138 to i32
  %140 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %141 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %139, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  %151 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i16, i16* %14, align 2
  %154 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %151, i32 %152, i16 zeroext %153)
  %155 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i16, i16* %15, align 2
  %158 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %155, i32 %156, i16 zeroext %157)
  %159 = load %struct.snd_cs4231*, %struct.snd_cs4231** %5, align 8
  %160 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %159, i32 0, i32 1
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

declare dso_local %struct.snd_cs4231* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i32, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
