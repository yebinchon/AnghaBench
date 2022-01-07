; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_rirb_get_response.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola.c_rirb_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"get_response: %x, %x\0A\00", align 1
@LOLA_RIRB_EX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"RIRB ERROR: NID=%x, verb=%x, data=%x, ext=%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"RIRB response error\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"switching to polling mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32*, i32*)* @rirb_get_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rirb_get_response(%struct.lola* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.lola* %0, %struct.lola** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %101, %3
  %10 = load i64, i64* @jiffies, align 8
  %11 = call i64 @msecs_to_jiffies(i32 1000)
  %12 = add i64 %10, %11
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %87, %9
  %14 = load %struct.lola*, %struct.lola** %5, align 8
  %15 = getelementptr inbounds %struct.lola, %struct.lola* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.lola*, %struct.lola** %5, align 8
  %20 = getelementptr inbounds %struct.lola, %struct.lola* %19, i32 0, i32 9
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.lola*, %struct.lola** %5, align 8
  %23 = call i32 @lola_update_rirb(%struct.lola* %22)
  %24 = load %struct.lola*, %struct.lola** %5, align 8
  %25 = getelementptr inbounds %struct.lola, %struct.lola* %24, i32 0, i32 9
  %26 = call i32 @spin_unlock_irq(i32* %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load %struct.lola*, %struct.lola** %5, align 8
  %29 = getelementptr inbounds %struct.lola, %struct.lola* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %81, label %33

33:                                               ; preds = %27
  %34 = load %struct.lola*, %struct.lola** %5, align 8
  %35 = getelementptr inbounds %struct.lola, %struct.lola* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.lola*, %struct.lola** %5, align 8
  %42 = getelementptr inbounds %struct.lola, %struct.lola* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.lola*, %struct.lola** %5, align 8
  %47 = getelementptr inbounds %struct.lola, %struct.lola* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lola*, %struct.lola** %5, align 8
  %50 = getelementptr inbounds %struct.lola, %struct.lola* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @verbose_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.lola*, %struct.lola** %5, align 8
  %54 = getelementptr inbounds %struct.lola, %struct.lola* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LOLA_RIRB_EX_ERROR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %45
  %60 = load %struct.lola*, %struct.lola** %5, align 8
  %61 = getelementptr inbounds %struct.lola, %struct.lola* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lola*, %struct.lola** %5, align 8
  %66 = getelementptr inbounds %struct.lola, %struct.lola* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lola*, %struct.lola** %5, align 8
  %69 = getelementptr inbounds %struct.lola, %struct.lola* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lola*, %struct.lola** %5, align 8
  %72 = getelementptr inbounds %struct.lola, %struct.lola* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lola*, %struct.lola** %5, align 8
  %75 = getelementptr inbounds %struct.lola, %struct.lola* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @dev_warn(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %113

80:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %113

81:                                               ; preds = %27
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i64 @time_after(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  %88 = call i32 @udelay(i32 20)
  %89 = call i32 (...) @cond_resched()
  br label %13

90:                                               ; preds = %86
  %91 = load %struct.lola*, %struct.lola** %5, align 8
  %92 = getelementptr inbounds %struct.lola, %struct.lola* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @dev_warn(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.lola*, %struct.lola** %5, align 8
  %98 = getelementptr inbounds %struct.lola, %struct.lola* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %90
  %102 = load %struct.lola*, %struct.lola** %5, align 8
  %103 = getelementptr inbounds %struct.lola, %struct.lola* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @dev_warn(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.lola*, %struct.lola** %5, align 8
  %109 = getelementptr inbounds %struct.lola, %struct.lola* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %9

110:                                              ; preds = %90
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %80, %59
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lola_update_rirb(%struct.lola*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @verbose_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
