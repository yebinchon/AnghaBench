; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_ioctl.c_ioctl_fsthaw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_ioctl.c_ioctl_fsthaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.super_block = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.super_block*)* }
%struct.TYPE_4__ = type { %struct.super_block* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ioctl_fsthaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_fsthaw(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.super_block*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = call %struct.TYPE_4__* @file_inode(%struct.file* %5)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %4, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @ns_capable(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %22, align 8
  %24 = icmp ne i32 (%struct.super_block*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %29, align 8
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = call i32 %30(%struct.super_block* %31)
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %18
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = call i32 @thaw_super(%struct.super_block* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %25, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @thaw_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
