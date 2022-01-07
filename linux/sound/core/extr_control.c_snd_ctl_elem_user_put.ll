; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_user_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_snd_ctl_elem_user_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.user_element* }
%struct.user_element = type { i32, i8* }
%struct.snd_ctl_elem_value = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_ctl_elem_user_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_user_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load %struct.user_element*, %struct.user_element** %10, align 8
  store %struct.user_element* %11, %struct.user_element** %6, align 8
  %12 = load %struct.user_element*, %struct.user_element** %6, align 8
  %13 = getelementptr inbounds %struct.user_element, %struct.user_element* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.user_element*, %struct.user_element** %6, align 8
  %16 = getelementptr inbounds %struct.user_element, %struct.user_element* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 1
  %21 = call i32 @snd_ctl_get_ioff(%struct.snd_kcontrol* %18, i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %17, i64 %24
  store i8* %25, i8** %8, align 8
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @memcmp(i32* %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i8* %36, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %2
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @snd_ctl_get_ioff(%struct.snd_kcontrol*, i32*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
