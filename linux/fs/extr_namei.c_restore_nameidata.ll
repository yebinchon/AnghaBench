; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_restore_nameidata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_restore_nameidata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nameidata* }
%struct.nameidata = type { i64, i64, i32, %struct.nameidata* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @restore_nameidata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_nameidata() #0 {
  %1 = alloca %struct.nameidata*, align 8
  %2 = alloca %struct.nameidata*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  store %struct.nameidata* %5, %struct.nameidata** %1, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %1, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 3
  %8 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  store %struct.nameidata* %8, %struct.nameidata** %2, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.nameidata* %9, %struct.nameidata** %11, align 8
  %12 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %13 = icmp ne %struct.nameidata* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load %struct.nameidata*, %struct.nameidata** %1, align 8
  %16 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %14, %0
  %21 = load %struct.nameidata*, %struct.nameidata** %1, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nameidata*, %struct.nameidata** %1, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.nameidata*, %struct.nameidata** %1, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @kfree(i64 %31)
  br label %33

33:                                               ; preds = %28, %20
  ret void
}

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
