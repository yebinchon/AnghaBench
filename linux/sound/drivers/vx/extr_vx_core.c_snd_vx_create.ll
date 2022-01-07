; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_snd_vx_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_core.c_snd_vx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32, %struct.snd_card*, i32, %struct.snd_vx_ops*, i32, %struct.snd_vx_hardware*, i32 }
%struct.snd_card = type { i32, i32, %struct.vx_core* }
%struct.snd_vx_hardware = type { i8*, i32 }
%struct.snd_vx_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Digigram %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vx_core* @snd_vx_create(%struct.snd_card* %0, %struct.snd_vx_hardware* %1, %struct.snd_vx_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_vx_hardware*, align 8
  %8 = alloca %struct.snd_vx_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vx_core*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.snd_vx_hardware* %1, %struct.snd_vx_hardware** %7, align 8
  store %struct.snd_vx_ops* %2, %struct.snd_vx_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %12 = icmp ne %struct.snd_card* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load %struct.snd_vx_hardware*, %struct.snd_vx_hardware** %7, align 8
  %15 = icmp ne %struct.snd_vx_hardware* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.snd_vx_ops*, %struct.snd_vx_ops** %8, align 8
  %18 = icmp ne %struct.snd_vx_ops* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13, %4
  %21 = phi i1 [ true, %13 ], [ true, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @snd_BUG_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.vx_core* null, %struct.vx_core** %5, align 8
  br label %79

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 56, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vx_core* @kzalloc(i32 %30, i32 %31)
  store %struct.vx_core* %32, %struct.vx_core** %10, align 8
  %33 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %34 = icmp ne %struct.vx_core* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store %struct.vx_core* null, %struct.vx_core** %5, align 8
  br label %79

36:                                               ; preds = %26
  %37 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %38 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %37, i32 0, i32 6
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %41 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.snd_vx_hardware*, %struct.snd_vx_hardware** %7, align 8
  %43 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %44 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %43, i32 0, i32 5
  store %struct.snd_vx_hardware* %42, %struct.snd_vx_hardware** %44, align 8
  %45 = load %struct.snd_vx_hardware*, %struct.snd_vx_hardware** %7, align 8
  %46 = getelementptr inbounds %struct.snd_vx_hardware, %struct.snd_vx_hardware* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %49 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.snd_vx_ops*, %struct.snd_vx_ops** %8, align 8
  %51 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %52 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %51, i32 0, i32 3
  store %struct.snd_vx_ops* %50, %struct.snd_vx_ops** %52, align 8
  %53 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %54 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %53, i32 0, i32 2
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %57 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %58 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %57, i32 0, i32 1
  store %struct.snd_card* %56, %struct.snd_card** %58, align 8
  %59 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %60 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %61 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %60, i32 0, i32 2
  store %struct.vx_core* %59, %struct.vx_core** %61, align 8
  %62 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %63 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_vx_hardware*, %struct.snd_vx_hardware** %7, align 8
  %66 = getelementptr inbounds %struct.snd_vx_hardware, %struct.snd_vx_hardware* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcpy(i32 %64, i8* %67)
  %69 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %70 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_vx_hardware*, %struct.snd_vx_hardware** %7, align 8
  %73 = getelementptr inbounds %struct.snd_vx_hardware, %struct.snd_vx_hardware* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @sprintf(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  %77 = call i32 @vx_proc_init(%struct.vx_core* %76)
  %78 = load %struct.vx_core*, %struct.vx_core** %10, align 8
  store %struct.vx_core* %78, %struct.vx_core** %5, align 8
  br label %79

79:                                               ; preds = %36, %35, %25
  %80 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  ret %struct.vx_core* %80
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.vx_core* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @vx_proc_init(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
