; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_info_inputtype_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_info_inputtype_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.rme96 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@snd_rme96_info_inputtype_control._texts = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"Optical\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Coaxial\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"XLR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Analog\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_rme96_info_inputtype_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme96_info_inputtype_control(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca %struct.rme96*, align 8
  %7 = alloca [5 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.rme96* %10, %struct.rme96** %6, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %12 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 0), align 16
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 1), align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 1
  %16 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 2), align 16
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  %18 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 3), align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 1
  %20 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 4), align 16
  store i8* %20, i8** %19, align 8
  %21 = load %struct.rme96*, %struct.rme96** %6, align 8
  %22 = getelementptr inbounds %struct.rme96, %struct.rme96* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %38 [
    i32 131, label %26
    i32 130, label %26
    i32 128, label %27
    i32 129, label %28
  ]

26:                                               ; preds = %2, %2
  store i32 3, i32* %8, align 4
  br label %42

27:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.rme96*, %struct.rme96** %6, align 8
  %30 = getelementptr inbounds %struct.rme96, %struct.rme96* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  store i32 4, i32* %8, align 4
  %34 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @snd_rme96_info_inputtype_control._texts, i64 0, i64 4), align 16
  %35 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 3
  store i8* %34, i8** %35, align 8
  br label %37

36:                                               ; preds = %28
  store i32 5, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %42

38:                                               ; preds = %2
  %39 = call i32 (...) @snd_BUG()
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %37, %27, %26
  %43 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %46 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %43, i32 1, i32 %44, i8** %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.rme96* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
