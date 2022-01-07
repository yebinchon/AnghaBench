; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_convert.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { i64, i32, %struct.sidtab_convert_params*, i32* }
%struct.sidtab_convert_params = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"SELinux:  Converting %u SID table entries...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_convert(%struct.sidtab* %0, %struct.sidtab_convert_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sidtab*, align 8
  %5 = alloca %struct.sidtab_convert_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sidtab* %0, %struct.sidtab** %4, align 8
  store %struct.sidtab_convert_params* %1, %struct.sidtab_convert_params** %5, align 8
  %11 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %12 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %11, i32 0, i32 1
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %16 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %15, i32 0, i32 2
  %17 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %16, align 8
  %18 = icmp ne %struct.sidtab_convert_params* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %21 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %99

26:                                               ; preds = %2
  %27 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %28 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @sidtab_level_from_count(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %5, align 8
  %33 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 1
  %37 = call i64 @sidtab_do_lookup(%struct.TYPE_2__* %34, i64 %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 0, %39 ], [ %42, %40 ]
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %49 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %48, i32 0, i32 1
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %99

53:                                               ; preds = %43
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %5, align 8
  %56 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %5, align 8
  %60 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %61 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %60, i32 0, i32 2
  store %struct.sidtab_convert_params* %59, %struct.sidtab_convert_params** %61, align 8
  %62 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %63 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %62, i32 0, i32 1
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %66)
  store i64 0, i64* %9, align 8
  %68 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %5, align 8
  %69 = getelementptr inbounds %struct.sidtab_convert_params, %struct.sidtab_convert_params* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %76 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.sidtab_convert_params*, %struct.sidtab_convert_params** %5, align 8
  %83 = call i32 @sidtab_convert_tree(i32* %74, i32* %79, i64* %9, i64 %80, i64 %81, %struct.sidtab_convert_params* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %53
  %87 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %88 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %87, i32 0, i32 1
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %92 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %91, i32 0, i32 2
  store %struct.sidtab_convert_params* null, %struct.sidtab_convert_params** %92, align 8
  %93 = load %struct.sidtab*, %struct.sidtab** %4, align 8
  %94 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %93, i32 0, i32 1
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %86, %53
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %47, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @sidtab_level_from_count(i64) #1

declare dso_local i64 @sidtab_do_lookup(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @sidtab_convert_tree(i32*, i32*, i64*, i64, i64, %struct.sidtab_convert_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
