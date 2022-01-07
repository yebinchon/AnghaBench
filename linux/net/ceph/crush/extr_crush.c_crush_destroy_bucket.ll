; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_destroy_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_crush.c_crush_destroy_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket = type { i32 }
%struct.crush_bucket_uniform = type { i32 }
%struct.crush_bucket_list = type { i32 }
%struct.crush_bucket_tree = type { i32 }
%struct.crush_bucket_straw = type { i32 }
%struct.crush_bucket_straw2 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crush_destroy_bucket(%struct.crush_bucket* %0) #0 {
  %2 = alloca %struct.crush_bucket*, align 8
  store %struct.crush_bucket* %0, %struct.crush_bucket** %2, align 8
  %3 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %4 = getelementptr inbounds %struct.crush_bucket, %struct.crush_bucket* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %26 [
    i32 128, label %6
    i32 132, label %10
    i32 129, label %14
    i32 131, label %18
    i32 130, label %22
  ]

6:                                                ; preds = %1
  %7 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %8 = bitcast %struct.crush_bucket* %7 to %struct.crush_bucket_uniform*
  %9 = call i32 @crush_destroy_bucket_uniform(%struct.crush_bucket_uniform* %8)
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %12 = bitcast %struct.crush_bucket* %11 to %struct.crush_bucket_list*
  %13 = call i32 @crush_destroy_bucket_list(%struct.crush_bucket_list* %12)
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %16 = bitcast %struct.crush_bucket* %15 to %struct.crush_bucket_tree*
  %17 = call i32 @crush_destroy_bucket_tree(%struct.crush_bucket_tree* %16)
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %20 = bitcast %struct.crush_bucket* %19 to %struct.crush_bucket_straw*
  %21 = call i32 @crush_destroy_bucket_straw(%struct.crush_bucket_straw* %20)
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.crush_bucket*, %struct.crush_bucket** %2, align 8
  %24 = bitcast %struct.crush_bucket* %23 to %struct.crush_bucket_straw2*
  %25 = call i32 @crush_destroy_bucket_straw2(%struct.crush_bucket_straw2* %24)
  br label %26

26:                                               ; preds = %1, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @crush_destroy_bucket_uniform(%struct.crush_bucket_uniform*) #1

declare dso_local i32 @crush_destroy_bucket_list(%struct.crush_bucket_list*) #1

declare dso_local i32 @crush_destroy_bucket_tree(%struct.crush_bucket_tree*) #1

declare dso_local i32 @crush_destroy_bucket_straw(%struct.crush_bucket_straw*) #1

declare dso_local i32 @crush_destroy_bucket_straw2(%struct.crush_bucket_straw2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
