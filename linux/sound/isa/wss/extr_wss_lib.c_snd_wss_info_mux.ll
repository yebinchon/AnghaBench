; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_info_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_info_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }
%struct.snd_wss = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@snd_wss_info_mux.texts = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Mix\00", align 1
@snd_wss_info_mux.opl3sa_texts = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@snd_wss_info_mux.gusmax_texts = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"Synth\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"GUS MAX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_wss_info_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_info_mux(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.snd_wss*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @snd_wss_info_mux.texts, i64 0, i64 0), i8*** %6, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = call %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol* %8)
  store %struct.snd_wss* %9, %struct.snd_wss** %7, align 8
  %10 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %11 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %23 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @snd_wss_info_mux.gusmax_texts, i64 0, i64 0), i8*** %6, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load %struct.snd_wss*, %struct.snd_wss** %7, align 8
  %32 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %36 [
    i32 130, label %34
    i32 128, label %35
    i32 129, label %35
  ]

34:                                               ; preds = %30
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @snd_wss_info_mux.gusmax_texts, i64 0, i64 0), i8*** %6, align 8
  br label %36

35:                                               ; preds = %30, %30
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @snd_wss_info_mux.opl3sa_texts, i64 0, i64 0), i8*** %6, align 8
  br label %36

36:                                               ; preds = %30, %35, %34
  %37 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %37, i32 2, i32 4, i8** %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.snd_wss* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
