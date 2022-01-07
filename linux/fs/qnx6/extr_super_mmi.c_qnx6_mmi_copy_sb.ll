; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_super_mmi.c_qnx6_mmi_copy_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_super_mmi.c_qnx6_mmi_copy_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qnx6_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qnx6_mmi_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qnx6_super_block*, %struct.qnx6_mmi_super_block*)* @qnx6_mmi_copy_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx6_mmi_copy_sb(%struct.qnx6_super_block* %0, %struct.qnx6_mmi_super_block* %1) #0 {
  %3 = alloca %struct.qnx6_super_block*, align 8
  %4 = alloca %struct.qnx6_mmi_super_block*, align 8
  store %struct.qnx6_super_block* %0, %struct.qnx6_super_block** %3, align 8
  store %struct.qnx6_mmi_super_block* %1, %struct.qnx6_mmi_super_block** %4, align 8
  %5 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %6 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %9 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %11 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %14 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %16 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %19 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %21 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %24 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %26 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %29 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %31 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %34 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %36 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %39 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %41 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %44 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %46 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %45, i32 0, i32 2
  %47 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %48 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %47, i32 0, i32 2
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 4)
  %50 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %51 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %50, i32 0, i32 1
  %52 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %53 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %52, i32 0, i32 1
  %54 = call i32 @memcpy(i32* %51, i32* %53, i32 4)
  %55 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %3, align 8
  %56 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %55, i32 0, i32 0
  %57 = load %struct.qnx6_mmi_super_block*, %struct.qnx6_mmi_super_block** %4, align 8
  %58 = getelementptr inbounds %struct.qnx6_mmi_super_block, %struct.qnx6_mmi_super_block* %57, i32 0, i32 0
  %59 = call i32 @memcpy(i32* %56, i32* %58, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
