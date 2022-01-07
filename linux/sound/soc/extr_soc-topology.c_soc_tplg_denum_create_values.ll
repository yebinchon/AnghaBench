; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create_values.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_tplg_denum_create_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_enum = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_tplg_enum_control = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_enum*, %struct.snd_soc_tplg_enum_control*)* @soc_tplg_denum_create_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_tplg_denum_create_values(%struct.soc_enum* %0, %struct.snd_soc_tplg_enum_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_enum*, align 8
  %5 = alloca %struct.snd_soc_tplg_enum_control*, align 8
  %6 = alloca i32, align 4
  store %struct.soc_enum* %0, %struct.soc_enum** %4, align 8
  store %struct.snd_soc_tplg_enum_control* %1, %struct.snd_soc_tplg_enum_control** %5, align 8
  %7 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %8 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le32_to_cpu(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %27 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* %25, i32** %29, align 8
  %30 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %31 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %68

39:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.snd_soc_tplg_enum_control*, %struct.snd_soc_tplg_enum_control** %5, align 8
  %49 = getelementptr inbounds %struct.snd_soc_tplg_enum_control, %struct.snd_soc_tplg_enum_control* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.soc_enum*, %struct.soc_enum** %4, align 8
  %57 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %55, i32* %63, align 4
  br label %64

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %40

67:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %36, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
