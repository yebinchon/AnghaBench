; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_add_vmaster.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_snd_ac97_add_vmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_kcontrol = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot find slave %s, skipped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i8*, i32*, i8**)* @snd_ac97_add_vmaster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_add_vmaster(%struct.snd_ac97* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.snd_kcontrol*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_kcontrol*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %14, i32* %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %10, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %18 = icmp ne %struct.snd_kcontrol* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %24 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %29 = call i32 @snd_ctl_add(%struct.TYPE_4__* %27, %struct.snd_kcontrol* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %71

34:                                               ; preds = %22
  %35 = load i8**, i8*** %9, align 8
  store i8** %35, i8*** %11, align 8
  br label %36

36:                                               ; preds = %67, %34
  %37 = load i8**, i8*** %11, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %36
  %41 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97* %41, i8* %43)
  store %struct.snd_kcontrol* %44, %struct.snd_kcontrol** %13, align 8
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %46 = icmp ne %struct.snd_kcontrol* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %40
  %48 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %49 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8**, i8*** %11, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %67

58:                                               ; preds = %40
  %59 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %61 = call i32 @snd_ctl_add_slave(%struct.snd_kcontrol* %59, %struct.snd_kcontrol* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %47
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %11, align 8
  br label %36

70:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %64, %32, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32*) #1

declare dso_local i32 @snd_ctl_add(%struct.TYPE_4__*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ac97_find_mixer_ctl(%struct.snd_ac97*, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @snd_ctl_add_slave(%struct.snd_kcontrol*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
