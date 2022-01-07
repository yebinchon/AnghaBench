; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c___bpf_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c___bpf_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.TYPE_2__ = type { %struct.bpf_map*, i32* }
%struct.fd = type { %struct.TYPE_2__* }

@EBADF = common dso_local global i32 0, align 4
@bpf_map_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_map* @__bpf_map_get(%struct.TYPE_2__* %0) #0 {
  %2 = alloca %struct.bpf_map*, align 8
  %3 = alloca %struct.fd, align 8
  %4 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  store %struct.TYPE_2__* %0, %struct.TYPE_2__** %4, align 8
  %5 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EBADF, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.bpf_map* @ERR_PTR(i32 %10)
  store %struct.bpf_map* %11, %struct.bpf_map** %2, align 8
  br label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, @bpf_map_fops
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call i32 @fdput(%struct.TYPE_2__* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.bpf_map* @ERR_PTR(i32 %23)
  store %struct.bpf_map* %24, %struct.bpf_map** %2, align 8
  br label %30

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.bpf_map*, %struct.bpf_map** %28, align 8
  store %struct.bpf_map* %29, %struct.bpf_map** %2, align 8
  br label %30

30:                                               ; preds = %25, %18, %8
  %31 = load %struct.bpf_map*, %struct.bpf_map** %2, align 8
  ret %struct.bpf_map* %31
}

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
