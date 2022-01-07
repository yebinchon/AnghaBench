; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sb_mount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_sb_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.aa_label = type { i32 }

@MS_MGC_MSK = common dso_local global i64 0, align 8
@MS_MGC_VAL = common dso_local global i64 0, align 8
@AA_MS_IGNORE_MASK = common dso_local global i64 0, align 8
@MS_REMOUNT = common dso_local global i64 0, align 8
@MS_BIND = common dso_local global i64 0, align 8
@MS_SHARED = common dso_local global i64 0, align 8
@MS_PRIVATE = common dso_local global i64 0, align 8
@MS_SLAVE = common dso_local global i64 0, align 8
@MS_UNBINDABLE = common dso_local global i64 0, align 8
@MS_MOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.path*, i8*, i64, i8*)* @apparmor_sb_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_sb_mount(i8* %0, %struct.path* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @MS_MGC_MSK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @MS_MGC_VAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load i64, i64* @MS_MGC_MSK, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %9, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %18, %5
  %24 = load i64, i64* @AA_MS_IGNORE_MASK, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %9, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %28, %struct.aa_label** %11, align 8
  %29 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %30 = call i32 @unconfined(%struct.aa_label* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %92, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MS_REMOUNT, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %39 = load %struct.path*, %struct.path** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @aa_remount(%struct.aa_label* %38, %struct.path* %39, i64 %40, i8* %41)
  store i32 %42, i32* %12, align 4
  br label %91

43:                                               ; preds = %32
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @MS_BIND, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %50 = load %struct.path*, %struct.path** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @aa_bind_mount(%struct.aa_label* %49, %struct.path* %50, i8* %51, i64 %52)
  store i32 %53, i32* %12, align 4
  br label %90

54:                                               ; preds = %43
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @MS_SHARED, align 8
  %57 = load i64, i64* @MS_PRIVATE, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* @MS_SLAVE, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* @MS_UNBINDABLE, align 8
  %62 = or i64 %60, %61
  %63 = and i64 %55, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %67 = load %struct.path*, %struct.path** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @aa_mount_change_type(%struct.aa_label* %66, %struct.path* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  br label %89

70:                                               ; preds = %54
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @MS_MOVE, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %77 = load %struct.path*, %struct.path** %7, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @aa_move_mount(%struct.aa_label* %76, %struct.path* %77, i8* %78)
  store i32 %79, i32* %12, align 4
  br label %88

80:                                               ; preds = %70
  %81 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.path*, %struct.path** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @aa_new_mount(%struct.aa_label* %81, i8* %82, %struct.path* %83, i8* %84, i64 %85, i8* %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %48
  br label %91

91:                                               ; preds = %90, %37
  br label %92

92:                                               ; preds = %91, %23
  %93 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %94 = call i32 @__end_current_label_crit_section(%struct.aa_label* %93)
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_remount(%struct.aa_label*, %struct.path*, i64, i8*) #1

declare dso_local i32 @aa_bind_mount(%struct.aa_label*, %struct.path*, i8*, i64) #1

declare dso_local i32 @aa_mount_change_type(%struct.aa_label*, %struct.path*, i64) #1

declare dso_local i32 @aa_move_mount(%struct.aa_label*, %struct.path*, i8*) #1

declare dso_local i32 @aa_new_mount(%struct.aa_label*, i8*, %struct.path*, i8*, i64, i8*) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
