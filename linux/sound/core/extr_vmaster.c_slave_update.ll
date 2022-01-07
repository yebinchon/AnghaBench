; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_slave_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_vmaster.c_slave_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_slave = type { i32*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)*, i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_slave*)* @slave_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slave_update(%struct.link_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.link_slave*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.link_slave* %0, %struct.link_slave** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_ctl_elem_value* @kzalloc(i32 16, i32 %7)
  store %struct.snd_ctl_elem_value* %8, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %10 = icmp ne %struct.snd_ctl_elem_value* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %16 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %22 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)*, i32 (%struct.TYPE_8__*, %struct.snd_ctl_elem_value*)** %23, align 8
  %25 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %26 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %25, i32 0, i32 2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = call i32 %24(%struct.TYPE_8__* %26, %struct.snd_ctl_elem_value* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  br label %60

32:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %36 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %33
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.link_slave*, %struct.link_slave** %3, align 8
  %51 = getelementptr inbounds %struct.link_slave, %struct.link_slave* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %33

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %31
  %61 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %62 = call i32 @kfree(%struct.snd_ctl_elem_value* %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.snd_ctl_elem_value* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
