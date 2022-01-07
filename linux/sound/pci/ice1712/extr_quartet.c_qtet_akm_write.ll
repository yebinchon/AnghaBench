; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { %struct.snd_ice1712** }
%struct.snd_ice1712 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.1*)*, i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.4*, i32)* }
%struct.snd_ice1712.0 = type opaque
%struct.snd_ice1712.1 = type opaque
%struct.snd_ice1712.2 = type opaque
%struct.snd_ice1712.3 = type opaque
%struct.snd_ice1712.4 = type opaque

@GPIO_SPI_ALL = common dso_local global i32 0, align 4
@GPIO_SPI_CSN1 = common dso_local global i32 0, align 4
@GPIO_SPI_CSN0 = common dso_local global i32 0, align 4
@AK4620_ADDR = common dso_local global i32 0, align 4
@GPIO_D5_SPI_CCLK = common dso_local global i32 0, align 4
@GPIO_D4_SPI_CDTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32, i8, i8)* @qtet_akm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtet_akm_write(%struct.snd_akm4xxx* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.snd_akm4xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_ice1712*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %14 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %5, align 8
  %15 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %14, i32 0, i32 0
  %16 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %15, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %16, i64 0
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %17, align 8
  store %struct.snd_ice1712* %18, %struct.snd_ice1712** %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 4
  br label %24

24:                                               ; preds = %21, %4
  %25 = phi i1 [ true, %4 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %194

30:                                               ; preds = %24
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.snd_ice1712.0*)*, i32 (%struct.snd_ice1712.0*)** %33, align 8
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %36 = bitcast %struct.snd_ice1712* %35 to %struct.snd_ice1712.0*
  %37 = call i32 %34(%struct.snd_ice1712.0* %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %39 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.2*, i32)** %40, align 8
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %43 = bitcast %struct.snd_ice1712* %42 to %struct.snd_ice1712.2*
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GPIO_SPI_ALL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 %41(%struct.snd_ice1712.2* %43, i32 %46)
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %50, align 8
  %52 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %53 = bitcast %struct.snd_ice1712* %52 to %struct.snd_ice1712.3*
  %54 = load i32, i32* @GPIO_SPI_ALL, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 %51(%struct.snd_ice1712.3* %53, i32 %55)
  %57 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %58 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.snd_ice1712.1*)*, i32 (%struct.snd_ice1712.1*)** %59, align 8
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %62 = bitcast %struct.snd_ice1712* %61 to %struct.snd_ice1712.1*
  %63 = call i32 %60(%struct.snd_ice1712.1* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @GPIO_SPI_ALL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %69, align 8
  %71 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %72 = bitcast %struct.snd_ice1712* %71 to %struct.snd_ice1712.4*
  %73 = load i32, i32* %9, align 4
  %74 = call i32 %70(%struct.snd_ice1712.4* %72, i32 %73)
  %75 = call i32 @udelay(i32 100)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %30
  %79 = load i32, i32* @GPIO_SPI_CSN1, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %88

83:                                               ; preds = %30
  %84 = load i32, i32* @GPIO_SPI_CSN0, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %90 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %91, align 8
  %93 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %94 = bitcast %struct.snd_ice1712* %93 to %struct.snd_ice1712.4*
  %95 = load i32, i32* %9, align 4
  %96 = call i32 %92(%struct.snd_ice1712.4* %94, i32 %95)
  %97 = call i32 @udelay(i32 100)
  %98 = load i32, i32* @AK4620_ADDR, align 4
  %99 = shl i32 %98, 6
  %100 = or i32 %99, 32
  %101 = load i8, i8* %7, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 31
  %104 = or i32 %100, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = shl i32 %105, 8
  %107 = load i8, i8* %8, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %106, %108
  store i32 %109, i32* %12, align 4
  store i32 15, i32* %11, align 4
  br label %110

110:                                              ; preds = %163, %88
  %111 = load i32, i32* %11, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %166

113:                                              ; preds = %110
  %114 = load i32, i32* @GPIO_D5_SPI_CCLK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %119 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %120, align 8
  %122 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %123 = bitcast %struct.snd_ice1712* %122 to %struct.snd_ice1712.4*
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %121(%struct.snd_ice1712.4* %123, i32 %124)
  %126 = call i32 @udelay(i32 100)
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = shl i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %113
  %133 = load i32, i32* @GPIO_D4_SPI_CDTO, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %141

136:                                              ; preds = %113
  %137 = load i32, i32* @GPIO_D4_SPI_CDTO, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %136, %132
  %142 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %143 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 4
  %145 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %144, align 8
  %146 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %147 = bitcast %struct.snd_ice1712* %146 to %struct.snd_ice1712.4*
  %148 = load i32, i32* %9, align 4
  %149 = call i32 %145(%struct.snd_ice1712.4* %147, i32 %148)
  %150 = call i32 @udelay(i32 100)
  %151 = load i32, i32* @GPIO_D5_SPI_CCLK, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %155 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %156, align 8
  %158 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %159 = bitcast %struct.snd_ice1712* %158 to %struct.snd_ice1712.4*
  %160 = load i32, i32* %9, align 4
  %161 = call i32 %157(%struct.snd_ice1712.4* %159, i32 %160)
  %162 = call i32 @udelay(i32 100)
  br label %163

163:                                              ; preds = %141
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %11, align 4
  br label %110

166:                                              ; preds = %110
  %167 = load i32, i32* @GPIO_SPI_ALL, align 4
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %171 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 4
  %173 = load i32 (%struct.snd_ice1712.4*, i32)*, i32 (%struct.snd_ice1712.4*, i32)** %172, align 8
  %174 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %175 = bitcast %struct.snd_ice1712* %174 to %struct.snd_ice1712.4*
  %176 = load i32, i32* %9, align 4
  %177 = call i32 %173(%struct.snd_ice1712.4* %175, i32 %176)
  %178 = call i32 @udelay(i32 100)
  %179 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %180 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  %182 = load i32 (%struct.snd_ice1712.3*, i32)*, i32 (%struct.snd_ice1712.3*, i32)** %181, align 8
  %183 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %184 = bitcast %struct.snd_ice1712* %183 to %struct.snd_ice1712.3*
  %185 = call i32 %182(%struct.snd_ice1712.3* %184, i32 16777215)
  %186 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %187 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = load i32 (%struct.snd_ice1712.2*, i32)*, i32 (%struct.snd_ice1712.2*, i32)** %188, align 8
  %190 = load %struct.snd_ice1712*, %struct.snd_ice1712** %13, align 8
  %191 = bitcast %struct.snd_ice1712* %190 to %struct.snd_ice1712.2*
  %192 = load i32, i32* %10, align 4
  %193 = call i32 %189(%struct.snd_ice1712.2* %191, i32 %192)
  br label %194

194:                                              ; preds = %166, %29
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
