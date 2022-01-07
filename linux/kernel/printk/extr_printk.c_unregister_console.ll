; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c_unregister_console.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c_unregister_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32, %struct.console*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"%sconsole [%s%d] disabled\0A\00", align 1
@CON_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@console_drivers = common dso_local global %struct.console* null, align 8
@CON_EXTENDED = common dso_local global i32 0, align 4
@nr_ext_console_drivers = common dso_local global i32 0, align 4
@CON_CONSDEV = common dso_local global i32 0, align 4
@CON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_console(%struct.console* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.console*, align 8
  %4 = alloca %struct.console*, align 8
  %5 = alloca %struct.console*, align 8
  %6 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %3, align 8
  %7 = load %struct.console*, %struct.console** %3, align 8
  %8 = getelementptr inbounds %struct.console, %struct.console* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CON_BOOT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = load %struct.console*, %struct.console** %3, align 8
  %16 = getelementptr inbounds %struct.console, %struct.console* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.console*, %struct.console** %3, align 8
  %19 = getelementptr inbounds %struct.console, %struct.console* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %17, i32 %20)
  %22 = load %struct.console*, %struct.console** %3, align 8
  %23 = call i32 @_braille_unregister_console(%struct.console* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %105

28:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %29 = call i32 (...) @console_lock()
  %30 = load %struct.console*, %struct.console** @console_drivers, align 8
  %31 = load %struct.console*, %struct.console** %3, align 8
  %32 = icmp eq %struct.console* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.console*, %struct.console** %3, align 8
  %35 = getelementptr inbounds %struct.console, %struct.console* %34, i32 0, i32 1
  %36 = load %struct.console*, %struct.console** %35, align 8
  store %struct.console* %36, %struct.console** @console_drivers, align 8
  store i32 0, i32* %6, align 4
  br label %66

37:                                               ; preds = %28
  %38 = load %struct.console*, %struct.console** @console_drivers, align 8
  %39 = icmp ne %struct.console* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load %struct.console*, %struct.console** @console_drivers, align 8
  %42 = getelementptr inbounds %struct.console, %struct.console* %41, i32 0, i32 1
  %43 = load %struct.console*, %struct.console** %42, align 8
  store %struct.console* %43, %struct.console** %4, align 8
  %44 = load %struct.console*, %struct.console** @console_drivers, align 8
  store %struct.console* %44, %struct.console** %5, align 8
  br label %45

45:                                               ; preds = %59, %40
  %46 = load %struct.console*, %struct.console** %4, align 8
  %47 = icmp ne %struct.console* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.console*, %struct.console** %4, align 8
  %50 = load %struct.console*, %struct.console** %3, align 8
  %51 = icmp eq %struct.console* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.console*, %struct.console** %4, align 8
  %54 = getelementptr inbounds %struct.console, %struct.console* %53, i32 0, i32 1
  %55 = load %struct.console*, %struct.console** %54, align 8
  %56 = load %struct.console*, %struct.console** %5, align 8
  %57 = getelementptr inbounds %struct.console, %struct.console* %56, i32 0, i32 1
  store %struct.console* %55, %struct.console** %57, align 8
  store i32 0, i32* %6, align 4
  br label %64

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.console*, %struct.console** %4, align 8
  store %struct.console* %60, %struct.console** %5, align 8
  %61 = load %struct.console*, %struct.console** %5, align 8
  %62 = getelementptr inbounds %struct.console, %struct.console* %61, i32 0, i32 1
  %63 = load %struct.console*, %struct.console** %62, align 8
  store %struct.console* %63, %struct.console** %4, align 8
  br label %45

64:                                               ; preds = %52, %45
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %33
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load %struct.console*, %struct.console** %3, align 8
  %71 = getelementptr inbounds %struct.console, %struct.console* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CON_EXTENDED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @nr_ext_console_drivers, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @nr_ext_console_drivers, align 4
  br label %79

79:                                               ; preds = %76, %69, %66
  %80 = load %struct.console*, %struct.console** @console_drivers, align 8
  %81 = icmp ne %struct.console* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.console*, %struct.console** %3, align 8
  %84 = getelementptr inbounds %struct.console, %struct.console* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CON_CONSDEV, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @CON_CONSDEV, align 4
  %91 = load %struct.console*, %struct.console** @console_drivers, align 8
  %92 = getelementptr inbounds %struct.console, %struct.console* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %82, %79
  %96 = load i32, i32* @CON_ENABLED, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.console*, %struct.console** %3, align 8
  %99 = getelementptr inbounds %struct.console, %struct.console* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = call i32 (...) @console_unlock()
  %103 = call i32 (...) @console_sysfs_notify()
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %26
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

declare dso_local i32 @_braille_unregister_console(%struct.console*) #1

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @console_sysfs_notify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
