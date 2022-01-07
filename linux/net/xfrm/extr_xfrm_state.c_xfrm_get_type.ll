; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_type = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_type*, %struct.xfrm_type*, %struct.xfrm_type*, %struct.xfrm_type*, %struct.xfrm_type*, %struct.xfrm_type*, %struct.xfrm_type* }

@.str = private unnamed_addr constant [16 x i8] c"xfrm-type-%d-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_type* (i32, i16)* @xfrm_get_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_type* @xfrm_get_type(i32 %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.xfrm_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.xfrm_type*, align 8
  %7 = alloca %struct.xfrm_state_afinfo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store %struct.xfrm_type* null, %struct.xfrm_type** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %72, %2
  %10 = load i16, i16* %5, align 2
  %11 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext %10)
  store %struct.xfrm_state_afinfo* %11, %struct.xfrm_state_afinfo** %7, align 8
  %12 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %13 = icmp eq %struct.xfrm_state_afinfo* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store %struct.xfrm_type* null, %struct.xfrm_type** %3, align 8
  br label %78

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %48 [
    i32 133, label %20
    i32 134, label %24
    i32 131, label %28
    i32 130, label %32
    i32 132, label %36
    i32 128, label %40
    i32 129, label %44
  ]

20:                                               ; preds = %18
  %21 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %22 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %21, i32 0, i32 6
  %23 = load %struct.xfrm_type*, %struct.xfrm_type** %22, align 8
  store %struct.xfrm_type* %23, %struct.xfrm_type** %6, align 8
  br label %49

24:                                               ; preds = %18
  %25 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %26 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %25, i32 0, i32 5
  %27 = load %struct.xfrm_type*, %struct.xfrm_type** %26, align 8
  store %struct.xfrm_type* %27, %struct.xfrm_type** %6, align 8
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %30 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %29, i32 0, i32 4
  %31 = load %struct.xfrm_type*, %struct.xfrm_type** %30, align 8
  store %struct.xfrm_type* %31, %struct.xfrm_type** %6, align 8
  br label %49

32:                                               ; preds = %18
  %33 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %34 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %33, i32 0, i32 3
  %35 = load %struct.xfrm_type*, %struct.xfrm_type** %34, align 8
  store %struct.xfrm_type* %35, %struct.xfrm_type** %6, align 8
  br label %49

36:                                               ; preds = %18
  %37 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %38 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %37, i32 0, i32 2
  %39 = load %struct.xfrm_type*, %struct.xfrm_type** %38, align 8
  store %struct.xfrm_type* %39, %struct.xfrm_type** %6, align 8
  br label %49

40:                                               ; preds = %18
  %41 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %42 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %41, i32 0, i32 1
  %43 = load %struct.xfrm_type*, %struct.xfrm_type** %42, align 8
  store %struct.xfrm_type* %43, %struct.xfrm_type** %6, align 8
  br label %49

44:                                               ; preds = %18
  %45 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %46 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %45, i32 0, i32 0
  %47 = load %struct.xfrm_type*, %struct.xfrm_type** %46, align 8
  store %struct.xfrm_type* %47, %struct.xfrm_type** %6, align 8
  br label %49

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48, %44, %40, %36, %32, %28, %24, %20
  %50 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  %51 = icmp ne %struct.xfrm_type* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  %54 = getelementptr inbounds %struct.xfrm_type, %struct.xfrm_type* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @try_module_get(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %52, %49
  %60 = phi i1 [ false, %49 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store %struct.xfrm_type* null, %struct.xfrm_type** %6, align 8
  br label %65

65:                                               ; preds = %64, %59
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  %68 = icmp ne %struct.xfrm_type* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i16, i16* %5, align 2
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i16 zeroext %73, i32 %74)
  store i32 1, i32* %8, align 4
  br label %9

76:                                               ; preds = %69, %65
  %77 = load %struct.xfrm_type*, %struct.xfrm_type** %6, align 8
  store %struct.xfrm_type* %77, %struct.xfrm_type** %3, align 8
  br label %78

78:                                               ; preds = %76, %17
  %79 = load %struct.xfrm_type*, %struct.xfrm_type** %3, align 8
  ret %struct.xfrm_type* %79
}

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @request_module(i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
