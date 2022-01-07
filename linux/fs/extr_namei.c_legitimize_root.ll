; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LOOKUP_ROOT = common dso_local global i32 0, align 4
@LOOKUP_ROOT_GRABBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @legitimize_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimize_root(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %4 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %5 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LOOKUP_ROOT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  store i32 1, i32* %2, align 4
  br label %30

17:                                               ; preds = %9
  %18 = load i32, i32* @LOOKUP_ROOT_GRABBED, align 4
  %19 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 2
  %26 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @legitimize_path(%struct.nameidata* %23, %struct.TYPE_2__* %25, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @legitimize_path(%struct.nameidata*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
