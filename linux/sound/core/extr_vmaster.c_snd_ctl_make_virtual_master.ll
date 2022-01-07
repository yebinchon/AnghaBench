; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_snd_ctl_make_virtual_master.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_snd_ctl_make_virtual_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.link_master = type { i32, i32 }
%struct.snd_kcontrol_new = type { i8*, i8*, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@master_info = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@master_get = common dso_local global i32 0, align 4
@master_put = common dso_local global i32 0, align 4
@master_free = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVO_TYPE = common dso_local global i64 0, align 8
@SNDRV_CTL_TLVT_DB_SCALE = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_MINMAX = common dso_local global i32 0, align 4
@SNDRV_CTL_TLVT_DB_MINMAX_MUTE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.link_master*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca %struct.snd_kcontrol_new, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 @memset(%struct.snd_kcontrol_new* %8, i32 0, i32 24)
  %11 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @master_info, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %8, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.link_master* @kzalloc(i32 8, i32 %17)
  store %struct.link_master* %18, %struct.link_master** %6, align 8
  %19 = load %struct.link_master*, %struct.link_master** %6, align 8
  %20 = icmp ne %struct.link_master* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %87

22:                                               ; preds = %2
  %23 = load %struct.link_master*, %struct.link_master** %6, align 8
  %24 = getelementptr inbounds %struct.link_master, %struct.link_master* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.link_master*, %struct.link_master** %6, align 8
  %27 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %8, %struct.link_master* %26)
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %7, align 8
  %28 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %29 = icmp ne %struct.snd_kcontrol* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load %struct.link_master*, %struct.link_master** %6, align 8
  %32 = call i32 @kfree(%struct.link_master* %31)
  store %struct.snd_kcontrol* null, %struct.snd_kcontrol** %3, align 8
  br label %87

33:                                               ; preds = %22
  %34 = load i8*, i8** @master_info, align 8
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @master_get, align 4
  %38 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @master_put, align 4
  %41 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %42 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @master_free, align 4
  %44 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %33
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @SNDRV_CTL_TLVO_TYPE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SNDRV_CTL_TLVT_DB_SCALE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SNDRV_CTL_TLVT_DB_MINMAX, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SNDRV_CTL_TLVT_DB_MINMAX_MUTE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %60, %56, %48
  %65 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %66 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %67 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %65
  store i32 %72, i32* %70, align 4
  %73 = load %struct.link_master*, %struct.link_master** %6, align 8
  %74 = getelementptr inbounds %struct.link_master, %struct.link_master* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @memcpy(i32 %75, i32* %76, i32 4)
  %78 = load %struct.link_master*, %struct.link_master** %6, align 8
  %79 = getelementptr inbounds %struct.link_master, %struct.link_master* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %64, %60
  br label %85

85:                                               ; preds = %84, %33
  %86 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  store %struct.snd_kcontrol* %86, %struct.snd_kcontrol** %3, align 8
  br label %87

87:                                               ; preds = %85, %30, %21
  %88 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  ret %struct.snd_kcontrol* %88
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local %struct.link_master* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.link_master*) #1

declare dso_local i32 @kfree(%struct.link_master*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
