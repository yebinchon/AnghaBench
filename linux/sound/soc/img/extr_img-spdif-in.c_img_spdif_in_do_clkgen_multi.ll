; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_do_clkgen_multi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_do_clkgen_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_spdif_in = type { i32, i32*, i32, i32*, i32, i64 }

@IMG_SPDIF_IN_NUM_ACLKGEN = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_NOM_MASK = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_HLD_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_spdif_in*, i32*)* @img_spdif_in_do_clkgen_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_do_clkgen_multi(%struct.img_spdif_in* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_spdif_in*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.img_spdif_in* %0, %struct.img_spdif_in** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %42, %2
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @img_spdif_in_check_max_rate(%struct.img_spdif_in* %46, i32 %47, i64* %11)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %171

53:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @img_spdif_in_do_clkgen_calc(i32 %64, i32* %6, i32* %7, i64 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %171

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_NOM_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_NOM_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_HLD_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_HLD_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %22, i64 %86
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %54

91:                                               ; preds = %54
  %92 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %93 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %92, i32 0, i32 4
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @spin_lock_irqsave(i32* %93, i64 %94)
  %96 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %97 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %102 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %101, i32 0, i32 4
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %171

107:                                              ; preds = %91
  %108 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %109 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT, align 4
  %112 = shl i32 %110, %111
  store i32 %112, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %133, %107
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %22, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %125 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @img_spdif_in_aclkgen_writel(%struct.img_spdif_in* %130, i32 %131)
  br label %133

133:                                              ; preds = %117
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %113

136:                                              ; preds = %113
  %137 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %138 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %143 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %141, i32* %145, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %150 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 %148, i32* %152, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %157 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 %155, i32* %159, align 4
  %160 = load i32*, i32** %5, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %164 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32 %162, i32* %166, align 4
  %167 = load %struct.img_spdif_in*, %struct.img_spdif_in** %4, align 8
  %168 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %167, i32 0, i32 4
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %171

171:                                              ; preds = %136, %100, %69, %51
  %172 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @img_spdif_in_check_max_rate(%struct.img_spdif_in*, i32, i64*) #2

declare dso_local i32 @img_spdif_in_do_clkgen_calc(i32, i32*, i32*, i64) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @img_spdif_in_aclkgen_writel(%struct.img_spdif_in*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
