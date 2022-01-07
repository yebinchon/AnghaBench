; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_setup_fg_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_setup_fg_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32, i32, i32, i8*, i8* }

@AC_NODE_ROOT = common dso_local global i32 0, align 4
@AC_PAR_FUNCTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_device*)* @setup_fg_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_fg_nodes(%struct.hdac_device* %0) #0 {
  %2 = alloca %struct.hdac_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %2, align 8
  %7 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %8 = load i32, i32* @AC_NODE_ROOT, align 4
  %9 = call i32 @snd_hdac_get_sub_nodes(%struct.hdac_device* %7, i32 %8, i8** %6)
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %49, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @AC_PAR_FUNCTION_TYPE, align 4
  %18 = call i32 @snd_hdac_read_parm(%struct.hdac_device* %15, i8* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  switch i32 %20, label %47 [
    i32 129, label %21
    i32 128, label %34
  ]

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %24 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %28 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 1
  %32 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %33 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %48

34:                                               ; preds = %14
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %37 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %41 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 1
  %45 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %46 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %48

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %47, %34, %21
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  br label %10

54:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snd_hdac_get_sub_nodes(%struct.hdac_device*, i32, i8**) #1

declare dso_local i32 @snd_hdac_read_parm(%struct.hdac_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
