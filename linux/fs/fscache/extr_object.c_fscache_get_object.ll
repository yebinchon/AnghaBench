; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_get_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_object.c_fscache_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.fscache_object*, i32)* }

@fscache_n_cop_grab_object = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscache_object*, i32)* @fscache_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_get_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @fscache_stat(i32* @fscache_n_cop_grab_object)
  %7 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %8 = getelementptr inbounds %struct.fscache_object, %struct.fscache_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64 (%struct.fscache_object*, i32)*, i64 (%struct.fscache_object*, i32)** %12, align 8
  %14 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 %13(%struct.fscache_object* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i32 [ 0, %18 ], [ %21, %19 ]
  store i32 %23, i32* %5, align 4
  %24 = call i32 @fscache_stat_d(i32* @fscache_n_cop_grab_object)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
