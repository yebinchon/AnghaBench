; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_disk2mem_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v1.c_v1_disk2mem_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_dqblk = type { i32, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.v1_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_dqblk*, %struct.v1_disk_dqblk*)* @v1_disk2mem_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v1_disk2mem_dqblk(%struct.mem_dqblk* %0, %struct.v1_disk_dqblk* %1) #0 {
  %3 = alloca %struct.mem_dqblk*, align 8
  %4 = alloca %struct.v1_disk_dqblk*, align 8
  store %struct.mem_dqblk* %0, %struct.mem_dqblk** %3, align 8
  store %struct.v1_disk_dqblk* %1, %struct.v1_disk_dqblk** %4, align 8
  %5 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %6 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %9 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 8
  %10 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %11 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %14 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %16 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %19 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %21 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @v1_qbtos(i32 %22)
  %24 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %25 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %27 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @v1_qbtos(i32 %28)
  %30 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %31 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %33 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @v1_qbtos(i32 %34)
  %36 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %37 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %39 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %42 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.v1_disk_dqblk*, %struct.v1_disk_dqblk** %4, align 8
  %44 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mem_dqblk*, %struct.mem_dqblk** %3, align 8
  %47 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i8* @v1_qbtos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
