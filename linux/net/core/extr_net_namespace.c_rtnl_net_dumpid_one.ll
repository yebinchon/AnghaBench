; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_dumpid_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_dumpid_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_net_dump_cb = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @rtnl_net_dumpid_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_net_dumpid_one(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rtnl_net_dump_cb*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.rtnl_net_dump_cb*
  store %struct.rtnl_net_dump_cb* %11, %struct.rtnl_net_dump_cb** %8, align 8
  %12 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %13 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %16 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %51

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %23 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %26 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %32 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @__peernet2id(i32 %33, i8* %34)
  %36 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %37 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %20
  %40 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %41 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %44 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %43, i32 0, i32 2
  %45 = call i32 @rtnl_net_fill(i32 %42, %struct.TYPE_2__* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.rtnl_net_dump_cb*, %struct.rtnl_net_dump_cb** %8, align 8
  %53 = getelementptr inbounds %struct.rtnl_net_dump_cb, %struct.rtnl_net_dump_cb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @__peernet2id(i32, i8*) #1

declare dso_local i32 @rtnl_net_fill(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
