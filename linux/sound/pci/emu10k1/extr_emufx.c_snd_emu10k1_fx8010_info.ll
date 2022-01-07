; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_fx8010_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i16, i16, i16, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_emu10k1_fx8010_info = type { i32, i32, i32*, i32*, i32*, i32 }

@fxbuses = common dso_local global i8** null, align 8
@audigy_ins = common dso_local global i8** null, align 8
@creative_ins = common dso_local global i8** null, align 8
@audigy_outs = common dso_local global i8** null, align 8
@creative_outs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"FXBUS\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Unused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_info*)* @snd_emu10k1_fx8010_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_emu10k1_fx8010_info(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_info* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_fx8010_info*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_fx8010_info* %1, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %19 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8**, i8*** @fxbuses, align 8
  store i8** %26, i8*** %5, align 8
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i8**, i8*** @audigy_ins, align 8
  br label %35

33:                                               ; preds = %2
  %34 = load i8**, i8*** @creative_ins, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i8** [ %32, %31 ], [ %34, %33 ]
  store i8** %36, i8*** %6, align 8
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %38 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8**, i8*** @audigy_outs, align 8
  br label %45

43:                                               ; preds = %35
  %44 = load i8**, i8*** @creative_outs, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8** [ %42, %41 ], [ %44, %43 ]
  store i8** %46, i8*** %7, align 8
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i16, i16* %49, align 8
  store i16 %50, i16* %8, align 2
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %52 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %9, align 2
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %56 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i16, i16* %57, align 4
  store i16 %58, i16* %10, align 2
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %126, %45
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %135

62:                                               ; preds = %59
  %63 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i16, i16* %8, align 2
  %71 = zext i16 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  br label %80

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i8* [ %78, %76 ], [ null, %79 ]
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @copy_string(i32 %69, i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i16, i16* %9, align 2
  %92 = zext i16 %91 to i32
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %80
  %98 = load i8**, i8*** %6, align 8
  %99 = load i8*, i8** %98, align 8
  br label %101

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %97
  %102 = phi i8* [ %99, %97 ], [ null, %100 ]
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @copy_string(i32 %90, i8* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %106 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i16, i16* %10, align 2
  %113 = zext i16 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %101
  %119 = load i8**, i8*** %7, align 8
  %120 = load i8*, i8** %119, align 8
  br label %122

121:                                              ; preds = %101
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i8* [ %120, %118 ], [ null, %121 ]
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @copy_string(i32 %111, i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i32 1
  store i8** %130, i8*** %5, align 8
  %131 = load i8**, i8*** %6, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i32 1
  store i8** %132, i8*** %6, align 8
  %133 = load i8**, i8*** %7, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %7, align 8
  br label %59

135:                                              ; preds = %59
  store i32 16, i32* %11, align 4
  br label %136

136:                                              ; preds = %161, %135
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 32
  br i1 %138, label %139, label %166

139:                                              ; preds = %136
  %140 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %141 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i16, i16* %10, align 2
  %148 = zext i16 %147 to i32
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i8**, i8*** %7, align 8
  %155 = load i8*, i8** %154, align 8
  br label %157

156:                                              ; preds = %139
  br label %157

157:                                              ; preds = %156, %153
  %158 = phi i8* [ %155, %153 ], [ null, %156 ]
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @copy_string(i32 %146, i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  %164 = load i8**, i8*** %7, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %7, align 8
  br label %136

166:                                              ; preds = %136
  %167 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %168 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.snd_emu10k1_fx8010_info*, %struct.snd_emu10k1_fx8010_info** %4, align 8
  %172 = getelementptr inbounds %struct.snd_emu10k1_fx8010_info, %struct.snd_emu10k1_fx8010_info* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  ret void
}

declare dso_local i32 @copy_string(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
