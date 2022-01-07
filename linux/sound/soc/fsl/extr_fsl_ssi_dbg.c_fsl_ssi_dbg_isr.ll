; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi_dbg.c_fsl_ssi_dbg_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi_dbg.c_fsl_ssi_dbg_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_ssi_dbg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SSI_SISR_RFRC = common dso_local global i32 0, align 4
@SSI_SISR_TFRC = common dso_local global i32 0, align 4
@SSI_SISR_CMDAU = common dso_local global i32 0, align 4
@SSI_SISR_CMDDU = common dso_local global i32 0, align 4
@SSI_SISR_RXT = common dso_local global i32 0, align 4
@SSI_SISR_RDR1 = common dso_local global i32 0, align 4
@SSI_SISR_RDR0 = common dso_local global i32 0, align 4
@SSI_SISR_TDE1 = common dso_local global i32 0, align 4
@SSI_SISR_TDE0 = common dso_local global i32 0, align 4
@SSI_SISR_ROE1 = common dso_local global i32 0, align 4
@SSI_SISR_ROE0 = common dso_local global i32 0, align 4
@SSI_SISR_TUE1 = common dso_local global i32 0, align 4
@SSI_SISR_TUE0 = common dso_local global i32 0, align 4
@SSI_SISR_TFS = common dso_local global i32 0, align 4
@SSI_SISR_RFS = common dso_local global i32 0, align 4
@SSI_SISR_TLS = common dso_local global i32 0, align 4
@SSI_SISR_RLS = common dso_local global i32 0, align 4
@SSI_SISR_RFF1 = common dso_local global i32 0, align 4
@SSI_SISR_RFF0 = common dso_local global i32 0, align 4
@SSI_SISR_TFE1 = common dso_local global i32 0, align 4
@SSI_SISR_TFE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_ssi_dbg_isr(%struct.fsl_ssi_dbg* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_ssi_dbg*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_ssi_dbg* %0, %struct.fsl_ssi_dbg** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SSI_SISR_RFRC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SSI_SISR_TFRC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SSI_SISR_CMDAU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 18
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SSI_SISR_CMDDU, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 17
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SSI_SISR_RXT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SSI_SISR_RDR1, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %66 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SSI_SISR_RDR0, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %77 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SSI_SISR_TDE1, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %88 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @SSI_SISR_TDE0, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %99 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @SSI_SISR_ROE1, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %110 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SSI_SISR_ROE0, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %121 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %114
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @SSI_SISR_TUE1, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %132 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @SSI_SISR_TUE0, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %143 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @SSI_SISR_TFS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %154 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %147
  %159 = load i32, i32* %4, align 4
  %160 = load i32, i32* @SSI_SISR_RFS, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %165 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %163, %158
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @SSI_SISR_TLS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %176 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %169
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @SSI_SISR_RLS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %187 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %180
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @SSI_SISR_RFF1, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %198 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %196, %191
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @SSI_SISR_RFF0, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %209 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %202
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @SSI_SISR_TFE1, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %220 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %218, %213
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @SSI_SISR_TFE0, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %3, align 8
  %231 = getelementptr inbounds %struct.fsl_ssi_dbg, %struct.fsl_ssi_dbg* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %229, %224
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
