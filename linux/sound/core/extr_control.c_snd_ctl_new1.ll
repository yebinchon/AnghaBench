; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_new1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_new1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i8*, i32, %struct.TYPE_5__, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_VOLATILE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_COMMAND = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ALSA: Control name '%s' truncated to '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_kcontrol_new*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol_new* %0, %struct.snd_kcontrol_new** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %11 = icmp ne %struct.snd_kcontrol_new* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %148

24:                                               ; preds = %18
  %25 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %33 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %41 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_VOLATILE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_COMMAND, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @snd_ctl_new(%struct.snd_kcontrol** %6, i32 %53, i32 %54, i32* null)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %148

59:                                               ; preds = %39
  %60 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %61 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %64 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %67 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %70 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %73 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %76 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %74, i32* %77, align 8
  %78 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %59
  %83 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %84 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %88 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strlcpy(i32 %86, i32 %89, i32 4)
  %91 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %92 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %95 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @strcmp(i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %82
  %101 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %102 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %105 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %100, %82
  br label %110

110:                                              ; preds = %109, %59
  %111 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %112 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %115 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %118 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %121 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %123 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %126 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %128 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %131 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %133 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %137 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  %139 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %4, align 8
  %140 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %143 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %146 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  %147 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  store %struct.snd_kcontrol* %147, %struct.snd_kcontrol** %3, align 8
  br label %148

148:                                              ; preds = %110, %58, %23
  %149 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  ret %struct.snd_kcontrol* %149
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_ctl_new(%struct.snd_kcontrol**, i32, i32, i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
