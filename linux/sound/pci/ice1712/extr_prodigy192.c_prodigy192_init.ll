; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy192.c_prodigy192_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy192.c_prodigy192_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.prodigy192_spec*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.prodigy192_spec = type { i32 }

@prodigy192_init.stac_inits_prodigy = internal constant [5 x i16] [i16 128, i16 0, i16 129, i16 17, i16 -1], align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stac9460_set_rate_val = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"AK4114 initialized with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"AK4114 not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @prodigy192_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prodigy192_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.prodigy192_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 0
  store i32 6, i32* %8, align 8
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 1
  store i32 2, i32* %10, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.prodigy192_spec* @kzalloc(i32 4, i32 %13)
  store %struct.prodigy192_spec* %14, %struct.prodigy192_spec** %6, align 8
  %15 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %6, align 8
  %16 = icmp ne %struct.prodigy192_spec* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %1
  %21 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %6, align 8
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 4
  store %struct.prodigy192_spec* %21, %struct.prodigy192_spec** %23, align 8
  %24 = load %struct.prodigy192_spec*, %struct.prodigy192_spec** %6, align 8
  %25 = getelementptr inbounds %struct.prodigy192_spec, %struct.prodigy192_spec* %24, i32 0, i32 0
  %26 = call i32 @mutex_init(i32* %25)
  store i16* getelementptr inbounds ([5 x i16], [5 x i16]* @prodigy192_init.stac_inits_prodigy, i64 0, i64 0), i16** %4, align 8
  br label %27

27:                                               ; preds = %41, %20
  %28 = load i16*, i16** %4, align 8
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %30, 65535
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %34 = load i16*, i16** %4, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 0
  %36 = load i16, i16* %35, align 2
  %37 = load i16*, i16** %4, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 1
  %39 = load i16, i16* %38, align 2
  %40 = call i32 @stac9460_put(%struct.snd_ice1712* %33, i16 zeroext %36, i16 zeroext %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i16*, i16** %4, align 8
  %43 = getelementptr inbounds i16, i16* %42, i64 2
  store i16* %43, i16** %4, align 8
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* @stac9460_set_rate_val, align 4
  %46 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %50 = call i64 @prodigy192_miodio_exists(%struct.snd_ice1712* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %54 = call i32 @prodigy192_ak4114_init(%struct.snd_ice1712* %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %69

62:                                               ; preds = %44
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %64 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %52
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.prodigy192_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stac9460_put(%struct.snd_ice1712*, i16 zeroext, i16 zeroext) #1

declare dso_local i64 @prodigy192_miodio_exists(%struct.snd_ice1712*) #1

declare dso_local i32 @prodigy192_ak4114_init(%struct.snd_ice1712*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
