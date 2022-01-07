; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_register_afinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_input_register_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_input_afinfo = type { i64 }

@xfrm_input_afinfo = common dso_local global i32** null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@xfrm_input_afinfo_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_input_register_afinfo(%struct.xfrm_input_afinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_input_afinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.xfrm_input_afinfo* %0, %struct.xfrm_input_afinfo** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %3, align 8
  %6 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32**, i32*** @xfrm_input_afinfo, align 8
  %9 = call i64 @ARRAY_SIZE(i32** %8)
  %10 = icmp uge i64 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EAFNOSUPPORT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %44

17:                                               ; preds = %1
  %18 = call i32 @spin_lock_bh(i32* @xfrm_input_afinfo_lock)
  %19 = load i32**, i32*** @xfrm_input_afinfo, align 8
  %20 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %17
  %33 = load i32**, i32*** @xfrm_input_afinfo, align 8
  %34 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %3, align 8
  %35 = getelementptr inbounds %struct.xfrm_input_afinfo, %struct.xfrm_input_afinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.xfrm_input_afinfo*, %struct.xfrm_input_afinfo** %3, align 8
  %40 = call i32 @rcu_assign_pointer(i32* %38, %struct.xfrm_input_afinfo* %39)
  br label %41

41:                                               ; preds = %32, %29
  %42 = call i32 @spin_unlock_bh(i32* @xfrm_input_afinfo_lock)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.xfrm_input_afinfo*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
