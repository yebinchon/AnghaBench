; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_get_choose_arg_ids.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_get_choose_arg_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.crush_choose_arg = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.crush_bucket_straw2*, %struct.crush_choose_arg*)* @get_choose_arg_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_choose_arg_ids(%struct.crush_bucket_straw2* %0, %struct.crush_choose_arg* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.crush_bucket_straw2*, align 8
  %5 = alloca %struct.crush_choose_arg*, align 8
  store %struct.crush_bucket_straw2* %0, %struct.crush_bucket_straw2** %4, align 8
  store %struct.crush_choose_arg* %1, %struct.crush_choose_arg** %5, align 8
  %6 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %7 = icmp ne %struct.crush_choose_arg* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %10 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %4, align 8
  %15 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %3, align 8
  br label %22

18:                                               ; preds = %8
  %19 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %5, align 8
  %20 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %3, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
