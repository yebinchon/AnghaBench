; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_terminate_walk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_terminate_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@LOOKUP_ROOT_GRABBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*)* @terminate_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_walk(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %4 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %5 = call i32 @drop_links(%struct.nameidata* %4)
  %6 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LOOKUP_RCU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %1
  %13 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %15 = call i32 @path_put(i32* %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %31, %12
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @path_put(i32* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @LOOKUP_ROOT_GRABBED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 2
  %44 = call i32 @path_put(i32* %43)
  %45 = load i32, i32* @LOOKUP_ROOT_GRABBED, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %41, %34
  br label %60

52:                                               ; preds = %1
  %53 = load i32, i32* @LOOKUP_RCU, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = call i32 (...) @rcu_read_unlock()
  br label %60

60:                                               ; preds = %52, %51
  %61 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  ret void
}

declare dso_local i32 @drop_links(%struct.nameidata*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
