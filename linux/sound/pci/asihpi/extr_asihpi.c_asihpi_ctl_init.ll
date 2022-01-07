; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_asihpi_ctl_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_asihpi_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i64, i32, i32, i32 }
%struct.hpi_control = type { i64, i64, i32, i32, i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@HPI_SOURCENODE_NONE = common dso_local global i64 0, align 8
@HPI_SOURCENODE_CLOCK_SOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HPI_DESTNODE_NONE = common dso_local global i64 0, align 8
@HPI_DESTNODE_ISTREAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Capture \00", align 1
@HPI_SOURCENODE_OSTREAM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Monitor Playback \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Playback \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s %d %s %d %s%s\00", align 1
@asihpi_src_names = common dso_local global i8** null, align 8
@asihpi_dst_names = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"%s %d %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol_new*, %struct.hpi_control*, i8*)* @asihpi_ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asihpi_ctl_init(%struct.snd_kcontrol_new* %0, %struct.hpi_control* %1, i8* %2) #0 {
  %4 = alloca %struct.snd_kcontrol_new*, align 8
  %5 = alloca %struct.hpi_control*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.snd_kcontrol_new* %0, %struct.snd_kcontrol_new** %4, align 8
  store %struct.hpi_control* %1, %struct.hpi_control** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %9 = call i32 @memset(%struct.snd_kcontrol_new* %8, i32 0, i32 24)
  %10 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %11 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %16 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %19 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %21 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %24 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %26 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HPI_SOURCENODE_NONE, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* @HPI_SOURCENODE_CLOCK_SOURCE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %79

33:                                               ; preds = %3
  %34 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %35 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HPI_DESTNODE_NONE, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* @HPI_DESTNODE_ISTREAM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %78

42:                                               ; preds = %33
  %43 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %44 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HPI_SOURCENODE_NONE, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* @HPI_SOURCENODE_OSTREAM, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %52 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %77

56:                                               ; preds = %50, %42
  %57 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %58 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %63 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HPI_SOURCENODE_NONE, align 8
  %66 = add i64 %64, %65
  %67 = load i64, i64* @HPI_SOURCENODE_OSTREAM, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %71 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %76

75:                                               ; preds = %69, %61, %56
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %76

76:                                               ; preds = %75, %74
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %32
  %80 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %81 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %79
  %85 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %86 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %91 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i8**, i8*** @asihpi_src_names, align 8
  %94 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %95 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %100 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i8**, i8*** @asihpi_dst_names, align 8
  %103 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %104 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %109 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 (i32, i8*, i8*, i32, i8*, ...) @sprintf(i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %98, i32 %101, i8* %107, i32 %110, i8* %111, i8* %112)
  br label %152

114:                                              ; preds = %84, %79
  %115 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %116 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %121 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i8**, i8*** @asihpi_dst_names, align 8
  %124 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %125 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %130 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 (i32, i8*, i8*, i32, i8*, ...) @sprintf(i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %128, i32 %131, i8* %132, i8* %133)
  br label %151

135:                                              ; preds = %114
  %136 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %137 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load i8**, i8*** @asihpi_src_names, align 8
  %140 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %141 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.hpi_control*, %struct.hpi_control** %5, align 8
  %146 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 (i32, i8*, i8*, i32, i8*, ...) @sprintf(i32 %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %144, i32 %147, i8* %148, i8* %149)
  br label %151

151:                                              ; preds = %135, %119
  br label %152

152:                                              ; preds = %151, %89
  ret void
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
