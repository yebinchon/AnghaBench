; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_default_config_memrd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_default_config_memrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.hw* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }
%struct.hw = type { i32 (%struct.hw*, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i64)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)* }

@SRC_STATE_OFF = common dso_local global i32 0, align 4
@SRC_SF_S16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src*)* @src_default_config_memrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_default_config_memrd(%struct.src* %0) #0 {
  %2 = alloca %struct.src*, align 8
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.src* %0, %struct.src** %2, align 8
  %6 = load %struct.src*, %struct.src** %2, align 8
  %7 = getelementptr inbounds %struct.src, %struct.src* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %3, align 8
  %10 = load %struct.hw*, %struct.hw** %3, align 8
  %11 = getelementptr inbounds %struct.hw, %struct.hw* %10, i32 0, i32 16
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.src*, %struct.src** %2, align 8
  %14 = getelementptr inbounds %struct.src, %struct.src* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SRC_STATE_OFF, align 4
  %18 = call i32 %12(i32 %16, i32 %17)
  %19 = load %struct.hw*, %struct.hw** %3, align 8
  %20 = getelementptr inbounds %struct.hw, %struct.hw* %19, i32 0, i32 15
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load %struct.src*, %struct.src** %2, align 8
  %23 = getelementptr inbounds %struct.src, %struct.src* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %25, i32 1)
  store i32 0, i32* %4, align 4
  %27 = load %struct.src*, %struct.src** %2, align 8
  %28 = getelementptr inbounds %struct.src, %struct.src* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %37, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp ugt i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %31

40:                                               ; preds = %31
  %41 = load %struct.hw*, %struct.hw** %3, align 8
  %42 = getelementptr inbounds %struct.hw, %struct.hw* %41, i32 0, i32 14
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.src*, %struct.src** %2, align 8
  %45 = getelementptr inbounds %struct.src, %struct.src* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %43(i32 %47, i32 %48)
  %50 = load %struct.hw*, %struct.hw** %3, align 8
  %51 = getelementptr inbounds %struct.hw, %struct.hw* %50, i32 0, i32 13
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.src*, %struct.src** %2, align 8
  %54 = getelementptr inbounds %struct.src, %struct.src* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SRC_SF_S16, align 4
  %58 = call i32 %52(i32 %56, i32 %57)
  %59 = load %struct.hw*, %struct.hw** %3, align 8
  %60 = getelementptr inbounds %struct.hw, %struct.hw* %59, i32 0, i32 12
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.src*, %struct.src** %2, align 8
  %63 = getelementptr inbounds %struct.src, %struct.src* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %61(i32 %65, i32 0)
  %67 = load %struct.hw*, %struct.hw** %3, align 8
  %68 = getelementptr inbounds %struct.hw, %struct.hw* %67, i32 0, i32 11
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load %struct.src*, %struct.src** %2, align 8
  %71 = getelementptr inbounds %struct.src, %struct.src* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i32 %73, i32 0)
  %75 = load %struct.hw*, %struct.hw** %3, align 8
  %76 = getelementptr inbounds %struct.hw, %struct.hw* %75, i32 0, i32 10
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.src*, %struct.src** %2, align 8
  %79 = getelementptr inbounds %struct.src, %struct.src* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %77(i32 %81, i32 0)
  %83 = load %struct.hw*, %struct.hw** %3, align 8
  %84 = getelementptr inbounds %struct.hw, %struct.hw* %83, i32 0, i32 9
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.src*, %struct.src** %2, align 8
  %87 = getelementptr inbounds %struct.src, %struct.src* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 %85(i32 %89, i32 0)
  %91 = load %struct.hw*, %struct.hw** %3, align 8
  %92 = getelementptr inbounds %struct.hw, %struct.hw* %91, i32 0, i32 8
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.src*, %struct.src** %2, align 8
  %95 = getelementptr inbounds %struct.src, %struct.src* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %93(i32 %97, i32 0)
  %99 = load %struct.hw*, %struct.hw** %3, align 8
  %100 = getelementptr inbounds %struct.hw, %struct.hw* %99, i32 0, i32 7
  %101 = load i32 (i32, i64)*, i32 (i32, i64)** %100, align 8
  %102 = load %struct.src*, %struct.src** %2, align 8
  %103 = getelementptr inbounds %struct.src, %struct.src* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.src*, %struct.src** %2, align 8
  %107 = getelementptr inbounds %struct.src, %struct.src* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %108, 1
  %110 = call i32 %101(i32 %105, i64 %109)
  %111 = load %struct.hw*, %struct.hw** %3, align 8
  %112 = getelementptr inbounds %struct.hw, %struct.hw* %111, i32 0, i32 6
  %113 = load i32 (i32, i32)*, i32 (i32, i32)** %112, align 8
  %114 = load %struct.src*, %struct.src** %2, align 8
  %115 = getelementptr inbounds %struct.src, %struct.src* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 %113(i32 %117, i32 128)
  %119 = load %struct.hw*, %struct.hw** %3, align 8
  %120 = getelementptr inbounds %struct.hw, %struct.hw* %119, i32 0, i32 5
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load %struct.src*, %struct.src** %2, align 8
  %123 = getelementptr inbounds %struct.src, %struct.src* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %121(i32 %125, i32 0)
  %127 = load %struct.hw*, %struct.hw** %3, align 8
  %128 = getelementptr inbounds %struct.hw, %struct.hw* %127, i32 0, i32 4
  %129 = load i32 (i32, i32)*, i32 (i32, i32)** %128, align 8
  %130 = load %struct.src*, %struct.src** %2, align 8
  %131 = getelementptr inbounds %struct.src, %struct.src* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %129(i32 %133, i32 4096)
  %135 = load %struct.hw*, %struct.hw** %3, align 8
  %136 = getelementptr inbounds %struct.hw, %struct.hw* %135, i32 0, i32 3
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load %struct.src*, %struct.src** %2, align 8
  %139 = getelementptr inbounds %struct.src, %struct.src* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %137(i32 %141, i32 128)
  %143 = load %struct.hw*, %struct.hw** %3, align 8
  %144 = getelementptr inbounds %struct.hw, %struct.hw* %143, i32 0, i32 1
  %145 = load i32 (i32, i32)*, i32 (i32, i32)** %144, align 8
  %146 = load %struct.src*, %struct.src** %2, align 8
  %147 = getelementptr inbounds %struct.src, %struct.src* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 %145(i32 %149, i32 16777216)
  %151 = load %struct.hw*, %struct.hw** %3, align 8
  %152 = getelementptr inbounds %struct.hw, %struct.hw* %151, i32 0, i32 2
  %153 = load i32 (i32, i32)*, i32 (i32, i32)** %152, align 8
  %154 = load %struct.src*, %struct.src** %2, align 8
  %155 = getelementptr inbounds %struct.src, %struct.src* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %153(i32 %157, i32 1)
  %159 = load %struct.src*, %struct.src** %2, align 8
  %160 = getelementptr inbounds %struct.src, %struct.src* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %163, align 8
  %165 = load %struct.src*, %struct.src** %2, align 8
  %166 = getelementptr inbounds %struct.src, %struct.src* %165, i32 0, i32 0
  %167 = call i32 %164(%struct.TYPE_8__* %166)
  %168 = load %struct.hw*, %struct.hw** %3, align 8
  %169 = getelementptr inbounds %struct.hw, %struct.hw* %168, i32 0, i32 0
  %170 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %169, align 8
  %171 = load %struct.hw*, %struct.hw** %3, align 8
  %172 = load %struct.src*, %struct.src** %2, align 8
  %173 = getelementptr inbounds %struct.src, %struct.src* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %176, align 8
  %178 = load %struct.src*, %struct.src** %2, align 8
  %179 = getelementptr inbounds %struct.src, %struct.src* %178, i32 0, i32 0
  %180 = call i32 %177(%struct.TYPE_8__* %179)
  %181 = load %struct.src*, %struct.src** %2, align 8
  %182 = getelementptr inbounds %struct.src, %struct.src* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 %170(%struct.hw* %171, i32 %180, i32 %184)
  store i32 1, i32* %5, align 4
  br label %186

