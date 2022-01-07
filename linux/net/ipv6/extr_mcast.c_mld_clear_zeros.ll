; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_clear_zeros.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mcast.c_mld_clear_zeros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_sf_list = type { i64, %struct.ip6_sf_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip6_sf_list**)* @mld_clear_zeros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mld_clear_zeros(%struct.ip6_sf_list** %0) #0 {
  %2 = alloca %struct.ip6_sf_list**, align 8
  %3 = alloca %struct.ip6_sf_list*, align 8
  %4 = alloca %struct.ip6_sf_list*, align 8
  %5 = alloca %struct.ip6_sf_list*, align 8
  store %struct.ip6_sf_list** %0, %struct.ip6_sf_list*** %2, align 8
  store %struct.ip6_sf_list* null, %struct.ip6_sf_list** %3, align 8
  %6 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %2, align 8
  %7 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %6, align 8
  store %struct.ip6_sf_list* %7, %struct.ip6_sf_list** %5, align 8
  br label %8

8:                                                ; preds = %39, %1
  %9 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %10 = icmp ne %struct.ip6_sf_list* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %13 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %12, i32 0, i32 1
  %14 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %13, align 8
  store %struct.ip6_sf_list* %14, %struct.ip6_sf_list** %4, align 8
  %15 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %16 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %21 = icmp ne %struct.ip6_sf_list* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %24 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %23, i32 0, i32 1
  %25 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %24, align 8
  %26 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %3, align 8
  %27 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %26, i32 0, i32 1
  store %struct.ip6_sf_list* %25, %struct.ip6_sf_list** %27, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %30 = getelementptr inbounds %struct.ip6_sf_list, %struct.ip6_sf_list* %29, i32 0, i32 1
  %31 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %30, align 8
  %32 = load %struct.ip6_sf_list**, %struct.ip6_sf_list*** %2, align 8
  store %struct.ip6_sf_list* %31, %struct.ip6_sf_list** %32, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  %35 = call i32 @kfree(%struct.ip6_sf_list* %34)
  br label %38

36:                                               ; preds = %11
  %37 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %5, align 8
  store %struct.ip6_sf_list* %37, %struct.ip6_sf_list** %3, align 8
  br label %38

38:                                               ; preds = %36, %33
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.ip6_sf_list*, %struct.ip6_sf_list** %4, align 8
  store %struct.ip6_sf_list* %40, %struct.ip6_sf_list** %5, align 8
  br label %8

41:                                               ; preds = %8
  ret void
}

declare dso_local i32 @kfree(%struct.ip6_sf_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
