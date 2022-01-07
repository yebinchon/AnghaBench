; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c___disable_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c___disable_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KPROBE_FLAG_DISABLED = common dso_local global i32 0, align 4
@kprobes_all_disarmed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kprobe* (%struct.kprobe*)* @__disable_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kprobe* @__disable_kprobe(%struct.kprobe* %0) #0 {
  %2 = alloca %struct.kprobe*, align 8
  %3 = alloca %struct.kprobe*, align 8
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %3, align 8
  %6 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %7 = call %struct.kprobe* @__get_valid_kprobe(%struct.kprobe* %6)
  store %struct.kprobe* %7, %struct.kprobe** %4, align 8
  %8 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %9 = icmp eq %struct.kprobe* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.kprobe* @ERR_PTR(i32 %15)
  store %struct.kprobe* %16, %struct.kprobe** %2, align 8
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %19 = call i32 @kprobe_disabled(%struct.kprobe* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %64, label %21

21:                                               ; preds = %17
  %22 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %23 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %24 = icmp ne %struct.kprobe* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %27 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %28 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %33 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %34 = icmp eq %struct.kprobe* %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %37 = call i64 @aggr_kprobe_disabled(%struct.kprobe* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @kprobes_all_disarmed, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %44 = call i32 @disarm_kprobe(%struct.kprobe* %43, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.kprobe*, %struct.kprobe** %3, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.kprobe* @ERR_PTR(i32 %54)
  store %struct.kprobe* %55, %struct.kprobe** %2, align 8
  br label %66

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* @KPROBE_FLAG_DISABLED, align 4
  %59 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %60 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %35
  br label %64

64:                                               ; preds = %63, %17
  %65 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  store %struct.kprobe* %65, %struct.kprobe** %2, align 8
  br label %66

66:                                               ; preds = %64, %47, %13
  %67 = load %struct.kprobe*, %struct.kprobe** %2, align 8
  ret %struct.kprobe* %67
}

declare dso_local %struct.kprobe* @__get_valid_kprobe(%struct.kprobe*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.kprobe* @ERR_PTR(i32) #1

declare dso_local i32 @kprobe_disabled(%struct.kprobe*) #1

declare dso_local i64 @aggr_kprobe_disabled(%struct.kprobe*) #1

declare dso_local i32 @disarm_kprobe(%struct.kprobe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
