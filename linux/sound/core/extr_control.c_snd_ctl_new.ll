; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.snd_ctl_file* }
%struct.snd_ctl_file = type { i32 }

@MAX_CONTROL_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vd = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol**, i32, i32, %struct.snd_ctl_file*)* @snd_ctl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_new(%struct.snd_kcontrol** %0, i32 %1, i32 %2, %struct.snd_ctl_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_kcontrol**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ctl_file*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol** %0, %struct.snd_kcontrol*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.snd_ctl_file* %3, %struct.snd_ctl_file** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MAX_CONTROL_COUNT, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %67

20:                                               ; preds = %13
  %21 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %21, align 8
  %23 = load i32, i32* @vd, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @struct_size(%struct.snd_kcontrol* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.snd_kcontrol* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  store %struct.snd_kcontrol* %27, %struct.snd_kcontrol** %28, align 8
  %29 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %29, align 8
  %31 = icmp ne %struct.snd_kcontrol* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %67

35:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %42, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %41, i32* %49, align 8
  %50 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %9, align 8
  %51 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %51, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store %struct.snd_ctl_file* %50, %struct.snd_ctl_file** %58, align 8
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %6, align 8
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %64, align 8
  %66 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %62, %32, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.snd_kcontrol* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.snd_kcontrol*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
