; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_destroy_bucket_straw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_destroy_bucket_straw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw = type { %struct.TYPE_2__, %struct.crush_bucket_straw*, %struct.crush_bucket_straw* }
%struct.TYPE_2__ = type { %struct.crush_bucket_straw* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crush_destroy_bucket_straw(%struct.crush_bucket_straw* %0) #0 {
  %2 = alloca %struct.crush_bucket_straw*, align 8
  store %struct.crush_bucket_straw* %0, %struct.crush_bucket_straw** %2, align 8
  %3 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %2, align 8
  %4 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %3, i32 0, i32 2
  %5 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %4, align 8
  %6 = call i32 @kfree(%struct.crush_bucket_straw* %5)
  %7 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %2, align 8
  %8 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %7, i32 0, i32 1
  %9 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %8, align 8
  %10 = call i32 @kfree(%struct.crush_bucket_straw* %9)
  %11 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %2, align 8
  %12 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %13, align 8
  %15 = call i32 @kfree(%struct.crush_bucket_straw* %14)
  %16 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %2, align 8
  %17 = call i32 @kfree(%struct.crush_bucket_straw* %16)
  ret void
}

declare dso_local i32 @kfree(%struct.crush_bucket_straw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
