; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_loop_extend.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_loop_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torture_random_state = type { i32 }
%struct.rt_read_seg = type { i32 }

@RCUTORTURE_RDR_MAX_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt_read_seg* (i32*, %struct.torture_random_state*, %struct.rt_read_seg*)* @rcutorture_loop_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt_read_seg* @rcutorture_loop_extend(i32* %0, %struct.torture_random_state* %1, %struct.rt_read_seg* %2) #0 {
  %4 = alloca %struct.rt_read_seg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.torture_random_state*, align 8
  %7 = alloca %struct.rt_read_seg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.torture_random_state* %1, %struct.torture_random_state** %6, align 8
  store %struct.rt_read_seg* %2, %struct.rt_read_seg** %7, align 8
  %11 = call i32 (...) @rcutorture_extend_mask_max()
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %10, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load %struct.rt_read_seg*, %struct.rt_read_seg** %7, align 8
  store %struct.rt_read_seg* %24, %struct.rt_read_seg** %4, align 8
  br label %61

25:                                               ; preds = %3
  %26 = load %struct.torture_random_state*, %struct.torture_random_state** %6, align 8
  %27 = call i32 @torture_random(%struct.torture_random_state* %26)
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 3
  %32 = or i32 %29, %31
  %33 = load i32, i32* @RCUTORTURE_RDR_MAX_LOOPS, align 4
  %34 = and i32 %32, %33
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %53, %25
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.torture_random_state*, %struct.torture_random_state** %6, align 8
  %44 = call i32 @rcutorture_extend_mask(i32 %42, %struct.torture_random_state* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.torture_random_state*, %struct.torture_random_state** %6, align 8
  %48 = load %struct.rt_read_seg*, %struct.rt_read_seg** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rt_read_seg, %struct.rt_read_seg* %48, i64 %50
  %52 = call i32 @rcutorture_one_extend(i32* %45, i32 %46, %struct.torture_random_state* %47, %struct.rt_read_seg* %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.rt_read_seg*, %struct.rt_read_seg** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rt_read_seg, %struct.rt_read_seg* %57, i64 %59
  store %struct.rt_read_seg* %60, %struct.rt_read_seg** %4, align 8
  br label %61

61:                                               ; preds = %56, %23
  %62 = load %struct.rt_read_seg*, %struct.rt_read_seg** %4, align 8
  ret %struct.rt_read_seg* %62
}

declare dso_local i32 @rcutorture_extend_mask_max(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @torture_random(%struct.torture_random_state*) #1

declare dso_local i32 @rcutorture_extend_mask(i32, %struct.torture_random_state*) #1

declare dso_local i32 @rcutorture_one_extend(i32*, i32, %struct.torture_random_state*, %struct.rt_read_seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
