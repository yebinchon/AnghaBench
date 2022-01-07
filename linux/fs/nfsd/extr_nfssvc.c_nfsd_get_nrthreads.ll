; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_get_nrthreads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_get_nrthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_get_nrthreads(i32 %0, i32* %1, %struct.net* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsd_net*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.net* %2, %struct.net** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.net*, %struct.net** %6, align 8
  %10 = load i32, i32* @nfsd_net_id, align 4
  %11 = call %struct.nfsd_net* @net_generic(%struct.net* %9, i32 %10)
  store %struct.nfsd_net* %11, %struct.nfsd_net** %8, align 8
  %12 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %13 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %20 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i1 [ false, %17 ], [ %28, %25 ]
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %33 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %17

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %3
  ret i32 0
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
