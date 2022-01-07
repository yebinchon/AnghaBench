; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_unlazy_walk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_unlazy_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.dentry*, i32* }
%struct.dentry = type { i64 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @unlazy_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlazy_walk(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %4, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LOOKUP_RCU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @LOOKUP_RCU, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %25 = call i32 @legitimize_links(%struct.nameidata* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %66

32:                                               ; preds = %1
  %33 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 2
  %36 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @legitimize_path(%struct.nameidata* %33, %struct.TYPE_2__* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %73

46:                                               ; preds = %32
  %47 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %48 = call i32 @legitimize_root(%struct.nameidata* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %73

55:                                               ; preds = %46
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  store i32 0, i32* %2, align 4
  br label %77

66:                                               ; preds = %31
  %67 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.dentry* null, %struct.dentry** %72, align 8
  br label %73

73:                                               ; preds = %66, %54, %45
  %74 = call i32 (...) @rcu_read_unlock()
  %75 = load i32, i32* @ECHILD, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %55
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @legitimize_links(%struct.nameidata*) #1

declare dso_local i32 @legitimize_path(%struct.nameidata*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @legitimize_root(%struct.nameidata*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
