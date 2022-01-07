; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_to_if_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_to_if_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.qc_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@QIF_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_dqblk*, %struct.qc_dqblk*)* @copy_to_if_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_if_dqblk(%struct.if_dqblk* %0, %struct.qc_dqblk* %1) #0 {
  %3 = alloca %struct.if_dqblk*, align 8
  %4 = alloca %struct.qc_dqblk*, align 8
  store %struct.if_dqblk* %0, %struct.if_dqblk** %3, align 8
  store %struct.qc_dqblk* %1, %struct.qc_dqblk** %4, align 8
  %5 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %6 = call i32 @memset(%struct.if_dqblk* %5, i32 0, i32 48)
  %7 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %8 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @stoqb(i32 %9)
  %11 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %12 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %14 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @stoqb(i32 %15)
  %17 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %18 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %20 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %23 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %25 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %28 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %30 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %33 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %35 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %38 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %40 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %43 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.qc_dqblk*, %struct.qc_dqblk** %4, align 8
  %45 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %48 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @QIF_ALL, align 4
  %50 = load %struct.if_dqblk*, %struct.if_dqblk** %3, align 8
  %51 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i32 @memset(%struct.if_dqblk*, i32, i32) #1

declare dso_local i8* @stoqb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
