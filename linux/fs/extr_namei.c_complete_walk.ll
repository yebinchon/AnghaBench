; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_complete_walk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_complete_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dentry*, i32)* }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@LOOKUP_ROOT = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_JUMPED = common dso_local global i32 0, align 4
@DCACHE_OP_WEAK_REVALIDATE = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @complete_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_walk(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %4, align 8
  %10 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LOOKUP_RCU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LOOKUP_ROOT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %29 = call i32 @unlazy_walk(%struct.nameidata* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ECHILD, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LOOKUP_JUMPED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DCACHE_OP_WEAK_REVALIDATE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %82

60:                                               ; preds = %48
  %61 = load %struct.dentry*, %struct.dentry** %4, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %64, align 8
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %65(%struct.dentry* %66, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %82

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @ESTALE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %73, %59, %47, %32
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlazy_walk(%struct.nameidata*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
