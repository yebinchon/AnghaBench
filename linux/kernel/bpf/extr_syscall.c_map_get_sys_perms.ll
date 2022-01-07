; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_get_sys_perms.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_map_get_sys_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fd = type { %struct.TYPE_2__* }

@FMODE_CAN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map*, %struct.TYPE_2__*)* @map_get_sys_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_get_sys_perms(%struct.bpf_map* %0, %struct.TYPE_2__* %1) #0 {
  %3 = alloca %struct.fd, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %6, align 8
  store %struct.bpf_map* %0, %struct.bpf_map** %4, align 8
  %7 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @READ_ONCE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @FMODE_CAN_WRITE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
