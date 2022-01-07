; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_cs4215_put_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_cs4215_put_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_dbri = type { %struct.dbri_streaminfo* }
%struct.dbri_streaminfo = type { i32, i32 }

@DBRI_PLAY = common dso_local global i64 0, align 8
@DBRI_MAX_VOLUME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBRI_MAX_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cs4215_put_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4215_put_volume(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_dbri*, align 8
  %7 = alloca %struct.dbri_streaminfo*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_dbri* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_dbri* %11, %struct.snd_dbri** %6, align 8
  %12 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %13 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %12, i32 0, i32 0
  %14 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %13, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %14, i64 %17
  store %struct.dbri_streaminfo* %18, %struct.dbri_streaminfo** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DBRI_PLAY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %2
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DBRI_MAX_VOLUME, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DBRI_MAX_VOLUME, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %103

53:                                               ; preds = %45
  br label %68

54:                                               ; preds = %2
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DBRI_MAX_GAIN, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DBRI_MAX_GAIN, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %103

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %7, align 8
  %70 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %7, align 8
  %79 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %68
  %81 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %7, align 8
  %82 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %7, align 8
  %91 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %87, %80
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %97 = call i32 @cs4215_setdata(%struct.snd_dbri* %96, i32 1)
  %98 = call i32 @udelay(i32 125)
  %99 = load %struct.snd_dbri*, %struct.snd_dbri** %6, align 8
  %100 = call i32 @cs4215_setdata(%struct.snd_dbri* %99, i32 0)
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %64, %50
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.snd_dbri* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @cs4215_setdata(%struct.snd_dbri*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
