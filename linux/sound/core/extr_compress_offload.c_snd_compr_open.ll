; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i8* }
%struct.snd_compr = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, %struct.snd_compr_runtime*, %struct.snd_compr*, i32, %struct.TYPE_3__*, i32 }
%struct.snd_compr_runtime = type { %struct.TYPE_4__, i32, i32 }
%struct.snd_compr_file = type { %struct.TYPE_4__, i32, i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@SND_COMPRESS_PLAYBACK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@SND_COMPRESS_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@snd_major = common dso_local global i32 0, align 4
@SNDRV_DEVICE_TYPE_COMPRESS = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no device data!!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"this device doesn't support this direction\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@error_delayed_work = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_compr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_compr*, align 8
  %7 = alloca %struct.snd_compr_file*, align 8
  %8 = alloca %struct.snd_compr_runtime*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @imajor(%struct.inode* %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @O_ACCMODE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  store i32 %22, i32* %9, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @O_ACCMODE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @SND_COMPRESS_CAPTURE, align 4
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %166

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @snd_major, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call i32 @iminor(%struct.inode* %42)
  %44 = load i32, i32* @SNDRV_DEVICE_TYPE_COMPRESS, align 4
  %45 = call %struct.snd_compr* @snd_lookup_minor_data(i32 %43, i32 %44)
  store %struct.snd_compr* %45, %struct.snd_compr** %6, align 8
  br label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EBADFD, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %166

49:                                               ; preds = %41
  %50 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %51 = icmp eq %struct.snd_compr* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %166

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %59 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %65 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snd_card_unref(i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %166

70:                                               ; preds = %56
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.snd_compr_runtime* @kzalloc(i32 56, i32 %71)
  %73 = bitcast %struct.snd_compr_runtime* %72 to %struct.snd_compr_file*
  store %struct.snd_compr_file* %73, %struct.snd_compr_file** %7, align 8
  %74 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %75 = icmp ne %struct.snd_compr_file* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %78 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @snd_card_unref(i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %166

83:                                               ; preds = %70
  %84 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %85 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i32, i32* @error_delayed_work, align 4
  %88 = call i32 @INIT_DELAYED_WORK(i32* %86, i32 %87)
  %89 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %90 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %89, i32 0, i32 3
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %93 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %97 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %100 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %103 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 8
  %105 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %106 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %107 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store %struct.snd_compr* %105, %struct.snd_compr** %108, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.snd_compr_runtime* @kzalloc(i32 56, i32 %109)
  store %struct.snd_compr_runtime* %110, %struct.snd_compr_runtime** %8, align 8
  %111 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %112 = icmp ne %struct.snd_compr_runtime* %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %83
  %114 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %115 = bitcast %struct.snd_compr_file* %114 to %struct.snd_compr_runtime*
  %116 = call i32 @kfree(%struct.snd_compr_runtime* %115)
  %117 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %118 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_card_unref(i32 %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %166

123:                                              ; preds = %83
  %124 = load i32, i32* @SNDRV_PCM_STATE_OPEN, align 4
  %125 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %126 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %128 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %127, i32 0, i32 1
  %129 = call i32 @init_waitqueue_head(i32* %128)
  %130 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %131 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %132 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store %struct.snd_compr_runtime* %130, %struct.snd_compr_runtime** %133, align 8
  %134 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %135 = bitcast %struct.snd_compr_file* %134 to i8*
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %139 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %138, i32 0, i32 2
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %142 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %141, i32 0, i32 3
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %144, align 8
  %146 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %147 = getelementptr inbounds %struct.snd_compr_file, %struct.snd_compr_file* %146, i32 0, i32 0
  %148 = call i32 %145(%struct.TYPE_4__* %147)
  store i32 %148, i32* %11, align 4
  %149 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %150 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %149, i32 0, i32 2
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %123
  %155 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  %156 = call i32 @kfree(%struct.snd_compr_runtime* %155)
  %157 = load %struct.snd_compr_file*, %struct.snd_compr_file** %7, align 8
  %158 = bitcast %struct.snd_compr_file* %157 to %struct.snd_compr_runtime*
  %159 = call i32 @kfree(%struct.snd_compr_runtime* %158)
  br label %160

160:                                              ; preds = %154, %123
  %161 = load %struct.snd_compr*, %struct.snd_compr** %6, align 8
  %162 = getelementptr inbounds %struct.snd_compr, %struct.snd_compr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @snd_card_unref(i32 %163)
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %160, %113, %76, %62, %52, %46, %33
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local %struct.snd_compr* @snd_lookup_minor_data(i32, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @snd_card_unref(i32) #1

declare dso_local %struct.snd_compr_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @kfree(%struct.snd_compr_runtime*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
