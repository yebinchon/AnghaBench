; ModuleID = '/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_snd_ac97_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ac97/extr_bus.c_snd_ac97_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_controller = type { i16, %struct.device*, %struct.ac97_controller_ops*, i8** }
%struct.ac97_controller_ops = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AC97_BUS_MAX_CODECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ac97_controller* @snd_ac97_controller_register(%struct.ac97_controller_ops* %0, %struct.device* %1, i16 zeroext %2, i8** %3) #0 {
  %5 = alloca %struct.ac97_controller*, align 8
  %6 = alloca %struct.ac97_controller_ops*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i8**, align 8
  %10 = alloca %struct.ac97_controller*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ac97_controller_ops* %0, %struct.ac97_controller_ops** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i16 %2, i16* %8, align 2
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ac97_controller* @kzalloc(i32 32, i32 %13)
  store %struct.ac97_controller* %14, %struct.ac97_controller** %10, align 8
  %15 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %16 = icmp ne %struct.ac97_controller* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ac97_controller* @ERR_PTR(i32 %19)
  store %struct.ac97_controller* %20, %struct.ac97_controller** %5, align 8
  br label %72

21:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @AC97_BUS_MAX_CODECS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8**, i8*** %9, align 8
  %28 = icmp ne i8** %27, null
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %46

31:                                               ; preds = %29
  %32 = load i8**, i8*** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %38 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %37, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %22

46:                                               ; preds = %29
  %47 = load %struct.ac97_controller_ops*, %struct.ac97_controller_ops** %6, align 8
  %48 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %49 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %48, i32 0, i32 2
  store %struct.ac97_controller_ops* %47, %struct.ac97_controller_ops** %49, align 8
  %50 = load i16, i16* %8, align 2
  %51 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %52 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %51, i32 0, i32 0
  store i16 %50, i16* %52, align 8
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %55 = getelementptr inbounds %struct.ac97_controller, %struct.ac97_controller* %54, i32 0, i32 1
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %57 = call i32 @ac97_add_adapter(%struct.ac97_controller* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %67

61:                                               ; preds = %46
  %62 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %63 = call i32 @ac97_bus_reset(%struct.ac97_controller* %62)
  %64 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %65 = call i32 @ac97_bus_scan(%struct.ac97_controller* %64)
  %66 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  store %struct.ac97_controller* %66, %struct.ac97_controller** %5, align 8
  br label %72

67:                                               ; preds = %60
  %68 = load %struct.ac97_controller*, %struct.ac97_controller** %10, align 8
  %69 = call i32 @kfree(%struct.ac97_controller* %68)
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.ac97_controller* @ERR_PTR(i32 %70)
  store %struct.ac97_controller* %71, %struct.ac97_controller** %5, align 8
  br label %72

72:                                               ; preds = %67, %61, %17
  %73 = load %struct.ac97_controller*, %struct.ac97_controller** %5, align 8
  ret %struct.ac97_controller* %73
}

declare dso_local %struct.ac97_controller* @kzalloc(i32, i32) #1

declare dso_local %struct.ac97_controller* @ERR_PTR(i32) #1

declare dso_local i32 @ac97_add_adapter(%struct.ac97_controller*) #1

declare dso_local i32 @ac97_bus_reset(%struct.ac97_controller*) #1

declare dso_local i32 @ac97_bus_scan(%struct.ac97_controller*) #1

declare dso_local i32 @kfree(%struct.ac97_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
