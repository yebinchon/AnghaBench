; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_get_double.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_get_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.snd_es18xx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_es18xx_get_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_get_double(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_es18xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %14 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %15 = call %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol* %14)
  store %struct.snd_es18xx* %15, %struct.snd_es18xx** %5, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %26 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 7
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 19
  %34 = and i32 %33, 7
  store i32 %34, i32* %9, align 4
  %35 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 24
  %39 = and i32 %38, 255
  store i32 %39, i32* %10, align 4
  %40 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %41 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 22
  %44 = and i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call zeroext i8 @snd_es18xx_reg_read(%struct.snd_es18xx* %45, i32 %46)
  store i8 %47, i8* %12, align 1
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call zeroext i8 @snd_es18xx_reg_read(%struct.snd_es18xx* %52, i32 %53)
  store i8 %54, i8* %13, align 1
  br label %57

55:                                               ; preds = %2
  %56 = load i8, i8* %12, align 1
  store i8 %56, i8* %13, align 1
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8, i8* %12, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %61, %62
  %64 = trunc i32 %63 to i8
  %65 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %64, i8* %70, align 1
  %71 = load i8, i8* %13, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %72, %73
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %74, %75
  %77 = trunc i32 %76 to i8
  %78 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %77, i8* %83, align 1
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %57
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %89 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %87, %95
  %97 = trunc i32 %96 to i8
  %98 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 %97, i8* %103, align 1
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %106 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 %104, %112
  %114 = trunc i32 %113 to i8
  %115 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %116 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8 %114, i8* %120, align 1
  br label %121

121:                                              ; preds = %86, %57
  ret i32 0
}

declare dso_local %struct.snd_es18xx* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local zeroext i8 @snd_es18xx_reg_read(%struct.snd_es18xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
