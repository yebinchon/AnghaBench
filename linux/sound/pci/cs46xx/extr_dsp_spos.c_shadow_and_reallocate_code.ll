; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_shadow_and_reallocate_code.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_shadow_and_reallocate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_4__*, %struct.dsp_spos_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.dsp_spos_instance = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WIDE_LADD_INSTR_MASK = common dso_local global i32 0, align 4
@WIDE_INSTR_MASK = common dso_local global i32 0, align 4
@wide_opcodes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"handle_wideop[1]: %05x:%05x addr %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"handle_wideop[1]: ROM symbol not reallocated\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"handle_wideop:[2] %05x:%05x addr %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"dsp_spos: %d instructions reallocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs46xx*, i32*, i32, i32)* @shadow_and_reallocate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_and_reallocate_code(%struct.snd_cs46xx* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %21 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %20, i32 0, i32 1
  %22 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %21, align 8
  store %struct.dsp_spos_instance* %22, %struct.dsp_spos_instance** %19, align 8
  %23 = load i32, i32* %8, align 4
  %24 = srem i32 %23, 2
  %25 = call i64 @snd_BUG_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %197

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %163, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %188

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %163

53:                                               ; preds = %35
  %54 = load i32, i32* %13, align 4
  %55 = ashr i32 %54, 6
  %56 = and i32 %55, 16383
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = ashr i32 %57, 10
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %162

61:                                               ; preds = %53
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* @WIDE_LADD_INSTR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %162

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @WIDE_INSTR_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %162

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 127
  store i32 %73, i32* %18, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %158, %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** @wide_opcodes, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %161

79:                                               ; preds = %74
  %80 = load i32*, i32** @wide_opcodes, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %157

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 4095
  %90 = shl i32 %89, 5
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = ashr i32 %91, 15
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %96 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = and i32 %104, 32768
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %87
  %108 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %109 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 2
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %15, align 4
  br label %124

117:                                              ; preds = %87
  %118 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %119 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_dbg(i32 %122, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %117, %107
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, 1044480
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = and i32 %127, 32767
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %15, align 4
  %130 = ashr i32 %129, 5
  %131 = and i32 %130, 4095
  %132 = load i32, i32* %13, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %15, align 4
  %135 = shl i32 %134, 15
  %136 = and i32 %135, 1015808
  %137 = load i32, i32* %14, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = and i32 %139, 4095
  %141 = shl i32 %140, 5
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %14, align 4
  %143 = ashr i32 %142, 15
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  %146 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %147 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = call i32 (i32, i8*, ...) @dev_dbg(i32 %150, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %124, %79
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %74

161:                                              ; preds = %74
  br label %162

162:                                              ; preds = %161, %66, %61, %53
  br label %163

163:                                              ; preds = %162, %35
  %164 = load i32, i32* %14, align 4
  %165 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %166 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %170 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %168, i64 %174
  store i32 %164, i32* %175, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %178 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %19, align 8
  %182 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %180, i64 %186
  store i32 %176, i32* %187, align 4
  br label %31

188:                                              ; preds = %31
  %189 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %190 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 (i32, i8*, ...) @dev_dbg(i32 %193, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %188, %27
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
