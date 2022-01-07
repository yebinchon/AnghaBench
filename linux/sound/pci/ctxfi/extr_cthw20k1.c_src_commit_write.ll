; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_src_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_src_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.src_rsc_ctrl_blk = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }

@SRCUPZ = common dso_local global i64 0, align 8
@SRCDN0Z = common dso_local global i64 0, align 8
@SRCDN1Z = common dso_local global i64 0, align 8
@PRING_LO_HI = common dso_local global i64 0, align 8
@PMOPLO = common dso_local global i64 0, align 8
@PMOPHI = common dso_local global i64 0, align 8
@SRCSA = common dso_local global i64 0, align 8
@SRCLA = common dso_local global i64 0, align 8
@SRCCA = common dso_local global i64 0, align 8
@SRCCF = common dso_local global i64 0, align 8
@SRCCCR = common dso_local global i64 0, align 8
@SRCCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8*)* @src_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_commit_write(%struct.hw* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.src_rsc_ctrl_blk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.src_rsc_ctrl_blk*
  store %struct.src_rsc_ctrl_blk* %11, %struct.src_rsc_ctrl_blk** %7, align 8
  %12 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %13 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.hw*, %struct.hw** %4, align 8
  %24 = load i64, i64* @SRCUPZ, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 %25, 256
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @hw_write_20kx(%struct.hw* %23, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load %struct.hw*, %struct.hw** %4, align 8
  %43 = load i64, i64* @SRCDN0Z, align 8
  %44 = load i32, i32* %5, align 4
  %45 = mul i32 %44, 256
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @hw_write_20kx(%struct.hw* %42, i64 %51, i32 0)
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %38

56:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.hw*, %struct.hw** %4, align 8
  %62 = load i64, i64* @SRCDN1Z, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul i32 %63, 256
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = call i32 @hw_write_20kx(%struct.hw* %61, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %77 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 6
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %75, %3
  %81 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %82 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @src_param_pitch_mixer(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.hw*, %struct.hw** %4, align 8
  %91 = load i64, i64* @PRING_LO_HI, align 8
  %92 = load i32, i32* %9, align 4
  %93 = mul i32 4, %92
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %97 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @hw_write_20kx(%struct.hw* %90, i64 %95, i32 %98)
  %100 = load %struct.hw*, %struct.hw** %4, align 8
  %101 = load i64, i64* @PMOPLO, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul i32 8, %102
  %104 = zext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @hw_write_20kx(%struct.hw* %100, i64 %105, i32 3)
  %107 = load %struct.hw*, %struct.hw** %4, align 8
  %108 = load i64, i64* @PMOPHI, align 8
  %109 = load i32, i32* %9, align 4
  %110 = mul i32 8, %109
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  %113 = call i32 @hw_write_20kx(%struct.hw* %107, i64 %112, i32 0)
  %114 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %115 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %87, %80
  %119 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %120 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %119, i32 0, i32 6
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = load %struct.hw*, %struct.hw** %4, align 8
  %127 = load i64, i64* @SRCSA, align 8
  %128 = load i32, i32* %5, align 4
  %129 = mul i32 %128, 256
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %127, %130
  %132 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %133 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hw_write_20kx(%struct.hw* %126, i64 %131, i32 %134)
  %136 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %137 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %136, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %125, %118
  %141 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %142 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %140
  %148 = load %struct.hw*, %struct.hw** %4, align 8
  %149 = load i64, i64* @SRCLA, align 8
  %150 = load i32, i32* %5, align 4
  %151 = mul i32 %150, 256
  %152 = zext i32 %151 to i64
  %153 = add nsw i64 %149, %152
  %154 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %155 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @hw_write_20kx(%struct.hw* %148, i64 %153, i32 %156)
  %158 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %159 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %147, %140
  %163 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %164 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load %struct.hw*, %struct.hw** %4, align 8
  %171 = load i64, i64* @SRCCA, align 8
  %172 = load i32, i32* %5, align 4
  %173 = mul i32 %172, 256
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %171, %174
  %176 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %177 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @hw_write_20kx(%struct.hw* %170, i64 %175, i32 %178)
  %180 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %181 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %180, i32 0, i32 6
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %169, %162
  %185 = load %struct.hw*, %struct.hw** %4, align 8
  %186 = load i64, i64* @SRCCF, align 8
  %187 = load i32, i32* %5, align 4
  %188 = mul i32 %187, 256
  %189 = zext i32 %188 to i64
  %190 = add nsw i64 %186, %189
  %191 = call i32 @hw_write_20kx(%struct.hw* %185, i64 %190, i32 0)
  %192 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %193 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %184
  %199 = load %struct.hw*, %struct.hw** %4, align 8
  %200 = load i64, i64* @SRCCCR, align 8
  %201 = load i32, i32* %5, align 4
  %202 = mul i32 %201, 256
  %203 = zext i32 %202 to i64
  %204 = add nsw i64 %200, %203
  %205 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %206 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @hw_write_20kx(%struct.hw* %199, i64 %204, i32 %207)
  %209 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %210 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  br label %213

213:                                              ; preds = %198, %184
  %214 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %215 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %213
  %221 = load %struct.hw*, %struct.hw** %4, align 8
  %222 = load i64, i64* @SRCCTL, align 8
  %223 = load i32, i32* %5, align 4
  %224 = mul i32 %223, 256
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %222, %225
  %227 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %228 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @hw_write_20kx(%struct.hw* %221, i64 %226, i32 %229)
  %231 = load %struct.src_rsc_ctrl_blk*, %struct.src_rsc_ctrl_blk** %7, align 8
  %232 = getelementptr inbounds %struct.src_rsc_ctrl_blk, %struct.src_rsc_ctrl_blk* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  br label %235

235:                                              ; preds = %220, %213
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

declare dso_local i32 @src_param_pitch_mixer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
