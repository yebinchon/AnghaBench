; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idletimer_tg_info = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@idletimer_tg_show = common dso_local global i32 0, align 4
@idletimer_tg_kobj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't add file to sysfs\00", align 1
@idletimer_tg_list = common dso_local global i32 0, align 4
@idletimer_tg_expired = common dso_local global i32 0, align 4
@idletimer_tg_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idletimer_tg_info*)* @idletimer_tg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idletimer_tg_create(%struct.idletimer_tg_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.idletimer_tg_info*, align 8
  %4 = alloca i32, align 4
  store %struct.idletimer_tg_info* %0, %struct.idletimer_tg_info** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_9__* @kmalloc(i32 48, i32 %5)
  %7 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %8 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %7, i32 0, i32 1
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %8, align 8
  %9 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %10 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %125

16:                                               ; preds = %1
  %17 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %18 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @idletimer_check_sysfs_name(i32 %19, i32 4)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %120

24:                                               ; preds = %16
  %25 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %26 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_attr_init(%struct.TYPE_8__* %29)
  %31 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %32 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.TYPE_9__* @kstrdup(i32 %33, i32 %34)
  %36 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %37 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %43 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %24
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %24
  %54 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %55 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 292, i32* %59, align 8
  %60 = load i32, i32* @idletimer_tg_show, align 4
  %61 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %62 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 8
  %66 = load i32, i32* @idletimer_tg_kobj, align 4
  %67 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %68 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @sysfs_create_file(i32 %66, %struct.TYPE_8__* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %53
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %111

77:                                               ; preds = %53
  %78 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %79 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = call i32 @list_add(i32* %81, i32* @idletimer_tg_list)
  %83 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %84 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* @idletimer_tg_expired, align 4
  %88 = call i32 @timer_setup(i32* %86, i32 %87, i32 0)
  %89 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %90 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %94 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load i32, i32* @idletimer_tg_work, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %100 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %104 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %105, 1000
  %107 = call i64 @msecs_to_jiffies(i32 %106)
  %108 = load i64, i64* @jiffies, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @mod_timer(i32* %102, i64 %109)
  store i32 0, i32* %2, align 4
  br label %127

111:                                              ; preds = %75
  %112 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %113 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = call i32 @kfree(%struct.TYPE_9__* %118)
  br label %120

120:                                              ; preds = %111, %50, %23
  %121 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %3, align 8
  %122 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %121, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @kfree(%struct.TYPE_9__* %123)
  br label %125

125:                                              ; preds = %120, %13
  %126 = load i32, i32* %4, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %77
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @idletimer_check_sysfs_name(i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @kstrdup(i32, i32) #1

declare dso_local i32 @sysfs_create_file(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
