; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_traps_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_traps_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.devlink_trap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_traps_register(%struct.devlink* %0, %struct.devlink_trap* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_trap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.devlink_trap*, align 8
  store %struct.devlink* %0, %struct.devlink** %6, align 8
  store %struct.devlink_trap* %1, %struct.devlink_trap** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.devlink*, %struct.devlink** %6, align 8
  %14 = getelementptr inbounds %struct.devlink, %struct.devlink* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.devlink*, %struct.devlink** %6, align 8
  %21 = getelementptr inbounds %struct.devlink, %struct.devlink* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %19
  %30 = load %struct.devlink*, %struct.devlink** %6, align 8
  %31 = getelementptr inbounds %struct.devlink, %struct.devlink* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %57, %29
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.devlink_trap*, %struct.devlink_trap** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %39, i64 %41
  store %struct.devlink_trap* %42, %struct.devlink_trap** %12, align 8
  %43 = load %struct.devlink_trap*, %struct.devlink_trap** %12, align 8
  %44 = call i32 @devlink_trap_verify(%struct.devlink_trap* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %65

48:                                               ; preds = %38
  %49 = load %struct.devlink*, %struct.devlink** %6, align 8
  %50 = load %struct.devlink_trap*, %struct.devlink_trap** %12, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @devlink_trap_register(%struct.devlink* %49, %struct.devlink_trap* %50, i8* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %64

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.devlink*, %struct.devlink** %6, align 8
  %62 = getelementptr inbounds %struct.devlink, %struct.devlink* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  store i32 0, i32* %5, align 4
  br label %86

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %78, %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.devlink*, %struct.devlink** %6, align 8
  %73 = load %struct.devlink_trap*, %struct.devlink_trap** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.devlink_trap, %struct.devlink_trap* %73, i64 %75
  %77 = call i32 @devlink_trap_unregister(%struct.devlink* %72, %struct.devlink_trap* %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %10, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.devlink*, %struct.devlink** %6, align 8
  %83 = getelementptr inbounds %struct.devlink, %struct.devlink* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %81, %60, %26
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_trap_verify(%struct.devlink_trap*) #1

declare dso_local i32 @devlink_trap_register(%struct.devlink*, %struct.devlink_trap*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devlink_trap_unregister(%struct.devlink*, %struct.devlink_trap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
