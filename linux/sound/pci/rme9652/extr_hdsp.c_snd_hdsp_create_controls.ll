; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.snd_card = type { i32 }
%struct.hdsp = type { i64, %struct.snd_kcontrol* }
%struct.snd_kcontrol = type { i32 }

@RPM = common dso_local global i64 0, align 8
@snd_hdsp_rpm_controls = common dso_local global %struct.TYPE_8__* null, align 8
@snd_hdsp_controls = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"ADAT Lock Status\00", align 1
@snd_hdsp_adat_sync_check = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@Digiface = common dso_local global i64 0, align 8
@H9652 = common dso_local global i64 0, align 8
@H9632 = common dso_local global i64 0, align 8
@snd_hdsp_9632_controls = common dso_local global %struct.TYPE_8__* null, align 8
@snd_hdsp_96xx_aeb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_controls(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  %9 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %10 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RPM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_rpm_controls, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %17)
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_rpm_controls, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  %26 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %27 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* %25, %struct.hdsp* %26)
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %8, align 8
  %28 = call i32 @snd_ctl_add(%struct.snd_card* %21, %struct.snd_kcontrol* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %157

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %157

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_controls, align 8
  %42 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_controls, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %51 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* %49, %struct.hdsp* %50)
  store %struct.snd_kcontrol* %51, %struct.snd_kcontrol** %8, align 8
  %52 = call i32 @snd_ctl_add(%struct.snd_card* %45, %struct.snd_kcontrol* %51)
  store i32 %52, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %157

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %8, align 8
  %61 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %62 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %61, i32 0, i32 1
  store %struct.snd_kcontrol* %60, %struct.snd_kcontrol** %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %39

67:                                               ; preds = %39
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_hdsp_adat_sync_check, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_hdsp_adat_sync_check, i32 0, i32 1), align 8
  %68 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %69 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %70 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* @snd_hdsp_adat_sync_check, %struct.hdsp* %69)
  store %struct.snd_kcontrol* %70, %struct.snd_kcontrol** %8, align 8
  %71 = call i32 @snd_ctl_add(%struct.snd_card* %68, %struct.snd_kcontrol* %70)
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %157

75:                                               ; preds = %67
  %76 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %77 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @Digiface, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %83 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @H9652, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81, %75
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %6, align 4
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @snd_hdsp_adat_sync_check, i32 0, i32 1), align 8
  %94 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %95 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %96 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* @snd_hdsp_adat_sync_check, %struct.hdsp* %95)
  store %struct.snd_kcontrol* %96, %struct.snd_kcontrol** %8, align 8
  %97 = call i32 @snd_ctl_add(%struct.snd_card* %94, %struct.snd_kcontrol* %96)
  store i32 %97, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %157

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %108 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @H9632, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %131, %112
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_9632_controls, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %115)
  %117 = icmp ult i32 %114, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @snd_hdsp_9632_controls, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %125 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* %123, %struct.hdsp* %124)
  store %struct.snd_kcontrol* %125, %struct.snd_kcontrol** %8, align 8
  %126 = call i32 @snd_ctl_add(%struct.snd_card* %119, %struct.snd_kcontrol* %125)
  store i32 %126, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %157

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %113

134:                                              ; preds = %113
  br label %135

135:                                              ; preds = %134, %106
  %136 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %137 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @H9632, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %143 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @H9652, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141, %135
  %148 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %149 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %150 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__* @snd_hdsp_96xx_aeb, %struct.hdsp* %149)
  store %struct.snd_kcontrol* %150, %struct.snd_kcontrol** %8, align 8
  %151 = call i32 @snd_ctl_add(%struct.snd_card* %148, %struct.snd_kcontrol* %150)
  store i32 %151, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %157

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %141
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %153, %128, %99, %73, %54, %37, %31
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.TYPE_8__*, %struct.hdsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
