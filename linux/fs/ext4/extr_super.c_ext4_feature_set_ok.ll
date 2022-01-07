; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_feature_set_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_feature_set_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Couldn't mount because of unsupported optional features (%x)\00", align 1
@EXT4_FEATURE_INCOMPAT_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Filesystem with casefold feature cannot be mounted without CONFIG_UNICODE\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"filesystem is read-only\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"couldn't mount RDWR because of unsupported optional features (%x)\00", align 1
@EXT4_FEATURE_RO_COMPAT_SUPP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Can't support bigalloc feature without extents feature\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"Filesystem with quota feature cannot be mounted RDWR without CONFIG_QUOTA\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"Filesystem with project quota feature cannot be mounted RDWR without CONFIG_QUOTA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_feature_set_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_feature_set_ok(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = call i64 @ext4_has_unknown_ext4_incompat_features(%struct.super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* @KERN_ERR, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* @EXT4_FEATURE_INCOMPAT_SUPP, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %10, i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = call i64 @ext4_has_feature_casefold(%struct.super_block* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %101

35:                                               ; preds = %31
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = call i64 @ext4_has_feature_readonly(%struct.super_block* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %40, i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @SB_RDONLY, align 4
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i32 1, i32* %3, align 4
  br label %101

48:                                               ; preds = %35
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = call i64 @ext4_has_unknown_ext4_ro_compat_features(%struct.super_block* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.super_block*, %struct.super_block** %4, align 8
  %54 = load i32, i32* @KERN_ERR, align 4
  %55 = load %struct.super_block*, %struct.super_block** %4, align 8
  %56 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_SUPP, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %53, i32 %54, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 0, i32* %3, align 4
  br label %101

66:                                               ; preds = %48
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = call i64 @ext4_has_feature_bigalloc(%struct.super_block* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = call i32 @ext4_has_feature_extents(%struct.super_block* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load %struct.super_block*, %struct.super_block** %4, align 8
  %76 = load i32, i32* @KERN_ERR, align 4
  %77 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %75, i32 %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

78:                                               ; preds = %70, %66
  %79 = load %struct.super_block*, %struct.super_block** %4, align 8
  %80 = call i64 @ext4_has_feature_quota(%struct.super_block* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load %struct.super_block*, %struct.super_block** %4, align 8
  %87 = load i32, i32* @KERN_ERR, align 4
  %88 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %86, i32 %87, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

89:                                               ; preds = %82, %78
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = call i64 @ext4_has_feature_project(%struct.super_block* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load %struct.super_block*, %struct.super_block** %4, align 8
  %98 = load i32, i32* @KERN_ERR, align 4
  %99 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %97, i32 %98, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

100:                                              ; preds = %93, %89
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %96, %85, %74, %52, %39, %34, %27, %9
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @ext4_has_unknown_ext4_incompat_features(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_casefold(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_readonly(%struct.super_block*) #1

declare dso_local i64 @ext4_has_unknown_ext4_ro_compat_features(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_bigalloc(%struct.super_block*) #1

declare dso_local i32 @ext4_has_feature_extents(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_quota(%struct.super_block*) #1

declare dso_local i64 @ext4_has_feature_project(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
