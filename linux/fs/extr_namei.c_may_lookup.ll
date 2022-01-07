; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @may_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_lookup(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @LOOKUP_RCU, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAY_EXEC, align 4
  %16 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @inode_permission(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ECHILD, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %11
  %26 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %27 = call i64 @unlazy_walk(%struct.nameidata* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ECHILD, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %39

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAY_EXEC, align 4
  %38 = call i32 @inode_permission(i32 %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %29, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @inode_permission(i32, i32) #1

declare dso_local i64 @unlazy_walk(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
