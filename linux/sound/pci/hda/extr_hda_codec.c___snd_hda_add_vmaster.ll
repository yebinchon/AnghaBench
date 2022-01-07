; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c___snd_hda_add_vmaster.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c___snd_hda_add_vmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.slave_init_arg = type { i32, %struct.hda_codec* }

@check_slave_present = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No slave found for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@add_slave = common dso_local global i32 0, align 4
@init_slave_0dB = common dso_local global i32 0, align 4
@init_slave_unmute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__snd_hda_add_vmaster(%struct.hda_codec* %0, i8* %1, i32* %2, i8** %3, i8* %4, i32 %5, %struct.snd_kcontrol** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hda_codec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_kcontrol**, align 8
  %16 = alloca %struct.snd_kcontrol*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.slave_init_arg, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.snd_kcontrol** %6, %struct.snd_kcontrol*** %15, align 8
  %19 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  %20 = icmp ne %struct.snd_kcontrol** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %22, align 8
  br label %23

23:                                               ; preds = %21, %7
  %24 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %25 = load i8**, i8*** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32, i32* @check_slave_present, align 4
  %28 = call i32 @map_slaves(%struct.hda_codec* %24, i8** %25, i8* %26, i32 %27, %struct.snd_kcontrol* null)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @codec_dbg(%struct.hda_codec* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 0, i32* %8, align 4
  br label %89

35:                                               ; preds = %23
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %36, i32* %37)
  store %struct.snd_kcontrol* %38, %struct.snd_kcontrol** %16, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %40 = icmp ne %struct.snd_kcontrol* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %89

44:                                               ; preds = %35
  %45 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %47 = call i32 @snd_hda_ctl_add(%struct.hda_codec* %45, i32 0, %struct.snd_kcontrol* %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %8, align 4
  br label %89

52:                                               ; preds = %44
  %53 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* @add_slave, align 4
  %57 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %58 = call i32 @map_slaves(%struct.hda_codec* %53, i8** %54, i8* %55, i32 %56, %struct.snd_kcontrol* %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %8, align 4
  br label %89

63:                                               ; preds = %52
  %64 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %65 = call i32 @put_kctl_with_value(%struct.snd_kcontrol* %64, i32 0)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %18, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.slave_init_arg, %struct.slave_init_arg* %18, i32 0, i32 1
  %71 = load %struct.hda_codec*, %struct.hda_codec** %9, align 8
  store %struct.hda_codec* %71, %struct.hda_codec** %70, align 8
  %72 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @init_slave_0dB, align 4
  br label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @init_slave_unmute, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i32 @snd_ctl_apply_vmaster_slaves(%struct.snd_kcontrol* %72, i32 %80, %struct.slave_init_arg* %18)
  br label %82

82:                                               ; preds = %79, %63
  %83 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  %84 = icmp ne %struct.snd_kcontrol** %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %16, align 8
  %87 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %15, align 8
  store %struct.snd_kcontrol* %86, %struct.snd_kcontrol** %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %61, %50, %41, %31
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @map_slaves(%struct.hda_codec*, i8**, i8*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @codec_dbg(%struct.hda_codec*, i8*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32*) #1

declare dso_local i32 @snd_hda_ctl_add(%struct.hda_codec*, i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @put_kctl_with_value(%struct.snd_kcontrol*, i32) #1

declare dso_local i32 @snd_ctl_apply_vmaster_slaves(%struct.snd_kcontrol*, i32, %struct.slave_init_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
