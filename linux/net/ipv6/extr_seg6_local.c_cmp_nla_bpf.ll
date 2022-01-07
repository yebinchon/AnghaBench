; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_cmp_nla_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_seg6_local.c_cmp_nla_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg6_local_lwt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seg6_local_lwt*, %struct.seg6_local_lwt*)* @cmp_nla_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_nla_bpf(%struct.seg6_local_lwt* %0, %struct.seg6_local_lwt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seg6_local_lwt*, align 8
  %5 = alloca %struct.seg6_local_lwt*, align 8
  store %struct.seg6_local_lwt* %0, %struct.seg6_local_lwt** %4, align 8
  store %struct.seg6_local_lwt* %1, %struct.seg6_local_lwt** %5, align 8
  %6 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %4, align 8
  %7 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %13 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %41

18:                                               ; preds = %11, %2
  %19 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %4, align 8
  %20 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %26 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %18
  store i32 1, i32* %3, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %4, align 8
  %33 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.seg6_local_lwt*, %struct.seg6_local_lwt** %5, align 8
  %37 = getelementptr inbounds %struct.seg6_local_lwt, %struct.seg6_local_lwt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcmp(i32 %35, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %30, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
