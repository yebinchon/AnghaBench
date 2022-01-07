; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_gf1_new_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_mixer.c_snd_gf1_new_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { i64, i64, %struct.snd_card* }
%struct.snd_card = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ICS2101\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"GF1,ICS2101\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GF1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c",ICS2101\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c",GF1\00", align 1
@snd_gf1_controls = common dso_local global i32* null, align 8
@snd_ics_controls = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gf1_new_mixer(%struct.snd_gus_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_gus_card*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %3, align 8
  %8 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %9 = icmp ne %struct.snd_gus_card* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %133

17:                                               ; preds = %1
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 2
  %20 = load %struct.snd_card*, %struct.snd_card** %19, align 8
  store %struct.snd_card* %20, %struct.snd_card** %4, align 8
  %21 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %22 = icmp ne %struct.snd_card* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @snd_BUG_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %133

30:                                               ; preds = %17
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %37 = call i32 @snd_component_add(%struct.snd_card* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %40 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %51 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = call i32 @strcpy(i8* %49, i8* %55)
  br label %72

57:                                               ; preds = %38
  %58 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %59 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %64 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcat(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %69 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcat(i8* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %46
  %73 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %74 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %109, label %77

77:                                               ; preds = %72
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %79 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** @snd_gf1_controls, align 8
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ 1, %82 ], [ %85, %83 ]
  store i32 %87, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %105, %86
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %94 = load i32*, i32** @snd_gf1_controls, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %99 = call i32 @snd_ctl_new1(i32* %97, %struct.snd_gus_card* %98)
  %100 = call i32 @snd_ctl_add(%struct.snd_card* %93, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %133

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %88

108:                                              ; preds = %88
  br label %132

109:                                              ; preds = %72
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %128, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32*, i32** @snd_ics_controls, align 8
  %113 = call i32 @ARRAY_SIZE(i32* %112)
  %114 = icmp ult i32 %111, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %117 = load i32*, i32** @snd_ics_controls, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %122 = call i32 @snd_ctl_new1(i32* %120, %struct.snd_gus_card* %121)
  %123 = call i32 @snd_ctl_add(%struct.snd_card* %116, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %133

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %110

131:                                              ; preds = %110
  br label %132

132:                                              ; preds = %131, %108
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %125, %102, %27, %14
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_component_add(%struct.snd_card*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_gus_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
