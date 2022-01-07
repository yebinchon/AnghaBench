; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_ibpkey.c_sel_ib_pkey_sid_slow.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_ibpkey.c_sel_ib_pkey_sid_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sel_ib_pkey = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@sel_ib_pkey_lock = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @sel_ib_pkey_sid_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_ib_pkey_sid_slow(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sel_ib_pkey*, align 8
  %10 = alloca %struct.sel_ib_pkey*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.sel_ib_pkey* null, %struct.sel_ib_pkey** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @sel_ib_pkey_lock, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.sel_ib_pkey* @sel_ib_pkey_find(i32 %14, i32 %15)
  store %struct.sel_ib_pkey* %16, %struct.sel_ib_pkey** %9, align 8
  %17 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %9, align 8
  %18 = icmp ne %struct.sel_ib_pkey* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %9, align 8
  %21 = getelementptr inbounds %struct.sel_ib_pkey, %struct.sel_ib_pkey* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @sel_ib_pkey_lock, i64 %25)
  store i32 0, i32* %4, align 4
  br label %61

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @security_ib_pkey_sid(i32* @selinux_state, i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %57

35:                                               ; preds = %27
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.sel_ib_pkey* @kzalloc(i32 12, i32 %36)
  store %struct.sel_ib_pkey* %37, %struct.sel_ib_pkey** %10, align 8
  %38 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %10, align 8
  %39 = icmp ne %struct.sel_ib_pkey* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %57

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %10, align 8
  %44 = getelementptr inbounds %struct.sel_ib_pkey, %struct.sel_ib_pkey* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %10, align 8
  %48 = getelementptr inbounds %struct.sel_ib_pkey, %struct.sel_ib_pkey* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %10, align 8
  %53 = getelementptr inbounds %struct.sel_ib_pkey, %struct.sel_ib_pkey* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.sel_ib_pkey*, %struct.sel_ib_pkey** %10, align 8
  %56 = call i32 @sel_ib_pkey_insert(%struct.sel_ib_pkey* %55)
  br label %57

57:                                               ; preds = %41, %40, %34
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @sel_ib_pkey_lock, i64 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sel_ib_pkey* @sel_ib_pkey_find(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @security_ib_pkey_sid(i32*, i32, i32, i32*) #1

declare dso_local %struct.sel_ib_pkey* @kzalloc(i32, i32) #1

declare dso_local i32 @sel_ib_pkey_insert(%struct.sel_ib_pkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
