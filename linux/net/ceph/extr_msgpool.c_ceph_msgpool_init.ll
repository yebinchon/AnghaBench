; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_ceph_msgpool_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_msgpool.c_ceph_msgpool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msgpool = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"msgpool %s init\0A\00", align 1
@msgpool_alloc = common dso_local global i32 0, align 4
@msgpool_free = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_msgpool_init(%struct.ceph_msgpool* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_msgpool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.ceph_msgpool* %0, %struct.ceph_msgpool** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @dout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %18 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %21 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %24 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @msgpool_alloc, align 4
  %27 = load i32, i32* @msgpool_free, align 4
  %28 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %29 = call i32 @mempool_create(i32 %25, i32 %26, i32 %27, %struct.ceph_msgpool* %28)
  %30 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %31 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %33 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %6
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.ceph_msgpool*, %struct.ceph_msgpool** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_msgpool, %struct.ceph_msgpool* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @dout(i8*, i8*) #1

declare dso_local i32 @mempool_create(i32, i32, i32, %struct.ceph_msgpool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
