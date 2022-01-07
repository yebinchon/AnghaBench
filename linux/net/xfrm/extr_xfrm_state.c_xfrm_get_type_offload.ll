; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_type_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_get_type_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_type_offload = type { i32 }
%struct.xfrm_state_afinfo = type { %struct.xfrm_type_offload* }

@.str = private unnamed_addr constant [19 x i8] c"xfrm-offload-%d-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_type_offload* (i32, i16, i32)* @xfrm_get_type_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_type_offload* @xfrm_get_type_offload(i32 %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_type_offload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_type_offload*, align 8
  %9 = alloca %struct.xfrm_state_afinfo*, align 8
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store %struct.xfrm_type_offload* null, %struct.xfrm_type_offload** %8, align 8
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i16, i16* %6, align 2
  %12 = call %struct.xfrm_state_afinfo* @xfrm_state_get_afinfo(i16 zeroext %11)
  store %struct.xfrm_state_afinfo* %12, %struct.xfrm_state_afinfo** %9, align 8
  %13 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %9, align 8
  %14 = icmp eq %struct.xfrm_state_afinfo* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.xfrm_type_offload* null, %struct.xfrm_type_offload** %4, align 8
  br label %49

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %25 [
    i32 128, label %21
  ]

21:                                               ; preds = %19
  %22 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %9, align 8
  %23 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %22, i32 0, i32 0
  %24 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %23, align 8
  store %struct.xfrm_type_offload* %24, %struct.xfrm_type_offload** %8, align 8
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %8, align 8
  %28 = icmp ne %struct.xfrm_type_offload* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %8, align 8
  %31 = getelementptr inbounds %struct.xfrm_type_offload, %struct.xfrm_type_offload* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @try_module_get(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.xfrm_type_offload* null, %struct.xfrm_type_offload** %8, align 8
  br label %36

36:                                               ; preds = %35, %29, %26
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %8, align 8
  %39 = icmp ne %struct.xfrm_type_offload* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i16, i16* %6, align 2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @request_module(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i16 zeroext %44, i32 %45)
  store i32 0, i32* %7, align 4
  br label %10

47:                                               ; preds = %40, %36
  %48 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %8, align 8
  store %struct.xfrm_type_offload* %48, %struct.xfrm_type_offload** %4, align 8
  br label %49

49:                                               ; preds = %47, %18
  %50 = load %struct.xfrm_type_offload*, %struct.xfrm_type_offload** %4, align 8
  ret %struct.xfrm_type_offload* %50
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
