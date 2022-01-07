; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_ac97_rw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_ac97_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis7019 = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@sis_ac97_rw.codec_ready = internal constant [3 x i32] [i32 128, i32 130, i32 129], align 4
@SIS_AC97_SEMA = common dso_local global i64 0, align 8
@SIS_AC97_SEMA_BUSY = common dso_local global i32 0, align 4
@SIS_AC97_STATUS = common dso_local global i64 0, align 8
@SIS_AC97_STATUS_BUSY = common dso_local global i32 0, align 4
@SIS_AC97_CMD = common dso_local global i64 0, align 8
@SIS_AC97_SEMA_RELEASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ac97 codec %d timeout cmd 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.sis7019*, i32, i32)* @sis_ac97_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @sis_ac97_rw(%struct.sis7019* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sis7019*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sis7019* %0, %struct.sis7019** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sis7019*, %struct.sis7019** %4, align 8
  %13 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store i16 -1, i16* %8, align 2
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* @sis_ac97_rw.codec_ready, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sis7019*, %struct.sis7019** %4, align 8
  %20 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 65535, i32* %11, align 4
  br label %22

22:                                               ; preds = %36, %3
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @SIS_AC97_SEMA, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @inw(i64 %25)
  %27 = load i32, i32* @SIS_AC97_SEMA_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i1 [ false, %22 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @udelay(i32 1)
  br label %22

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %104

42:                                               ; preds = %38
  store i32 65535, i32* %11, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @SIS_AC97_STATUS, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @inw(i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SIS_AC97_STATUS_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %64

58:                                               ; preds = %52, %43
  %59 = call i32 @udelay(i32 1)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %43, label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %98

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @SIS_AC97_CMD, align 8
  %72 = add i64 %70, %71
  %73 = call i32 @outl(i32 %69, i64 %72)
  %74 = call i32 @udelay(i32 10)
  store i32 65535, i32* %11, align 4
  br label %75

75:                                               ; preds = %89, %68
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @SIS_AC97_STATUS, align 8
  %78 = add i64 %76, %77
  %79 = call i32 @inw(i64 %78)
  %80 = load i32, i32* @SIS_AC97_STATUS_BUSY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %83, %75
  %88 = phi i1 [ false, %75 ], [ %86, %83 ]
  br i1 %88, label %89, label %91

89:                                               ; preds = %87
  %90 = call i32 @udelay(i32 1)
  br label %75

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @SIS_AC97_CMD, align 8
  %94 = add i64 %92, %93
  %95 = call i32 @inl(i64 %94)
  %96 = ashr i32 %95, 16
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %8, align 2
  br label %98

98:                                               ; preds = %91, %67
  %99 = load i32, i32* @SIS_AC97_SEMA_RELEASE, align 4
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @SIS_AC97_SEMA, align 8
  %102 = add i64 %100, %101
  %103 = call i32 @outl(i32 %99, i64 %102)
  br label %104

104:                                              ; preds = %98, %41
  %105 = load %struct.sis7019*, %struct.sis7019** %4, align 8
  %106 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %104
  %111 = load %struct.sis7019*, %struct.sis7019** %4, align 8
  %112 = getelementptr inbounds %struct.sis7019, %struct.sis7019* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %110, %104
  %119 = load i16, i16* %8, align 2
  ret i16 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
