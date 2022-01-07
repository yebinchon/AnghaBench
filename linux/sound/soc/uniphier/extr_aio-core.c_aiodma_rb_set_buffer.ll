; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aiodma_rb_set_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CDA2D_RBADRSLOAD = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@CDA2D_RBMXIX_SPACE = common dso_local global i32 0, align 4
@CDA2D_RBMXIX_REMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aiodma_rb_set_buffer(%struct.uniphier_aio_sub* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniphier_aio_sub*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %14 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %13, i32 0, i32 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %172

32:                                               ; preds = %26
  %33 = load %struct.regmap*, %struct.regmap** %10, align 8
  %34 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %35 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %34, i32 0, i32 7
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CDA2D_RBMXCNFG(i32 %39)
  %41 = call i32 @regmap_write(%struct.regmap* %33, i32 %40, i32 0)
  %42 = load %struct.regmap*, %struct.regmap** %10, align 8
  %43 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %44 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %43, i32 0, i32 7
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @CDA2D_RBMXBGNADRS(i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @lower_32_bits(i64 %50)
  %52 = call i32 @regmap_write(%struct.regmap* %42, i32 %49, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %10, align 8
  %54 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %55 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %54, i32 0, i32 7
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @CDA2D_RBMXBGNADRSU(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @upper_32_bits(i64 %61)
  %63 = call i32 @regmap_write(%struct.regmap* %53, i32 %60, i32 %62)
  %64 = load %struct.regmap*, %struct.regmap** %10, align 8
  %65 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %66 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %65, i32 0, i32 7
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @CDA2D_RBMXENDADRS(i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @lower_32_bits(i64 %72)
  %74 = call i32 @regmap_write(%struct.regmap* %64, i32 %71, i32 %73)
  %75 = load %struct.regmap*, %struct.regmap** %10, align 8
  %76 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %77 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %76, i32 0, i32 7
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @CDA2D_RBMXENDADRSU(i32 %81)
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @upper_32_bits(i64 %83)
  %85 = call i32 @regmap_write(%struct.regmap* %75, i32 %82, i32 %84)
  %86 = load %struct.regmap*, %struct.regmap** %10, align 8
  %87 = load i32, i32* @CDA2D_RBADRSLOAD, align 4
  %88 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %89 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %88, i32 0, i32 7
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @BIT(i32 %93)
  %95 = call i32 @regmap_write(%struct.regmap* %86, i32 %87, i32 %94)
  %96 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 2, %98
  %100 = call i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub* %96, i64 %97, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %32
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %172

105:                                              ; preds = %32
  %106 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %107 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %106, i32 0, i32 7
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %105
  %114 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @aiodma_rb_set_rp(%struct.uniphier_aio_sub* %114, i64 %115)
  %117 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %118, %120
  %122 = call i32 @aiodma_rb_set_wp(%struct.uniphier_aio_sub* %117, i64 %121)
  %123 = load %struct.regmap*, %struct.regmap** %10, align 8
  %124 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %125 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %124, i32 0, i32 7
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @CDA2D_RBMXIE(i32 %129)
  %131 = load i32, i32* @CDA2D_RBMXIX_SPACE, align 4
  %132 = load i32, i32* @CDA2D_RBMXIX_SPACE, align 4
  %133 = call i32 @regmap_update_bits(%struct.regmap* %123, i32 %130, i32 %131, i32 %132)
  br label %155

134:                                              ; preds = %105
  %135 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %136, %138
  %140 = call i32 @aiodma_rb_set_rp(%struct.uniphier_aio_sub* %135, i64 %139)
  %141 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %142 = load i64, i64* %7, align 8
  %143 = call i32 @aiodma_rb_set_wp(%struct.uniphier_aio_sub* %141, i64 %142)
  %144 = load %struct.regmap*, %struct.regmap** %10, align 8
  %145 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %146 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %145, i32 0, i32 7
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @CDA2D_RBMXIE(i32 %150)
  %152 = load i32, i32* @CDA2D_RBMXIX_REMAIN, align 4
  %153 = load i32, i32* @CDA2D_RBMXIX_REMAIN, align 4
  %154 = call i32 @regmap_update_bits(%struct.regmap* %144, i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %134, %113
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 2, %156
  %158 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %159 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %161 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %160, i32 0, i32 6
  store i64 0, i64* %161, align 8
  %162 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %163 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %162, i32 0, i32 5
  store i64 0, i64* %163, align 8
  %164 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %165 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %164, i32 0, i32 4
  store i64 0, i64* %165, align 8
  %166 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %167 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %169 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %6, align 8
  %171 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %155, %103, %29
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @CDA2D_RBMXCNFG(i32) #1

declare dso_local i32 @CDA2D_RBMXBGNADRS(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @CDA2D_RBMXBGNADRSU(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @CDA2D_RBMXENDADRS(i32) #1

declare dso_local i32 @CDA2D_RBMXENDADRSU(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @aiodma_rb_set_threshold(%struct.uniphier_aio_sub*, i64, i32) #1

declare dso_local i32 @aiodma_rb_set_rp(%struct.uniphier_aio_sub*, i64) #1

declare dso_local i32 @aiodma_rb_set_wp(%struct.uniphier_aio_sub*, i64) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @CDA2D_RBMXIE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
