; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_user_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.user_element* }
%struct.user_element = type { i32, i8* }
%struct.snd_ctl_elem_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_user_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_user_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.user_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load %struct.user_element*, %struct.user_element** %9, align 8
  store %struct.user_element* %10, %struct.user_element** %5, align 8
  %11 = load %struct.user_element*, %struct.user_element** %5, align 8
  %12 = getelementptr inbounds %struct.user_element, %struct.user_element* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.user_element*, %struct.user_element** %5, align 8
  %15 = getelementptr inbounds %struct.user_element, %struct.user_element* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %18 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %18, i32 0, i32 1
  %20 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %17, i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = mul i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %16, i64 %23
  store i8* %24, i8** %7, align 8
  %25 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %25, i32 0, i32 0
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i32* %26, i8* %27, i32 %28)
  ret i32 0
}

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
