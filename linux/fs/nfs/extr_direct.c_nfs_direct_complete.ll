; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i64, i32, %struct.TYPE_2__*, i64, %struct.inode* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, i32)* }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_direct_req*)* @nfs_direct_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_direct_complete(%struct.nfs_direct_req* %0) #0 {
  %2 = alloca %struct.nfs_direct_req*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %2, align 8
  %5 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %6 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %5, i32 0, i32 4
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @inode_dio_end(%struct.inode* %8)
  %10 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %11 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %16 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %19 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %24 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  %26 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %27 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON_ONCE(i32 %30)
  br label %32

32:                                               ; preds = %22, %14
  %33 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %34 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_2__*, i64, i32)*, i32 (%struct.TYPE_2__*, i64, i32)** %36, align 8
  %38 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 %37(%struct.TYPE_2__* %40, i64 %41, i32 0)
  br label %43

43:                                               ; preds = %32, %1
  %44 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %45 = getelementptr inbounds %struct.nfs_direct_req, %struct.nfs_direct_req* %44, i32 0, i32 1
  %46 = call i32 @complete(i32* %45)
  %47 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %2, align 8
  %48 = call i32 @nfs_direct_req_release(%struct.nfs_direct_req* %47)
  ret void
}

declare dso_local i32 @inode_dio_end(%struct.inode*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @nfs_direct_req_release(%struct.nfs_direct_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
