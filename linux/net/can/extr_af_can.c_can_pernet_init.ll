; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_pernet_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_af_can.c_can_pernet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CONFIG_PROC_FS = common dso_local global i32 0, align 4
@stats_timer = common dso_local global i64 0, align 8
@can_stat_update = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @can_pernet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_pernet_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = getelementptr inbounds %struct.net, %struct.net* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 8, i32 %8)
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %88

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 8, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  %24 = load %struct.net*, %struct.net** %3, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.net*, %struct.net** %3, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %82

33:                                               ; preds = %20
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kzalloc(i32 1, i32 %34)
  %36 = load %struct.net*, %struct.net** %3, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = load %struct.net*, %struct.net** %3, align 8
  %40 = getelementptr inbounds %struct.net, %struct.net* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %76

45:                                               ; preds = %33
  %46 = load i32, i32* @CONFIG_PROC_FS, align 4
  %47 = call i64 @IS_ENABLED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i64, i64* @stats_timer, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.net*, %struct.net** %3, align 8
  %54 = getelementptr inbounds %struct.net, %struct.net* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* @can_stat_update, align 4
  %57 = call i32 @timer_setup(i32* %55, i32 %56, i32 0)
  %58 = load %struct.net*, %struct.net** %3, align 8
  %59 = getelementptr inbounds %struct.net, %struct.net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* @HZ, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @round_jiffies(i64 %63)
  %65 = call i32 @mod_timer(i32* %60, i32 %64)
  br label %66

66:                                               ; preds = %52, %49
  %67 = load i64, i64* @jiffies, align 8
  %68 = load %struct.net*, %struct.net** %3, align 8
  %69 = getelementptr inbounds %struct.net, %struct.net* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load %struct.net*, %struct.net** %3, align 8
  %74 = call i32 @can_init_proc(%struct.net* %73)
  br label %75

75:                                               ; preds = %66, %45
  store i32 0, i32* %2, align 4
  br label %91

76:                                               ; preds = %44
  %77 = load %struct.net*, %struct.net** %3, align 8
  %78 = getelementptr inbounds %struct.net, %struct.net* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @kfree(%struct.TYPE_4__* %80)
  br label %82

82:                                               ; preds = %76, %32
  %83 = load %struct.net*, %struct.net** %3, align 8
  %84 = getelementptr inbounds %struct.net, %struct.net* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = call i32 @kfree(%struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %82, %19
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %75
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @can_init_proc(%struct.net*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
