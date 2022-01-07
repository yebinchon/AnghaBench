; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_control.c_validate_element_member_dimension.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_control.c_validate_element_member_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ctl_elem_info*)* @validate_element_member_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_element_member_dimension(%struct.snd_ctl_elem_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ctl_elem_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_ctl_elem_info* %0, %struct.snd_ctl_elem_info** %3, align 8
  %6 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %88

14:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %15
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %55

34:                                               ; preds = %23
  %35 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = mul i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %88

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %33, %15
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %78, %55
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %61 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = icmp ult i32 %59, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %88

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %3, align 8
  %84 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %76, %50, %13
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
