; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_command_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_command.c_command_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i32 }
%struct.efc_clock = type { i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFC_CAT_HWCTL = common dso_local global i32 0, align 4
@EFC_CMD_HWCTL_SET_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_efw*, i32, i32)* @command_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_set_clock(%struct.snd_efw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_efw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efc_clock, align 4
  %8 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.efc_clock* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @UINT_MAX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UINT_MAX, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %79

20:                                               ; preds = %13, %3
  %21 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %22 = call i32 @command_get_clock(%struct.snd_efw* %21, %struct.efc_clock* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %79

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %79

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UINT_MAX, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41, %37
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @UINT_MAX, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %53, %49
  %62 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 2
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 0
  %64 = call i32 @cpu_to_be32s(i32* %63)
  %65 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 1
  %66 = call i32 @cpu_to_be32s(i32* %65)
  %67 = getelementptr inbounds %struct.efc_clock, %struct.efc_clock* %7, i32 0, i32 2
  %68 = call i32 @cpu_to_be32s(i32* %67)
  %69 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %70 = load i32, i32* @EFC_CAT_HWCTL, align 4
  %71 = load i32, i32* @EFC_CMD_HWCTL_SET_CLOCK, align 4
  %72 = bitcast %struct.efc_clock* %7 to i32*
  %73 = call i32 @efw_transaction(%struct.snd_efw* %69, i32 %70, i32 %71, i32* %72, i32 16, i32* null, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %79

77:                                               ; preds = %61
  %78 = call i32 @msleep(i32 150)
  br label %79

79:                                               ; preds = %77, %76, %36, %25, %17
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @command_get_clock(%struct.snd_efw*, %struct.efc_clock*) #2

declare dso_local i32 @cpu_to_be32s(i32*) #2

declare dso_local i32 @efw_transaction(%struct.snd_efw*, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
