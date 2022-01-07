; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_uniform_choose.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_uniform_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_uniform = type { i32 }
%struct.crush_work_bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_bucket_uniform*, %struct.crush_work_bucket*, i32, i32)* @bucket_uniform_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_uniform_choose(%struct.crush_bucket_uniform* %0, %struct.crush_work_bucket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.crush_bucket_uniform*, align 8
  %6 = alloca %struct.crush_work_bucket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.crush_bucket_uniform* %0, %struct.crush_bucket_uniform** %5, align 8
  store %struct.crush_work_bucket* %1, %struct.crush_work_bucket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.crush_bucket_uniform*, %struct.crush_bucket_uniform** %5, align 8
  %10 = getelementptr inbounds %struct.crush_bucket_uniform, %struct.crush_bucket_uniform* %9, i32 0, i32 0
  %11 = load %struct.crush_work_bucket*, %struct.crush_work_bucket** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @bucket_perm_choose(i32* %10, %struct.crush_work_bucket* %11, i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @bucket_perm_choose(i32*, %struct.crush_work_bucket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
