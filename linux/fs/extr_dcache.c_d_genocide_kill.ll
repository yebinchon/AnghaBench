; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_genocide_kill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_genocide_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@D_WALK_SKIP = common dso_local global i32 0, align 4
@DCACHE_GENOCIDE = common dso_local global i32 0, align 4
@D_WALK_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dentry*)* @d_genocide_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d_genocide_kill(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dentry*
  store %struct.dentry* %8, %struct.dentry** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = icmp ne %struct.dentry* %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call i64 @d_unhashed(%struct.dentry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* @D_WALK_SKIP, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %16
  %24 = load %struct.dentry*, %struct.dentry** %5, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DCACHE_GENOCIDE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @DCACHE_GENOCIDE, align 4
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %23
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* @D_WALK_CONTINUE, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
