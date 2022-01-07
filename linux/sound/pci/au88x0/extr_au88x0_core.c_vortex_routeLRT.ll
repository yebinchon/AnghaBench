; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_routeLRT.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_routeLRT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADB_MASK = common dso_local global i8 0, align 1
@ADB_SHIFT = common dso_local global i8 0, align 1
@OFFSET_SRCOUT = common dso_local global i8 0, align 1
@NR_SRC = common dso_local global i8 0, align 1
@OFFSET_MIXOUT = common dso_local global i8 0, align 1
@NR_MIXOUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8, i8, i8, i8)* @vortex_routeLRT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_routeLRT(i32* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x i8], align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ADB_MASK, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %15, %17
  %19 = load i8, i8* @ADB_SHIFT, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %18, %20
  %22 = load i8, i8* %12, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ADB_MASK, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = or i32 %21, %26
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ADB_MASK, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %31, %33
  %35 = load i8, i8* @ADB_SHIFT, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @ADB_MASK, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = or i32 %37, %42
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  store i8 %44, i8* %45, align 1
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %63

49:                                               ; preds = %6
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @ADB_MASK, align 1
  %54 = zext i8 %53 to i32
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, 32
  %60 = or i32 %56, %59
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %49, %6
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %140

66:                                               ; preds = %63
  %67 = load i32*, i32** %7, align 8
  %68 = load i8, i8* %9, align 1
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %70 = call i32 @vortex_adb_addroutes(i32* %67, i8 zeroext %68, i8* %69, i32 2)
  %71 = load i8, i8* %10, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @OFFSET_SRCOUT, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @NR_SRC, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %66
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* @OFFSET_SRCOUT, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load i32*, i32** %7, align 8
  %87 = load i8, i8* %10, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @OFFSET_SRCOUT, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %88, %90
  %92 = trunc i32 %91 to i8
  %93 = load i8, i8* %9, align 1
  %94 = call i32 @vortex_src_addWTD(i32* %86, i8 zeroext %92, i8 zeroext %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @OFFSET_SRCOUT, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %97, %99
  %101 = trunc i32 %100 to i8
  %102 = load i8, i8* %9, align 1
  %103 = call i32 @vortex_src_addWTD(i32* %95, i8 zeroext %101, i8 zeroext %102)
  br label %139

104:                                              ; preds = %79, %66
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* @OFFSET_MIXOUT, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @NR_MIXOUT, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %108, %110
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %104
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @OFFSET_MIXOUT, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sge i32 %115, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %113
  %120 = load i32*, i32** %7, align 8
  %121 = load i8, i8* %10, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @OFFSET_MIXOUT, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 %122, %124
  %126 = trunc i32 %125 to i8
  %127 = load i8, i8* %9, align 1
  %128 = call i32 @vortex_mixer_addWTD(i32* %120, i8 zeroext %126, i8 zeroext %127)
  %129 = load i32*, i32** %7, align 8
  %130 = load i8, i8* %11, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @OFFSET_MIXOUT, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %131, %133
  %135 = trunc i32 %134 to i8
  %136 = load i8, i8* %9, align 1
  %137 = call i32 @vortex_mixer_addWTD(i32* %129, i8 zeroext %135, i8 zeroext %136)
  br label %138

138:                                              ; preds = %119, %113, %104
  br label %139

139:                                              ; preds = %138, %85
  br label %217

140:                                              ; preds = %63
  %141 = load i32*, i32** %7, align 8
  %142 = load i8, i8* %9, align 1
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @vortex_adb_delroutes(i32* %141, i8 zeroext %142, i8 zeroext %144, i8 zeroext %146)
  %148 = load i8, i8* %10, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* @OFFSET_SRCOUT, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @NR_SRC, align 1
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %151, %153
  %155 = icmp slt i32 %149, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %140
  %157 = load i8, i8* %10, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @OFFSET_SRCOUT, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp sge i32 %158, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %156
  %163 = load i32*, i32** %7, align 8
  %164 = load i8, i8* %10, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, i8* @OFFSET_SRCOUT, align 1
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %165, %167
  %169 = trunc i32 %168 to i8
  %170 = load i8, i8* %9, align 1
  %171 = call i32 @vortex_src_delWTD(i32* %163, i8 zeroext %169, i8 zeroext %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i8, i8* %11, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @OFFSET_SRCOUT, align 1
  %176 = zext i8 %175 to i32
  %177 = sub nsw i32 %174, %176
  %178 = trunc i32 %177 to i8
  %179 = load i8, i8* %9, align 1
  %180 = call i32 @vortex_src_delWTD(i32* %172, i8 zeroext %178, i8 zeroext %179)
  br label %216

181:                                              ; preds = %156, %140
  %182 = load i8, i8* %10, align 1
  %183 = zext i8 %182 to i32
  %184 = load i8, i8* @OFFSET_MIXOUT, align 1
  %185 = zext i8 %184 to i32
  %186 = load i8, i8* @NR_MIXOUT, align 1
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %185, %187
  %189 = icmp slt i32 %183, %188
  br i1 %189, label %190, label %215

190:                                              ; preds = %181
  %191 = load i8, i8* %10, align 1
  %192 = zext i8 %191 to i32
  %193 = load i8, i8* @OFFSET_MIXOUT, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp sge i32 %192, %194
  br i1 %195, label %196, label %215

196:                                              ; preds = %190
  %197 = load i32*, i32** %7, align 8
  %198 = load i8, i8* %10, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8, i8* @OFFSET_MIXOUT, align 1
  %201 = zext i8 %200 to i32
  %202 = sub nsw i32 %199, %201
  %203 = trunc i32 %202 to i8
  %204 = load i8, i8* %9, align 1
  %205 = call i32 @vortex_mixer_delWTD(i32* %197, i8 zeroext %203, i8 zeroext %204)
  %206 = load i32*, i32** %7, align 8
  %207 = load i8, i8* %11, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* @OFFSET_MIXOUT, align 1
  %210 = zext i8 %209 to i32
  %211 = sub nsw i32 %208, %210
  %212 = trunc i32 %211 to i8
  %213 = load i8, i8* %9, align 1
  %214 = call i32 @vortex_mixer_delWTD(i32* %206, i8 zeroext %212, i8 zeroext %213)
  br label %215

215:                                              ; preds = %196, %190, %181
  br label %216

216:                                              ; preds = %215, %162
  br label %217

217:                                              ; preds = %216, %139
  ret void
}

declare dso_local i32 @vortex_adb_addroutes(i32*, i8 zeroext, i8*, i32) #1

declare dso_local i32 @vortex_src_addWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_mixer_addWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_adb_delroutes(i32*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_src_delWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_mixer_delWTD(i32*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
