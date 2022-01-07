; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_clients_still_reclaiming.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_clients_still_reclaiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32, i32, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd_net*)* @clients_still_reclaiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clients_still_reclaiming(%struct.nfsd_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsd_net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.nfsd_net* %0, %struct.nfsd_net** %3, align 8
  %6 = call i64 (...) @get_seconds()
  store i64 %6, i64* %4, align 8
  %7 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %8 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %11 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %9, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %17 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %22 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %21, i32 0, i32 4
  %23 = call i64 @atomic_read(i32* %22)
  %24 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %25 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %44

29:                                               ; preds = %20, %1
  %30 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %31 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %44

35:                                               ; preds = %29
  %36 = load %struct.nfsd_net*, %struct.nfsd_net** %3, align 8
  %37 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @time_after(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
