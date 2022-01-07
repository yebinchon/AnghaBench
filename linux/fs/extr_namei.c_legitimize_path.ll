; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_legitimize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32 }
%struct.path = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.path*, i32)* @legitimize_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimize_path(%struct.nameidata* %0, %struct.path* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.path*, %struct.path** %6, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__legitimize_mnt(i32* %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.path*, %struct.path** %6, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.path*, %struct.path** %6, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %26, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %27, align 8
  store i32 0, i32* %4, align 4
  br label %52

28:                                               ; preds = %3
  %29 = load %struct.path*, %struct.path** %6, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @lockref_get_not_dead(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.path*, %struct.path** %6, align 8
  %41 = getelementptr inbounds %struct.path, %struct.path* %40, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %41, align 8
  store i32 0, i32* %4, align 4
  br label %52

42:                                               ; preds = %28
  %43 = load %struct.path*, %struct.path** %6, align 8
  %44 = getelementptr inbounds %struct.path, %struct.path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @read_seqcount_retry(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %39, %25
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @__legitimize_mnt(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
