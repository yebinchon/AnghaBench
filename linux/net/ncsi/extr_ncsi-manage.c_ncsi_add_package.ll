; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_add_package.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_add_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_package = type { i8, i32, i32, i32, i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ncsi_package* @ncsi_add_package(%struct.ncsi_dev_priv* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.ncsi_package*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.ncsi_package*, align 8
  %7 = alloca %struct.ncsi_package*, align 8
  %8 = alloca i64, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.ncsi_package* @kzalloc(i32 32, i32 %9)
  store %struct.ncsi_package* %10, %struct.ncsi_package** %6, align 8
  %11 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %12 = icmp ne %struct.ncsi_package* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ncsi_package* null, %struct.ncsi_package** %3, align 8
  br label %62

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %17 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 8
  %18 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %19 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %20 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %19, i32 0, i32 5
  store %struct.ncsi_dev_priv* %18, %struct.ncsi_dev_priv** %20, align 8
  %21 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %22 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %25 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* @UINT_MAX, align 4
  %28 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %29 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %35 = load i8, i8* %5, align 1
  %36 = call %struct.ncsi_package* @ncsi_find_package(%struct.ncsi_dev_priv* %34, i8 zeroext %35)
  store %struct.ncsi_package* %36, %struct.ncsi_package** %7, align 8
  %37 = load %struct.ncsi_package*, %struct.ncsi_package** %7, align 8
  %38 = icmp ne %struct.ncsi_package* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %14
  %40 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %41 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %45 = call i32 @kfree(%struct.ncsi_package* %44)
  %46 = load %struct.ncsi_package*, %struct.ncsi_package** %7, align 8
  store %struct.ncsi_package* %46, %struct.ncsi_package** %3, align 8
  br label %62

47:                                               ; preds = %14
  %48 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  %49 = getelementptr inbounds %struct.ncsi_package, %struct.ncsi_package* %48, i32 0, i32 1
  %50 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail_rcu(i32* %49, i32* %51)
  %53 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.ncsi_package*, %struct.ncsi_package** %6, align 8
  store %struct.ncsi_package* %61, %struct.ncsi_package** %3, align 8
  br label %62

62:                                               ; preds = %47, %39, %13
  %63 = load %struct.ncsi_package*, %struct.ncsi_package** %3, align 8
  ret %struct.ncsi_package* %63
}

declare dso_local %struct.ncsi_package* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ncsi_package* @ncsi_find_package(%struct.ncsi_dev_priv*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.ncsi_package*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