186:                                              ; preds = %229, %40
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.src*, %struct.src** %2, align 8
  %189 = getelementptr inbounds %struct.src, %struct.src* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ult i32 %187, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %186
  %194 = load %struct.src*, %struct.src** %2, align 8
  %195 = getelementptr inbounds %struct.src, %struct.src* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %198, align 8
  %200 = load %struct.src*, %struct.src** %2, align 8
  %201 = getelementptr inbounds %struct.src, %struct.src* %200, i32 0, i32 0
  %202 = call i32 %199(%struct.TYPE_8__* %201)
  %203 = load %struct.hw*, %struct.hw** %3, align 8
  %204 = getelementptr inbounds %struct.hw, %struct.hw* %203, i32 0, i32 1
  %205 = load i32 (i32, i32)*, i32 (i32, i32)** %204, align 8
  %206 = load %struct.src*, %struct.src** %2, align 8
  %207 = getelementptr inbounds %struct.src, %struct.src* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 %205(i32 %209, i32 16777216)
  %211 = load %struct.hw*, %struct.hw** %3, align 8
  %212 = getelementptr inbounds %struct.hw, %struct.hw* %211, i32 0, i32 0
  %213 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %212, align 8
  %214 = load %struct.hw*, %struct.hw** %3, align 8
  %215 = load %struct.src*, %struct.src** %2, align 8
  %216 = getelementptr inbounds %struct.src, %struct.src* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %219, align 8
  %221 = load %struct.src*, %struct.src** %2, align 8
  %222 = getelementptr inbounds %struct.src, %struct.src* %221, i32 0, i32 0
  %223 = call i32 %220(%struct.TYPE_8__* %222)
  %224 = load %struct.src*, %struct.src** %2, align 8
  %225 = getelementptr inbounds %struct.src, %struct.src* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 %213(%struct.hw* %214, i32 %223, i32 %227)
  br label %229

229:                                              ; preds = %193
  %230 = load i32, i32* %5, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %186

232:                                              ; preds = %186
  %233 = load %struct.src*, %struct.src** %2, align 8
  %234 = getelementptr inbounds %struct.src, %struct.src* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %237, align 8
  %239 = load %struct.src*, %struct.src** %2, align 8
  %240 = getelementptr inbounds %struct.src, %struct.src* %239, i32 0, i32 0
  %241 = call i32 %238(%struct.TYPE_8__* %240)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
